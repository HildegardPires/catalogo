<?php
declare(strict_types=1);

require __DIR__ . '/seo.php';

header('Content-Type: text/html; charset=utf-8');
header('X-Content-Type-Options: nosniff');

$id = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT, ['options' => ['min_range' => 1]]);
if (!$id) {
    http_response_code(404);
    $produto = null;
} else {
    $consulta = seoConectar()->prepare(
        'SELECT p.id, p.nome, p.descricao, p.complemento, p.preco, p.imagem, p.estoque, c.descricao AS categoria
         FROM produtos p
         INNER JOIN categorias c ON c.id = p.categoria_id
         WHERE p.id = :id'
    );
    $consulta->execute(['id' => $id]);
    $produto = $consulta->fetch(PDO::FETCH_ASSOC) ?: null;
    if ($produto === null) {
        http_response_code(404);
    } else {
        $url = seoProdutoUrl($produto);
        if (($_GET['slug'] ?? '') !== seoSlug((string)$produto['nome'])) {
            header('Location: ' . $url, true, 301);
            exit;
        }
    }
}

$baseUrl = seoBaseUrl();
$nome = $produto ? (string)$produto['nome'] : 'Produto não encontrado';
$titulo = $nome . ' | PMW Variedades';
$descricao = $produto ? seoDescricaoProduto($produto) : 'O produto solicitado não foi encontrado no catálogo da PMW Variedades.';
$descricaoMeta = seoDescricaoMeta($descricao);
$canonical = $produto ? seoProdutoUrl($produto) : $baseUrl . '/';
$imagem = $produto ? seoImagemUrl((string)$produto['imagem']) : $baseUrl . '/img/logo.png';
$textoSchema = $produto ? json_encode([
    '@context' => 'https://schema.org',
    '@type' => 'Product',
    'name' => $nome,
    'description' => $descricao,
    'image' => $imagem,
    'category' => $produto['categoria'] ?? null,
    'url' => $canonical,
    'offers' => [
        '@type' => 'Offer',
        'url' => $canonical,
        'priceCurrency' => 'BRL',
        'price' => number_format((float)$produto['preco'], 2, '.', ''),
        'availability' => (int)$produto['estoque'] > 0
            ? 'https://schema.org/InStock'
            : 'https://schema.org/OutOfStock',
        'itemCondition' => 'https://schema.org/NewCondition',
    ],
], JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES | JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_THROW_ON_ERROR) : null;
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= seoEscapar($titulo) ?></title>
    <meta name="description" content="<?= seoEscapar($descricaoMeta) ?>">
    <link rel="canonical" href="<?= seoEscapar($canonical) ?>">
    <meta property="og:type" content="<?= $produto ? 'product' : 'website' ?>">
    <meta property="og:locale" content="pt_BR">
    <meta property="og:site_name" content="PMW Variedades">
    <meta property="og:title" content="<?= seoEscapar($titulo) ?>">
    <meta property="og:description" content="<?= seoEscapar($descricaoMeta) ?>">
    <meta property="og:url" content="<?= seoEscapar($canonical) ?>">
    <meta property="og:image" content="<?= seoEscapar($imagem) ?>">
    <meta name="twitter:card" content="summary_large_image">
    <?php if ($produto): ?>
    <meta property="product:price:amount" content="<?= seoEscapar(number_format((float)$produto['preco'], 2, '.', '')) ?>">
    <meta property="product:price:currency" content="BRL">
    <?php endif; ?>
    <?php if ($textoSchema !== null): ?>
    <script type="application/ld+json"><?= $textoSchema ?></script>
    <?php endif; ?>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/style.css">
    <link rel="icon" type="image/png" href="/img/favicon.png">
</head>
<body class="bg-light">
    <header class="bg-success text-white shadow-sm">
        <div class="container py-3">
            <a class="text-white text-decoration-none fw-bold fs-4" href="/">PMW Variedades</a>
            <p class="mb-0">Entrega grátis em Taquaralto e região</p>
        </div>
    </header>
    <main class="container my-4">
        <?php if ($produto): ?>
        <nav aria-label="Navegação estrutural" class="mb-3">
            <a href="/">Início</a> <span aria-hidden="true">/</span>
            <span><?= seoEscapar((string)$produto['categoria']) ?></span>
        </nav>
        <article class="card border-0 shadow-sm">
            <div class="row g-0">
                <div class="col-md-5 p-3">
                    <img class="img-fluid rounded w-100" src="<?= seoEscapar($imagem) ?>"
                         alt="<?= seoEscapar((string)$produto['nome']) ?>" fetchpriority="high">
                </div>
                <div class="col-md-7">
                    <div class="card-body p-4">
                        <p class="text-muted mb-2"><?= seoEscapar((string)$produto['categoria']) ?></p>
                        <h1 class="h2"><?= seoEscapar((string)$produto['nome']) ?></h1>
                        <p><?= nl2br(seoEscapar($descricao)) ?></p>
                        <p class="h3 text-success"><?= seoEscapar('R$ ' . number_format((float)$produto['preco'], 2, ',', '.')) ?></p>
                        <p class="<?= (int)$produto['estoque'] > 0 ? 'text-success' : 'text-danger' ?>">
                            <?= (int)$produto['estoque'] > 0 ? 'Disponível para compra' : 'Produto sem estoque no momento' ?>
                        </p>
                        <a class="btn btn-success btn-lg"
                           href="https://wa.me/5563984896172?text=<?= rawurlencode('Olá! Tenho interesse no produto: ' . $produto['nome'] . ' - ' . $canonical) ?>"
                           target="_blank" rel="noopener noreferrer"><?= (int)$produto['estoque'] > 0 ? 'Comprar pelo WhatsApp' : 'Consultar disponibilidade pelo WhatsApp' ?></a>
                        <p class="mt-3 mb-0"><a href="/">Voltar ao catálogo</a></p>
                    </div>
                </div>
            </div>
        </article>
        <?php else: ?>
        <h1>Produto não encontrado</h1>
        <p>Este item não está disponível no catálogo.</p>
        <a href="/">Voltar ao catálogo</a>
        <?php endif; ?>
    </main>
</body>
</html>
