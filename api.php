<?php
declare(strict_types=1);

header('Content-Type: application/json; charset=utf-8');
header('Cache-Control: no-store');
header('X-Content-Type-Options: nosniff');

$config = require __DIR__ . '/config.php';

session_set_cookie_params([
    'lifetime' => 0,
    'path' => '/',
    'secure' => !empty($_SERVER['HTTPS']),
    'httponly' => true,
    'samesite' => 'Strict',
]);
session_start();

function responder(int $status, $dados): void
{
    http_response_code($status);
    echo json_encode($dados, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_PRESERVE_ZERO_FRACTION);
    exit;
}

function exigirAdmin(): void
{
    if (empty($_SESSION['admin'])) {
        responder(401, ['erro' => 'Nao autenticado.']);
    }
}

function conectar(array $config): PDO
{
    return new PDO(
        "mysql:host={$config['db_host']};dbname={$config['db_name']};charset=utf8mb4",
        $config['db_user'],
        $config['db_pass'],
        [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_EMULATE_PREPARES => false,
            PDO::ATTR_STRINGIFY_FETCHES => false,
        ]
    );
}

function dataBr(?string $d): ?string
{
    return $d === null ? null : date('d/m/Y', strtotime($d));
}

function dataSql($s, bool $obrigatoria = false): ?string
{
    if ($s === null || $s === '') {
        if ($obrigatoria) {
            throw new InvalidArgumentException('Data obrigatoria ausente.');
        }
        return null;
    }
    if (is_string($s) && preg_match('#^(\d{2})/(\d{2})/(\d{4})$#', $s, $m) && checkdate((int)$m[2], (int)$m[1], (int)$m[3])) {
        return "{$m[3]}-{$m[2]}-{$m[1]}";
    }
    if (is_string($s) && preg_match('#^(\d{4})-(\d{2})-(\d{2})#', $s, $m) && checkdate((int)$m[2], (int)$m[3], (int)$m[1])) {
        return "{$m[1]}-{$m[2]}-{$m[3]}";
    }
    throw new InvalidArgumentException('Data invalida: ' . (is_scalar($s) ? $s : gettype($s)));
}

function dec($v): ?float
{
    return ($v === null || $v === '') ? null : round((float)$v, 2);
}

function opcional(array $a, string $k)
{
    return array_key_exists($k, $a) ? $a[$k] : null;
}

function lerCategorias(PDO $pdo): array
{
    return array_map(
        fn($r) => ['id' => (int)$r['id'], 'descricao' => $r['descricao']],
        $pdo->query('SELECT id, descricao FROM categorias ORDER BY id')->fetchAll(PDO::FETCH_ASSOC)
    );
}

function lerProdutos(PDO $pdo, bool $completo): array
{
    $out = [];
    foreach ($pdo->query('SELECT * FROM produtos ORDER BY id')->fetchAll(PDO::FETCH_ASSOC) as $r) {
        $p = [
            'id' => (int)$r['id'],
            'nome' => $r['nome'],
            'descricao' => $r['descricao'],
            'complemento' => $r['complemento'],
        ];
        if ($completo) {
            $p['custo'] = (float)$r['custo'];
        }
        $p['preco'] = (float)$r['preco'];
        $p['imagem'] = $r['imagem'];
        $p['categoria'] = (int)$r['categoria_id'];
        if ($completo) {
            $p['codBarras'] = $r['cod_barras'];
        }
        $p['estoque'] = (int)$r['estoque'];
        if ($completo && $r['data_cadastro'] !== null) {
            $p['dataCadastro'] = dataBr($r['data_cadastro']);
        }
        $out[] = $p;
    }
    return $out;
}

