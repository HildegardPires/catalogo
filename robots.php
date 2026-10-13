<?php
declare(strict_types=1);

require __DIR__ . '/seo.php';

header('Content-Type: text/plain; charset=utf-8');
header('X-Content-Type-Options: nosniff');
echo "User-agent: *\nAllow: /\nSitemap: " . seoBaseUrl() . "/sitemap.xml\n";
