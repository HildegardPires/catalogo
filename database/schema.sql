SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS venda_pagamentos;
DROP TABLE IF EXISTS venda_itens;
DROP TABLE IF EXISTS vendas;
DROP TABLE IF EXISTS compra_pagamentos;
DROP TABLE IF EXISTS compras;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS categorias;
DROP TABLE IF EXISTS fornecedores;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE fornecedores (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE categorias (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE produtos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(500) NOT NULL DEFAULT '',
    complemento VARCHAR(255) NOT NULL DEFAULT '',
    custo DECIMAL(10,2) NOT NULL DEFAULT 0,
    preco DECIMAL(10,2) NOT NULL DEFAULT 0,
    imagem VARCHAR(255) NOT NULL DEFAULT '',
    categoria_id INT UNSIGNED NOT NULL,
    cod_barras VARCHAR(50) NOT NULL DEFAULT '',
    estoque INT NOT NULL DEFAULT 0,
    data_cadastro DATE NULL,
    PRIMARY KEY (id),
    KEY idx_produtos_categoria (categoria_id),
    CONSTRAINT fk_produtos_categoria FOREIGN KEY (categoria_id) REFERENCES categorias (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE clientes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    telefone VARCHAR(20) NOT NULL DEFAULT '',
    localizacao VARCHAR(255) NOT NULL DEFAULT '',
    data_cadastro DATE NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE compras (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    produto_id INT UNSIGNED NOT NULL,
    nome_produto VARCHAR(255) NOT NULL,
    data_compra DATE NOT NULL,
    data_entrega DATE NULL,
    link_compra VARCHAR(500) NOT NULL DEFAULT '',
    fornecedor_id INT UNSIGNED NOT NULL,
    num_pedido VARCHAR(50) NULL,
    quantidade INT NOT NULL DEFAULT 1,
    preco_custo DECIMAL(10,2) NOT NULL DEFAULT 0,
    preco_venda DECIMAL(10,2) NOT NULL DEFAULT 0,
    lucro DECIMAL(10,2) NOT NULL DEFAULT 0,
    data_cadastro DATE NULL,
    PRIMARY KEY (id),
    KEY idx_compras_produto (produto_id),
    KEY idx_compras_fornecedor (fornecedor_id),
    CONSTRAINT fk_compras_produto FOREIGN KEY (produto_id) REFERENCES produtos (id),
    CONSTRAINT fk_compras_fornecedor FOREIGN KEY (fornecedor_id) REFERENCES fornecedores (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE compra_pagamentos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    compra_id INT UNSIGNED NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id),
    KEY idx_compra_pag_compra (compra_id),
    CONSTRAINT fk_compra_pag_compra FOREIGN KEY (compra_id) REFERENCES compras (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE vendas (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    cliente_id INT UNSIGNED NOT NULL,
    nome_cliente VARCHAR(150) NOT NULL,
    telefone_cliente VARCHAR(20) NOT NULL DEFAULT '',
    localizacao TEXT NULL,
    data DATE NOT NULL,
    desconto_real DECIMAL(10,2) NULL,
    total_venda DECIMAL(10,2) NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    KEY idx_vendas_cliente (cliente_id),
    CONSTRAINT fk_vendas_cliente FOREIGN KEY (cliente_id) REFERENCES clientes (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE venda_itens (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    venda_id INT UNSIGNED NOT NULL,
    ordem INT NOT NULL DEFAULT 1,
    produto_id INT UNSIGNED NOT NULL,
    nome_produto VARCHAR(255) NOT NULL,
    compra_id INT UNSIGNED NULL,
    quantidade INT NOT NULL DEFAULT 1,
    preco_unitario DECIMAL(10,2) NOT NULL DEFAULT 0,
    preco_custo_unitario DECIMAL(10,2) NULL,
    preco_cadastro DECIMAL(10,2) NULL,
    valor_desconto DECIMAL(10,2) NULL,
    preco_unitario_com_desc DECIMAL(10,2) NULL,
    PRIMARY KEY (id),
    KEY idx_venda_itens_venda (venda_id),
    KEY idx_venda_itens_produto (produto_id),
    KEY idx_venda_itens_compra (compra_id),
    CONSTRAINT fk_venda_itens_venda FOREIGN KEY (venda_id) REFERENCES vendas (id) ON DELETE CASCADE,
    CONSTRAINT fk_venda_itens_produto FOREIGN KEY (produto_id) REFERENCES produtos (id),
    CONSTRAINT fk_venda_itens_compra FOREIGN KEY (compra_id) REFERENCES compras (id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE venda_pagamentos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    venda_id INT UNSIGNED NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id),
    KEY idx_venda_pag_venda (venda_id),
    CONSTRAINT fk_venda_pag_venda FOREIGN KEY (venda_id) REFERENCES vendas (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