function lerTudo(PDO $pdo): array
{
    $fornecedores = array_map(
        fn($r) => ['id' => (int)$r['id'], 'nome' => $r['nome']],
        $pdo->query('SELECT id, nome FROM fornecedores ORDER BY id')->fetchAll(PDO::FETCH_ASSOC)
    );

    $clientes = [];
    foreach ($pdo->query('SELECT * FROM clientes ORDER BY id')->fetchAll(PDO::FETCH_ASSOC) as $r) {
        $clientes[] = [
            'id' => (int)$r['id'],
            'nome' => $r['nome'],
            'telefone' => $r['telefone'],
            'localizacao' => $r['localizacao'],
            'dataCadastro' => dataBr($r['data_cadastro']),
        ];
    }

    $pagCompra = [];
    foreach ($pdo->query('SELECT compra_id, tipo, valor FROM compra_pagamentos ORDER BY id')->fetchAll(PDO::FETCH_ASSOC) as $r) {
        $pagCompra[$r['compra_id']][] = ['tipo' => $r['tipo'], 'valor' => (float)$r['valor']];
    }
    $compras = [];
    foreach ($pdo->query('SELECT * FROM compras ORDER BY id')->fetchAll(PDO::FETCH_ASSOC) as $r) {
        $c = ['id' => (int)$r['id']];
        if ($r['data_cadastro'] !== null) {
            $c['dataCadastro'] = dataBr($r['data_cadastro']);
        }
        $c['codProduto'] = (int)$r['produto_id'];
        $c['nomeProduto'] = $r['nome_produto'];
        $c['datacompra'] = dataBr($r['data_compra']);
        if ($r['data_entrega'] !== null) {
            $c['dataentrega'] = dataBr($r['data_entrega']);
        }
        $c['linkcompra'] = $r['link_compra'];
        $c['fornecedor'] = (int)$r['fornecedor_id'];
        if ($r['num_pedido'] !== null) {
            $c['numPedido'] = $r['num_pedido'];
        }
        if (isset($pagCompra[$r['id']])) {
            $c['formaPagamento'] = $pagCompra[$r['id']];
        }
        $c['quantidade'] = (int)$r['quantidade'];
        $c['precoCusto'] = (float)$r['preco_custo'];
        $c['precoVenda'] = (float)$r['preco_venda'];
        $c['lucro'] = (float)$r['lucro'];
        $compras[] = $c;
    }

    $itens = [];
    foreach ($pdo->query('SELECT * FROM venda_itens ORDER BY venda_id, ordem, id')->fetchAll(PDO::FETCH_ASSOC) as $r) {
        $i = [
            'id' => (int)$r['id'],
            'ordem' => (int)$r['ordem'],
            'codProduto' => (int)$r['produto_id'],
            'nomeProduto' => $r['nome_produto'],
            'idCompra' => $r['compra_id'] === null ? null : (int)$r['compra_id'],
            'quantidade' => (int)$r['quantidade'],
        ];
        if ($r['preco_custo_unitario'] !== null) {
            $i['precoCustoUnitario'] = (float)$r['preco_custo_unitario'];
        }
        $i['precoUnitario'] = (float)$r['preco_unitario'];
        if ($r['preco_cadastro'] !== null) {
            $i['precoCadastro'] = (float)$r['preco_cadastro'];
        }
        if ($r['valor_desconto'] !== null) {
            $i['valorDesconto'] = (float)$r['valor_desconto'];
        }
        if ($r['preco_unitario_com_desc'] !== null) {
            $i['precoUnitarioComDesc'] = (float)$r['preco_unitario_com_desc'];
        }
        $itens[$r['venda_id']][] = $i;
    }
    $pagVenda = [];
    foreach ($pdo->query('SELECT venda_id, tipo, valor FROM venda_pagamentos ORDER BY id')->fetchAll(PDO::FETCH_ASSOC) as $r) {
        $pagVenda[$r['venda_id']][] = ['tipo' => $r['tipo'], 'valor' => (float)$r['valor']];
    }
    $vendas = [];
    foreach ($pdo->query('SELECT * FROM vendas ORDER BY id')->fetchAll(PDO::FETCH_ASSOC) as $r) {
        $v = [
            'id' => (int)$r['id'],
            'idCliente' => (int)$r['cliente_id'],
            'nomeCliente' => $r['nome_cliente'],
            'telefoneCliente' => $r['telefone_cliente'],
        ];
        if ($r['localizacao'] !== null && $r['localizacao'] !== '') {
            $v['localizacao'] = $r['localizacao'];
        }
        $v['data'] = dataBr($r['data']);
        if ($r['desconto_real'] !== null) {
            $v['descontoReal'] = (float)$r['desconto_real'];
        }
        $v['totalVenda'] = (float)$r['total_venda'];
        $v['formaPagamento'] = $pagVenda[$r['id']] ?? [];
        $v['produtos'] = $itens[$r['id']] ?? [];
        $vendas[] = $v;
    }

    return [
        'fornecedores' => $fornecedores,
        'categorias' => lerCategorias($pdo),
        'produtos' => lerProdutos($pdo, true),
        'clientes' => $clientes,
        'vendas' => $vendas,
        'compras' => $compras,
    ];
}

