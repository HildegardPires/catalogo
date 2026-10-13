<?php
declare(strict_types=1);

function seoConfig(): array
{
    static $config;
    if ($config === null) {
        $configPath = __DIR__ . '/config.php';
        $config = is_file($configPath)
            ? require $configPath
            : ['site_url' => 'https://pmwvariedades.com.br'];
    }
    return $config;
}

function seoConectar(): PDO
{
    $config = seoConfig();
    foreach (['db_host', 'db_name', 'db_user', 'db_pass'] as $key) {
        if (!isset($config[$key]) || $config[$key] === '') {
            throw new RuntimeException('Configure as credenciais do banco de dados em config.php.');
        }
    }
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

function seoBaseUrl(): string
{
    $url = rtrim((string)(seoConfig()['site_url'] ?? 'https://pmwvariedades.com.br'), '/');
    $parts = parse_url($url);
    if (
        $parts === false
        || !isset($parts['scheme'], $parts['host'])
        || !in_array(strtolower($parts['scheme']), ['http', 'https'], true)
        || isset($parts['query'])
        || isset($parts['fragment'])
        || isset($parts['user'])
        || isset($parts['pass'])
    ) {
        throw new RuntimeException('A configuração site_url deve conter a URL pública do site.');
    }
    return $url;
}

function seoSlug(string $text): string
{
    $text = strtr($text, [
        'À' => 'A', 'Á' => 'A', 'Â' => 'A', 'Ã' => 'A', 'Ä' => 'A',
        'à' => 'a', 'á' => 'a', 'â' => 'a', 'ã' => 'a', 'ä' => 'a',
        'È' => 'E', 'É' => 'E', 'Ê' => 'E', 'Ë' => 'E',
        'è' => 'e', 'é' => 'e', 'ê' => 'e', 'ë' => 'e',
        'Ì' => 'I', 'Í' => 'I', 'Î' => 'I', 'Ï' => 'I',
        'ì' => 'i', 'í' => 'i', 'î' => 'i', 'ï' => 'i',
        'Ò' => 'O', 'Ó' => 'O', 'Ô' => 'O', 'Õ' => 'O', 'Ö' => 'O',
        'ò' => 'o', 'ó' => 'o', 'ô' => 'o', 'õ' => 'o', 'ö' => 'o',
        'Ù' => 'U', 'Ú' => 'U', 'Û' => 'U', 'Ü' => 'U',
        'ù' => 'u', 'ú' => 'u', 'û' => 'u', 'ü' => 'u',
        'Ç' => 'C', 'ç' => 'c', 'Ñ' => 'N', 'ñ' => 'n',
    ]);
    $slug = strtolower(trim((string)preg_replace('/[^a-zA-Z0-9]+/', '-', $text), '-'));
    return $slug !== '' ? $slug : 'produto';
}

function seoProdutoUrl(array $produto): string
{
    return seoBaseUrl() . '/produto/' . (int)$produto['id'] . '/' . seoSlug((string)$produto['nome']);
}

function seoImagemUrl(string $imagem): string
{
    if (preg_match('#^https?://#i', $imagem) && filter_var($imagem, FILTER_VALIDATE_URL)) {
        return $imagem;
    }
    $path = ltrim($imagem, '/');
    if ($path === '' || str_contains($path, '..') || preg_match('/[\r\n]/', $path)) {
        $path = 'img/logo.png';
    }
    return seoBaseUrl() . '/' . $path;
}

function seoDescricaoProduto(array $produto): string
{
    $parts = array_filter([
        trim((string)($produto['descricao'] ?? '')),
        trim((string)($produto['complemento'] ?? '')),
    ]);
    if ($parts === []) {
        return 'Confira preço e disponibilidade de ' . $produto['nome'] . ' na PMW Variedades. Entrega grátis em Taquaralto e região.';
    }
    return implode(' — ', $parts);
}

function seoDescricaoMeta(string $description): string
{
    $description = trim((string)preg_replace('/\s+/u', ' ', $description));
    if (function_exists('mb_strlen') && function_exists('mb_substr')) {
        return mb_strlen($description, 'UTF-8') > 160
            ? rtrim(mb_substr($description, 0, 157, 'UTF-8')) . '...'
            : $description;
    }
    return strlen($description) > 160 ? rtrim(substr($description, 0, 157)) . '...' : $description;
}

function seoEscapar(string $value): string
{
    return htmlspecialchars($value, ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8');
}
