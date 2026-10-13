<?php
declare(strict_types=1);

require __DIR__ . '/seo.php';

header('Content-Type: application/xml; charset=utf-8');
header('X-Content-Type-Options: nosniff');

$baseUrl = seoBaseUrl();
$produtos = seoConectar()->query('SELECT id, nome FROM produtos ORDER BY id')->fetchAll(PDO::FETCH_ASSOC);

echo '<?xml version="1.0" encoding="UTF-8"?>' . "\n";
echo '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">' . "\n";
echo '  <url><loc>' . htmlspecialchars($baseUrl . '/', ENT_XML1 | ENT_QUOTES, 'UTF-8') . '</loc></url>' . "\n";
foreach ($produtos as $produto) {
    echo '  <url><loc>' . htmlspecialchars(seoProdutoUrl($produto), ENT_XML1 | ENT_QUOTES, 'UTF-8') . '</loc></url>' . "\n";
}
echo "</urlset>\n";