function lista(array $dados, string $chave): array
{
    if (!isset($dados[$chave]) || !is_array($dados[$chave])) {
        throw new InvalidArgumentException("A propriedade '$chave' precisa ser uma lista.");
    }
    return $dados[$chave];
}

function gravarTudo(PDO $pdo, array $d): void
{
    $fornecedores = lista($d, 'fornecedores');
    $categorias = lista($d, 'categorias');
    $produtos = lista($d, 'produtos');
    $clientes = lista($d, 'clientes');
    $vendas = lista($d, 'vendas');
    $compras = lista($d, 'compras');

    $pdo->beginTransaction();
    try {
        $pdo->exec('SET FOREIGN_KEY_CHECKS = 0');
        foreach (['venda_pagamentos', 'venda_itens', 'vendas', 'compra_pagamentos', 'compras', 'produtos', 'clientes', 'categorias', 'fornecedores'] as $t) {
            $pdo->exec("DELETE FROM $t");
        }
        $pdo->exec('SET FOREIGN_KEY_CHECKS = 1');

        $st = $pdo->prepare('INSERT INTO fornecedores (id, nome) VALUES (?, ?)');
        foreach ($fornecedores as $f) {
            $st->execute([(int)$f['id'], (string)$f['nome']]);
        }

        $st = $pdo->prepare('INSERT INTO categorias (id, descricao) VALUES (?, ?)');
        foreach ($categorias as $c) {
            $st->execute([(int)$c['id'], (string)$c['descricao']]);
        }

        $st = $pdo->prepare('INSERT INTO produtos (id, nome, descricao, complemento, custo, preco, imagem, categoria_id, cod_barras, estoque, data_cadastro) VALUES (?,?,?,?,?,?,?,?,?,?,?)');
        foreach ($produtos as $p) {
            $st->execute([
                (int)$p['id'], (string)$p['nome'], (string)($p['descricao'] ?? ''), (string)($p['complemento'] ?? ''),
                dec($p['custo'] ?? 0), dec($p['preco'] ?? 0), (string)($p['imagem'] ?? ''), (int)$p['categoria'],
                (string)($p['codBarras'] ?? ''), (int)($p['estoque'] ?? 0), dataSql($p['dataCadastro'] ?? null),
            ]);
        }

        $st = $pdo->prepare('INSERT INTO clientes (id, nome, telefone, localizacao, data_cadastro) VALUES (?,?,?,?,?)');
        foreach ($clientes as $c) {
            $st->execute([(int)$c['id'], (string)$c['nome'], (string)($c['telefone'] ?? ''), (string)($c['localizacao'] ?? ''), dataSql($c['dataCadastro'] ?? null)]);
        }

        $st = $pdo->prepare('INSERT INTO compras (id, produto_id, nome_produto, data_compra, data_entrega, link_compra, fornecedor_id, num_pedido, quantidade, preco_custo, preco_venda, lucro, data_cadastro) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)');
        $stPag = $pdo->prepare('INSERT INTO compra_pagamentos (compra_id, tipo, valor) VALUES (?,?,?)');
        foreach ($compras as $c) {
            $st->execute([
                (int)$c['id'], (int)$c['codProduto'], (string)$c['nomeProduto'], dataSql($c['datacompra'] ?? null, true),
                dataSql($c['dataentrega'] ?? null), (string)($c['linkcompra'] ?? ''), (int)$c['fornecedor'],
                isset($c['numPedido']) && $c['numPedido'] !== '' ? (string)$c['numPedido'] : null,
                (int)($c['quantidade'] ?? 1), dec($c['precoCusto'] ?? 0), dec($c['precoVenda'] ?? 0), dec($c['lucro'] ?? 0),
                dataSql($c['dataCadastro'] ?? null),
            ]);
            foreach ($c['formaPagamento'] ?? [] as $p) {
                $stPag->execute([(int)$c['id'], (string)$p['tipo'], dec($p['valor'])]);
            }
        }

        $st = $pdo->prepare('INSERT INTO vendas (id, cliente_id, nome_cliente, telefone_cliente, localizacao, data, desconto_real, total_venda) VALUES (?,?,?,?,?,?,?,?)');
        $stIt = $pdo->prepare('INSERT INTO venda_itens (id, venda_id, ordem, produto_id, nome_produto, compra_id, quantidade, preco_unitario, preco_custo_unitario, preco_cadastro, valor_desconto, preco_unitario_com_desc) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)');
        $stPag = $pdo->prepare('INSERT INTO venda_pagamentos (venda_id, tipo, valor) VALUES (?,?,?)');
        foreach ($vendas as $v) {
            $st->execute([
                (int)$v['id'], (int)$v['idCliente'], (string)$v['nomeCliente'], (string)($v['telefoneCliente'] ?? ''),
                (string)($v['localizacao'] ?? ''), dataSql($v['data'] ?? null, true), dec(opcional($v, 'descontoReal')), dec($v['totalVenda'] ?? 0),
            ]);
            foreach ($v['produtos'] ?? [] as $n => $i) {
                $stIt->execute([
                    isset($i['id']) ? (int)$i['id'] : null, (int)$v['id'], (int)($i['ordem'] ?? $n + 1), (int)$i['codProduto'],
                    (string)$i['nomeProduto'], isset($i['idCompra']) ? (int)$i['idCompra'] : null, (int)($i['quantidade'] ?? 1),
                    dec($i['precoUnitario'] ?? 0), dec(opcional($i, 'precoCustoUnitario')), dec(opcional($i, 'precoCadastro')),
                    dec(opcional($i, 'valorDesconto')), dec(opcional($i, 'precoUnitarioComDesc')),
                ]);
            }
            foreach ($v['formaPagamento'] ?? [] as $p) {
                $stPag->execute([(int)$v['id'], (string)$p['tipo'], dec($p['valor'])]);
            }
        }

        $pdo->commit();
    } catch (Throwable $e) {
        if ($pdo->inTransaction()) {
            $pdo->rollBack();
        }
        $pdo->exec('SET FOREIGN_KEY_CHECKS = 1');
        throw $e;
    }
}

$acao = $_GET['acao'] ?? '';
$metodo = $_SERVER['REQUEST_METHOD'];

try {
    switch ($acao) {
        case 'catalogo':
            $pdo = conectar($config);
            responder(200, ['produtos' => lerProdutos($pdo, false), 'categorias' => lerCategorias($pdo)]);

        case 'sessao':
            responder(200, ['autenticado' => !empty($_SESSION['admin'])]);

        case 'login':
            if ($metodo !== 'POST') {
                responder(405, ['erro' => 'Metodo nao permitido.']);
            }
            $corpo = json_decode((string)file_get_contents('php://input'), true);
            $senha = is_array($corpo) ? (string)($corpo['senha'] ?? '') : '';
            if ($senha !== '' && password_verify($senha, $config['admin_hash'])) {
                session_regenerate_id(true);
                $_SESSION['admin'] = true;
                responder(200, ['autenticado' => true]);
            }
            sleep(2);
            responder(401, ['erro' => 'Senha incorreta.']);

        case 'logout':
            $_SESSION = [];
            session_destroy();
            responder(200, ['autenticado' => false]);

        case 'dados':
            exigirAdmin();
            if ($metodo === 'GET') {
                responder(200, lerTudo(conectar($config)));
            }
            if ($metodo === 'PUT') {
                if (stripos($_SERVER['CONTENT_TYPE'] ?? '', 'application/json') !== 0) {
                    responder(415, ['erro' => 'Content-Type invalido.']);
                }
                $dados = json_decode((string)file_get_contents('php://input'), true);
                if (!is_array($dados)) {
                    responder(400, ['erro' => 'JSON invalido.']);
                }
                try {
                    gravarTudo(conectar($config), $dados);
                } catch (InvalidArgumentException | PDOException | TypeError | ErrorException $e) {
                    error_log('[catalogo] ' . $e->getMessage());
                    responder(422, ['erro' => 'Dados rejeitados (referencias ou formato invalidos).']);
                }
                responder(200, ['ok' => true]);
            }
            responder(405, ['erro' => 'Metodo nao permitido.']);

        default:
            responder(404, ['erro' => 'Acao desconhecida.']);
    }
} catch (Throwable $e) {
    error_log('[catalogo] ' . $e->getMessage());
    responder(500, ['erro' => 'Erro interno.']);
}
