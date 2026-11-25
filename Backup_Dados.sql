-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 05/11/2026 às 13:38
-- Versão do servidor: 11.8.9-MariaDB-log
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u503983638_catalogo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `descricao`) VALUES
(1, 'Eletrodomésticos'),
(2, 'Ferramentas'),
(3, 'Eletrônicos'),
(4, 'Brinquedos'),
(5, 'Automotivo'),
(6, 'Variedades');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(150) NOT NULL,
  `telefone` varchar(20) NOT NULL DEFAULT '',
  `localizacao` varchar(255) NOT NULL DEFAULT '',
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `localizacao`, `data_cadastro`) VALUES
(1, 'Aninha Cardoso', '63992972999', '', '2026-09-22'),
(2, 'Jose Alves', '63991103810', '', '2026-09-22'),
(3, 'Luciano', '63992964293', '', '2026-09-22'),
(4, 'Laura', '63992690357', '', '2026-09-22'),
(5, 'Wellington', '63981458977', '', '2026-09-22'),
(6, 'Jakeline', '63991257224', '', '2026-09-22'),
(7, 'Felipe', '63991115047', '', '2026-09-22'),
(8, 'Gleysse', '63992701094', '', '2026-09-22'),
(9, 'Poliana', '63991309444', '', '2026-09-22'),
(10, 'Amanda Vieira', '63991332183', '', '2026-09-22'),
(11, 'Lucas', '6392502008', '', '2026-09-22'),
(12, 'Elielson', '6392304876', '', '2026-09-22'),
(13, 'Joel Cardoso', '6392235295', '', '2026-09-22'),
(14, 'Martins', '63992951972', '', '2026-09-22'),
(15, 'Ezequiel Freitas', '91991018377', '', '2026-09-22'),
(16, 'Doglas', '63981044370', 'Morada do Sol', '2026-09-22'),
(17, 'Cielle', '63984607558', '403 Sul', '2026-09-22'),
(18, 'Klecio Dias', '92994588285', 'Gurupi', '2026-09-22'),
(19, 'Valderi (Macarrão)', '63984555597', 'Sonia Regina', '2026-09-22'),
(20, 'Wallison Ferreira', '63984550205', '', '2026-09-22'),
(21, 'Ingrid', '63981304915', '1305 Sul', '2026-09-22'),
(22, 'Kayque Lino', '63992154703', '', '2026-09-22'),
(23, 'Talyson Lima', '63981167006', 'Aureny III', '2026-09-22'),
(24, 'Fernando Ribeiro', '6392690552', 'Santa Helena', '2026-09-22'),
(25, 'Evaristo', '6399372969', '', '2026-09-22'),
(26, 'Katiussia', '9981689780', '405 Norte', '2026-09-22'),
(27, 'Sergio', '6392918827', '407 Norte', '2026-09-22'),
(28, 'Matheus', '6392764312', 'Paraiso - TO', '2026-09-22'),
(29, 'Cleonice Almeida', '6384109127', 'Aureny IV', '2026-09-22'),
(30, 'Tiago Souza Wanderley', '6384024471', 'Aureny II', '2026-09-23'),
(31, 'Zenny Aires', '63992346099', '806 Sul', '2026-09-23'),
(32, 'Daniel Eliseu', '63984384495', '', '2026-09-23'),
(33, 'Carlos Eduardo', '63991105439', 'Jardim Laila', '2026-09-23'),
(34, 'Aelso', '63984120306', 'Santa Fé 2', '2026-09-25'),
(35, 'Maikom Douglas', '63991297866', '103 Norte', '2026-09-25'),
(36, 'Jonatas', '63981186833', '', '2026-09-26'),
(37, 'Iago Silva', '6384049904', '1503 Sul', '2026-09-26'),
(38, 'Nurielle Morais', '6399691394', '', '2026-09-26'),
(39, 'Jerre Lucio', '63991342476', '1035 Sul', '2026-09-26'),
(40, 'Pedro', '6393029988', 'Porto Nacional', '2026-09-27'),
(41, 'Consumidor', '63984172482', 'Aureny III', '2026-09-29'),
(42, 'Jaime', '63999463311', 'Centro', '2026-09-30'),
(43, 'Rogerio', '63984529991', '', '2026-09-30'),
(44, 'Arlle Sandro', '63992568578', 'Aureny III', '2026-09-30'),
(45, 'Lucas', '63985127001', '', '2026-10-05'),
(46, 'Leandro', '63981121529', 'Taquari', '2026-10-05'),
(47, 'Luciano Dias', '63991044703', 'Bertaville', '2026-10-06'),
(48, 'Regirom', '63991076911', 'Taquari', '2026-10-06'),
(49, 'Luciano', '63999575987', 'Aureny III', '2026-10-07'),
(50, 'Val', '63992669874', 'Sol Nascente', '2026-10-07'),
(51, 'Valdemir', '63992479705', 'Lago Sul', '2026-10-07'),
(52, 'Eduardo', '86988572401', 'Santa Fé', '2026-10-07'),
(53, 'Daniel Clarindo', '63992018633', 'Aureny I', '2026-10-10'),
(54, 'Edicleiton Macedo', '63992745571', '', '2026-10-10'),
(55, 'Dionisio Sylve', '93992390048', '', '2026-10-10'),
(56, 'Fagno Naves', '63981265930', '', '2026-10-10'),
(57, 'Ludmila', '6399816116', '', '2026-10-12'),
(58, 'Consumidor', '63992130692', '', '2026-10-12'),
(59, 'Nay', '63991346858', 'Jardim Vitória 1', '2026-10-12'),
(60, 'Geziel', '63992350209', '', '2026-10-12'),
(61, 'Kayko Souza', '63981288261', '', '2026-10-12'),
(62, 'Eduardo Menezes', '63992812505', 'Aureny III', '2026-10-12'),
(63, 'Leidiane Batista', '63992740120', '112', '2026-10-12'),
(64, 'Dg Divisorias', '6391333718', '1406 Sul', '2026-10-13'),
(65, 'Alana', '63992204026', 'Aureny I', '2026-10-13'),
(66, 'Wenes Alves', '63992655116', 'Porto Nacional', '2026-10-13'),
(67, 'Cleomar Silva', '63984324028', 'Agrotins', '2026-10-15'),
(68, 'Xavier', '63992521546', 'Bela Vista', '2026-10-15'),
(69, 'Josiel Dias', '63984046773', 'Aureny IV', '2026-10-15'),
(70, 'Luiz Barros', '63981221561', '', '2026-10-16'),
(71, 'Lucas Leonardo', '11915010700', '', '2026-10-16'),
(72, 'Adegilson França Ferreira', '63981110928', '1304 Sul', '2026-10-20'),
(73, 'Pedro Lucas', '63992154494', '', '2026-10-20'),
(74, 'Junior', '63991223618', '', '2026-10-20'),
(75, 'Consumidor', '63991131677', '804 Sul', '2026-10-21'),
(76, 'Felipe', '63981202174', 'St Universitário', '2026-10-21'),
(77, 'Vinicius Albuquerque', '63992372322', '', '2026-10-21'),
(78, 'Márcia Tereza', '63981386702', 'Palmas Sul', '2026-10-22'),
(79, 'Ellen Ricardo', '63984687806', '', '2026-10-28'),
(80, 'Cledison ivanovic', '63984889307', '', '2026-10-28'),
(81, 'Marlon', '63991386108', 'Aureny II', '2026-10-28'),
(82, 'Wesley', '63992220217', '', '2026-11-01'),
(83, 'Wandenson Nunes', '62986240840', 'St Janaina', '2026-11-02'),
(84, 'Daniel Borges', '63992139824', '', '2026-11-02'),
(85, 'Altyno', '63991042731', 'Bela vista', '2026-11-02'),
(86, 'Mateus', '63981101969', '', '2026-11-03'),
(87, 'Madson', '63984446462', '', '2026-11-04'),
(88, 'Sebastião Ferreira', '63985156397', '', '2026-11-04'),
(89, 'Orlando Bernardino', '47997923212', 'Taquari', '2026-11-04');

-- --------------------------------------------------------

--
-- Estrutura para tabela `compras`
--

CREATE TABLE `compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `produto_id` int(10) UNSIGNED NOT NULL,
  `nome_produto` varchar(255) NOT NULL,
  `data_compra` date NOT NULL,
  `data_entrega` date DEFAULT NULL,
  `link_compra` varchar(500) NOT NULL DEFAULT '',
  `fornecedor_id` int(10) UNSIGNED NOT NULL,
  `num_pedido` varchar(50) DEFAULT NULL,
  `quantidade` int(11) NOT NULL DEFAULT 1,
  `preco_custo` decimal(10,2) NOT NULL DEFAULT 0.00,
  `preco_venda` decimal(10,2) NOT NULL DEFAULT 0.00,
  `lucro` decimal(10,2) NOT NULL DEFAULT 0.00,
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `compras`
--

INSERT INTO `compras` (`id`, `produto_id`, `nome_produto`, `data_compra`, `data_entrega`, `link_compra`, `fornecedor_id`, `num_pedido`, `quantidade`, `preco_custo`, `preco_venda`, `lucro`, `data_cadastro`) VALUES
(1, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '2026-08-31', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000014804787671/status?packId=2000014804787673&orderId=2000018218667352', 1, NULL, 1, 170.00, 170.00, 0.00, NULL),
(2, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '2026-09-04', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000018278711242/status?packId=2000018278711242&orderId=2000018278711242', 1, NULL, 2, 167.04, 205.00, 37.96, NULL),
(3, 51, 'Projetor HY320 Android 12 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '2026-09-06', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000018308097568/status?packId=2000018308097568&orderId=2000018308097568', 1, NULL, 1, 182.00, 250.00, 68.00, NULL),
(4, 31, 'Caixa de Som Bluetooth com Controle Remoto/Microfone/RádioFM/USB/SD First Option DS14', '2026-08-31', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000018206809932/status?packId=2000018206809932&orderId=2000018206809932', 1, NULL, 1, 103.70, 165.00, 61.30, NULL),
(5, 52, 'Caixa De Som Bluetooth Grande Alto Falante 8 1000w Pmpo Saida 10w Heruz 711A', '2026-09-01', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000018222241440/status?packId=2000018222241440&orderId=2000018222241440', 1, NULL, 1, 84.00, 165.00, 81.00, NULL),
(6, 53, 'Câmera Externa Ip A Prova D\'água Wifi Dupla Visão Noturna ItBlue', '2026-09-05', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000018304775146/status?packId=2000018304775146&orderId=2000018304775146', 1, NULL, 1, 85.00, 140.00, 55.00, NULL),
(7, 54, 'Câmera De Segurança Wifi Externa Hd Infravermelho Prova D\'água Preta Jortan', '2026-09-06', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000018314475504/status?packId=2000018314475504&orderId=2000018314475504', 1, NULL, 1, 59.49, 100.00, 40.51, NULL),
(8, 55, 'Caixa De Som Bluetooth Grande Alto Falante 8 1000w Pmpo Saida 10w Heruz 712A', '2026-08-31', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000018207740048/status?packId=2000018207740048&orderId=2000018207740048', 1, NULL, 1, 99.00, 165.00, 66.00, NULL),
(9, 50, 'Parafusadeira Furadeira Sem Fio 48 2 Baterias 340w C/brocas IndoBest', '2026-09-03', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000018263012732/status?packId=2000018263012732&orderId=2000018263012732', 1, NULL, 3, 85.60, 140.00, 54.40, NULL),
(10, 56, 'Parafusadeira Furadeira 2 Baterias 48v Kit Completo com Bits, Brocas, Soquetes e Maleta Alobrax', '2026-09-02', NULL, 'https://www.amazon.com.br/your-orders/order-details?orderID=702-7363760-3623461&ref=ppx_yo2ov_dt_b_fed_order_details', 2, NULL, 1, 93.41, 140.00, 46.59, NULL),
(11, 5, 'Liquidificador Mondial 2,2 Litros 3 Velocidades Turbo Preto', '2026-09-07', NULL, 'https://www.amazon.com.br/your-orders/order-details?orderID=701-7364780-0497818&ref=ppx_yo2ov_dt_b_fed_order_details', 2, NULL, 1, 93.68, 135.00, 41.32, NULL),
(12, 4, 'Liquidificador Britânia 2,7 Litros 4 Velocidades Turbo', '2026-09-07', NULL, 'https://www.amazon.com.br/your-orders/order-details?orderID=701-7364780-0497818&ref=ppx_yo2ov_dt_b_fed_order_details', 2, NULL, 1, 97.07, 135.00, 37.93, NULL),
(13, 1, 'Panela De Pressão Elétrica 5 Litros Painel Digital Itatiaia', '2026-08-08', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017833252596/status?packId=2000017833252596&orderId=2000017833252596', 1, NULL, 1, 253.76, 273.00, 19.24, NULL),
(14, 57, 'Parafusadeira Furadeira 2 Baterias 36v Com Maleta e Acessórios B-Tek', '2026-09-04', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000018289521378/status?packId=2000018289521378&orderId=2000018289521378', 1, NULL, 1, 77.52, 128.00, 50.48, NULL),
(15, 12, 'Kit Ferramentas Chave 27 Peças L 1/2\' Soquete', '2026-07-15', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000014042128357/status?packId=2000014042128359&orderId=2000017439236004', 1, NULL, 1, 31.04, 50.00, 18.96, NULL),
(16, 2, 'Fritadeira Air Fryer 4,5 Litros Widemax Com Interior De Alumínio 1500w Midea', '2026-08-09', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017838792820/status?packId=2000017838792820&orderId=2000017838792820', 1, NULL, 1, 249.00, 300.00, 51.00, NULL),
(17, 37, 'Som Automotivo Carro Mp3 Bluetooth Rádio Fm Com Controle', '2026-07-03', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017227992632/status?packId=2000017227992632&orderId=2000017227992632', 1, NULL, 1, 48.50, 88.00, 39.50, NULL),
(18, 4, 'Liquidificador Britânia 2,7 Litros 4 Velocidades Turbo', '2026-08-31', NULL, 'https://www.amazon.com.br/your-orders/order-details?orderID=701-9524205-1230649&ref=ppx_yo2ov_dt_b_fed_order_details', 2, NULL, 1, 89.90, 135.00, 45.10, NULL),
(19, 3, 'Fritadeira Elétrica Air Fryer Wap 5,2 Litros Com Revestimento Antiaderente', '2026-08-08', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017821443668/status?packId=2000017821443668&orderId=2000017821443668', 1, NULL, 1, 209.00, 280.00, 71.00, NULL),
(20, 7, 'Panela Elétrica De Arroz 6 Xícaras Agratto', '2026-08-08', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017821575644/status?packId=2000017821575644&orderId=2000017821575644', 1, NULL, 1, 90.02, 150.00, 59.98, NULL),
(21, 9, 'Sanduicheira Grill Elétrica Antiaderente Sumay', '2026-07-31', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000014284555839/status?packId=2000014284555841&orderId=2000017679482080', 1, NULL, 2, 49.49, 80.00, 30.51, NULL),
(22, 5, 'Liquidificador Mondial 2,2 Litros 3 Velocidades Turbo Preto', '2026-09-07', NULL, 'https://www.amazon.com.br/your-orders/order-details?orderID=701-7364780-0497818&ref=ppx_yo2ov_dt_b_fed_order_details', 2, NULL, 1, 93.68, 135.00, 41.32, NULL),
(23, 6, 'Panela De Arroz Elétrica 10 Xícaras Inox Elgin', '2026-08-28', NULL, 'https://www.amazon.com.br/your-orders/order-details?orderID=702-4467175-8430653&ref=ppx_yo2ov_dt_b_fed_order_details', 2, NULL, 1, 129.90, 170.00, 40.10, NULL),
(24, 8, 'Sanduicheira Misteira Tostequeira Mini Grill Multilaser', '2026-07-26', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000014203786471/status?packId=2000014203786473&orderId=2000017599011558', 1, NULL, 1, 59.21, 80.00, 20.79, NULL),
(25, 10, 'Chaleira Elétrica 2 litros Mokfa', '2026-08-03', NULL, 'https://www.amazon.com.br/your-orders/order-details?orderID=702-6281014-7385005&ref=ppx_yo2ov_dt_b_fed_order_details', 2, NULL, 4, 31.40, 60.00, 28.60, NULL),
(26, 11, 'Kit Chave Ferramentas Jogo De Soquetes 1/2\'\' 17 Peças Tramontina', '2026-07-16', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017455112272/status?packId=2000017455112272&orderId=2000017455112272', 1, NULL, 1, 149.00, 190.00, 41.00, NULL),
(27, 13, 'Chave Tigre de Boca Multifuncional 360 Graus', '2026-06-02', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000016733739312/status?packId=2000016733739312&orderId=2000016733739312', 1, NULL, 1, 24.70, 38.00, 13.30, NULL),
(28, 14, 'Kit Ferramentas 40 Peças Com Soquetes e Chave Com Catraca 3/8\' Black Tools', '2026-07-11', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017372081776/status?packId=2000017372081776&orderId=2000017372081776', 1, NULL, 1, 28.00, 48.00, 20.00, NULL),
(29, 15, 'Jogo Kit Ferramentas Chave Catraca Soquete 3,8\' 40 Peças Sparta', '2026-07-15', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000014042128357/status?packId=2000014042128361&orderId=2000017439239190', 1, NULL, 1, 24.06, 45.00, 20.94, NULL),
(30, 18, 'Ferramentas Jogo 40 Peças Chave Catraca Soquete 3/8 Fasterr Tools', '2026-07-15', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000014042761423/status?packId=2000014042761425&orderId=2000017439820140', 1, NULL, 1, 22.62, 42.00, 19.38, NULL),
(31, 16, 'Kit de Ferramentas Jogo Chave Catraca 1/2 do 8 ao 32mm', '2026-08-06', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017786137828/status?packId=2000017786137828&orderId=2000017786137828', 1, NULL, 1, 110.40, 170.00, 59.60, NULL),
(32, 17, 'Kit Ferramentas Jogo Chave 12 Peças 4mm a 13mm Catraca Soquete 1/4', '2026-05-31', NULL, 'https://shopee.com.br/user/purchase/order/233949686121936?type=6', 3, NULL, 1, 19.80, 40.00, 20.20, NULL),
(33, 19, 'Ferramenta Kit Chaves Catraca Reversivel Soquetes 46 Pecas Maleta', '2026-07-21', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017518816092/status?packId=2000017518816092&orderId=2000017518816092', 1, NULL, 5, 20.00, 40.00, 20.00, NULL),
(34, 20, 'Furadeira De Impacto Mondial', '2026-07-07', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017293441288/status?packId=2000017293441288&orderId=2000017293441288', 1, NULL, 1, 118.00, 150.00, 32.00, NULL),
(35, 21, 'Parafusadeira Furadeira 1 Bateria 12v', '2026-07-09', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017343822116/status?packId=2000017343822116&orderId=2000017343822116', 1, NULL, 2, 67.80, 95.00, 27.20, NULL),
(36, 26, 'Caixa de Som Bluetooth USB/SD Card 20W Vermelha', '2026-07-17', NULL, 'https://shopee.com.br/user/purchase/order/238041179134152?type=6', 3, NULL, 1, 33.00, 60.00, 27.00, NULL),
(37, 27, 'Caixa de Som Bluetooth Portátil TWS USB SD 10W Preta', '2026-07-22', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017537487928/status?packId=2000017537487928&orderId=2000017537487928', 1, NULL, 1, 30.00, 55.00, 25.00, NULL),
(38, 28, 'Caixa De Som Bluetooth Rádio Fm/USB/SD Card e Iluminação Led', '2026-07-20', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017500439670/status?packId=2000017500439670&orderId=2000017500439670', 1, NULL, 1, 29.99, 48.00, 18.01, NULL),
(39, 29, 'Caixa de Som Bluetooth 20w Vermelha', '2026-07-22', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017540413358/status?packId=2000017540413358&orderId=2000017540413358', 1, NULL, 1, 35.88, 55.00, 19.12, NULL),
(40, 32, 'Fone De Ouvido Sem Fio Bluetooth', '2026-07-07', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000017289306886/status?packId=2000017289306886&orderId=2000017289306886', 1, NULL, 1, 21.76, 40.00, 18.24, NULL),
(41, 34, 'Relógio Smartwatch 1 Pulseira Tela 2.2 polegadas', '2026-07-22', NULL, 'https://shopee.com.br/user/purchase/order/238449432144073?type=6', 3, NULL, 1, 28.54, 65.00, 36.46, NULL),
(42, 35, 'Relógio Smartwatch T800 Ultra 2 Big 7 Pulseiras Tela 2.19 polegadas', '2026-07-20', '2026-07-29', 'https://shopee.com.br/user/purchase/order/238238209118731?type=6', 3, '2607206WU5WCGB', 1, 26.00, 70.00, 44.00, '2026-10-13'),
(43, 36, 'Carregador Bateria Portátil Powerbank 20000 mAh adaptador iPhone/Micro USB V8', '2026-06-21', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000013629468081/status?packId=2000013629468085&orderId=2000017043217622', 1, NULL, 1, 45.15, 75.00, 29.85, NULL),
(44, 48, 'Relógio Digital Feminino Rosa Adulto/Infantil', '2026-05-22', NULL, 'https://www.aliexpress.com/p/order/detail.html?spm=a2g0o.order_list.order_list_main.6.6b1bcaa4bu6BxK&orderId=8210300326264088', 4, NULL, 1, 18.52, 20.00, 1.48, NULL),
(45, 39, 'Brinquedo Arminha Catapulta Avião', '2026-06-18', NULL, 'https://www.aliexpress.com/p/order/detail.html?spm=a2g0o.order_list.order_list_main.1.1c10caa4vhaNqQ&orderId=8212523503034132', 4, NULL, 1, 21.60, 35.00, 13.40, NULL),
(46, 40, 'Brinquedo Lançador de Foguete Com Pé', '2026-06-18', NULL, 'https://www.aliexpress.com/p/order/detail.html?spm=a2g0o.order_list.order_list_main.21.1c10caa4vhaNqQ&orderId=8211733456054132', 4, NULL, 2, 24.00, 40.00, 16.00, NULL),
(47, 41, 'Brinquedo Arco e Flecha Atirador de Bolinhas Que Grudam Alvo Dinossauro', '2026-06-18', NULL, 'https://www.aliexpress.com/p/order/detail.html?spm=a2g0o.order_list.order_list_main.11.1c10caa4vhaNqQ&orderId=8212523503014132', 4, NULL, 1, 33.64, 53.00, 19.36, NULL),
(48, 42, 'Brinquedo Educativo Quebra-Cabeça Alfabeto', '2026-06-18', NULL, 'https://www.aliexpress.com/p/order/detail.html?spm=a2g0o.order_list.order_list_main.16.1c10caa4vhaNqQ&orderId=8211733456034132', 4, NULL, 1, 19.16, 35.00, 15.84, NULL),
(49, 43, 'Brinquedo Arminha Lançador de Discos', '2026-06-18', NULL, 'https://www.aliexpress.com/p/order/detail.html?spm=a2g0o.order_list.order_list_main.6.1c10caa4vhaNqQ&orderId=8212523503054132', 4, NULL, 1, 14.38, 25.00, 10.62, NULL),
(50, 44, 'Brinquedo Jogo Educativo Tiro Ao Alvo Jacaré', '2026-06-01', NULL, 'https://www.aliexpress.com/p/order/detail.html?spm=a2g0o.order_list.order_list_main.31.1c10caa4vhaNqQ&orderId=8211490592744132', 4, NULL, 1, 13.17, 30.00, 16.83, NULL),
(51, 45, 'Brinquedo Arco e Flecha com Alvo', '2026-06-01', NULL, 'https://www.aliexpress.com/p/order/detail.html?spm=a2g0o.order_list.order_list_main.36.1c10caa4vhaNqQ&orderId=8211490592764132', 4, NULL, 1, 28.82, 40.00, 11.18, NULL),
(52, 46, 'Piscina Inflável Redonda 100 Litros 3 Aneis', '2026-06-17', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000013567638233/status?packId=2000013567638235&orderId=2000016984981716', 1, NULL, 1, 22.75, 50.00, 27.25, NULL),
(53, 47, 'Relógio Digital Com Pulseira Silicone Preto Adulto/Infantil', '2026-04-10', NULL, 'https://www.aliexpress.com/p/order/detail.html?spm=a2g0o.order_list.order_list_main.46.401ecaa4c09oot&orderId=8210889095314132', 4, NULL, 1, 16.45, 20.00, 3.55, NULL),
(54, 49, 'Liquidificador Mondial 2,2 Litros 3 Velocidades Turbo Branco', '2026-08-30', NULL, 'https://www.amazon.com.br/your-orders/order-details?orderID=702-8864569-4753058&ref=ppx_yo2ov_dt_b_fed_order_details', 2, NULL, 1, 89.00, 135.00, 46.00, NULL),
(55, 58, 'Câmera Segurança Ip Externa Wifi A28 À Prova Dágua App Icsee', '2026-09-09', NULL, 'https://myaccount.mercadolivre.com.br/my_purchases/2000018359871162/status?packId=2000018359871162&orderId=2000018359871162', 1, NULL, 1, 75.04, 140.00, 64.96, NULL),
(56, 4, 'Liquidificador Britânia 2,7 Litros 4 Velocidades Turbo', '2026-09-11', NULL, 'https://www.amazon.com.br/your-orders/order-details?orderID=702-7728305-8041020&ref=ppx_yo2ov_dt_b_fed_order_details', 2, NULL, 2, 97.07, 135.00, 37.93, NULL),
(57, 51, 'Projetor HY320 Android 12 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '2026-09-10', '2026-09-14', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018392567340/status?packId=2000018392567340&orderId=2000018392567340', 1, '2000018392567340', 1, 212.00, 260.00, 48.00, NULL),
(58, 59, 'Fone De Ouvido Sem Fio Bluetooth Preto', '2026-08-31', NULL, 'https://shopee.com.br/user/purchase/order/241855301152179?type=6', 3, NULL, 2, 16.15, 40.00, 23.85, NULL),
(59, 60, 'Fone De Ouvido Sem Fio Bluetooth Branco', '2026-08-31', NULL, 'https://shopee.com.br/user/purchase/order/241855443165573?type=6', 3, NULL, 2, 12.90, 40.00, 27.10, NULL),
(60, 61, 'Câmera Externa Wifi Prova D\'água ItBlue', '2026-09-09', '2026-09-13', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018371028784/status?packId=2000018371028784&orderId=2000018371028784', 1, NULL, 2, 59.33, 100.00, 40.67, NULL),
(61, 62, 'Sanduicheira Elétrica Preta Luxe Grill 2 em 1 Antiaderente Multiuso 750W Inox Preto Compacta para Sanduíches e Grill Elétrico', '2026-09-12', '2026-09-15', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018419311554/status?packId=2000018419311554&orderId=2000018419311554', 1, NULL, 1, 56.00, 80.00, 24.00, NULL),
(62, 52, 'Caixa De Som Bluetooth Grande Alto Falante 8 1000w Pmpo Saida 10w Heruz 711A', '2026-09-08', '2026-09-15', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018356957116/status?packId=2000018356957116&orderId=2000018356957116', 1, NULL, 1, 88.20, 165.00, 76.80, NULL),
(63, 63, 'Panela De Pressão Elétrica 5 Litros Essencial Inox Itatiaia', '2026-09-12', '2026-09-15', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018418454238/status?packId=2000018418454238&orderId=2000018418454238', 1, NULL, 1, 237.00, 300.00, 63.00, NULL),
(64, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '2026-09-13', '2026-09-16', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018439027476/status?packId=2000018439027476&orderId=2000018439027476', 1, '2000018439027476', 1, 173.90, 210.00, 36.10, NULL),
(65, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '2026-09-13', '2026-09-16', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018433164472/status?packId=2000018433164472&orderId=2000018433164472', 1, '2000018433164472', 1, 144.91, 210.00, 65.09, NULL),
(66, 64, 'Ventilador de Coluna Silencioso Design Slim Preto', '2026-09-13', '2026-09-16', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-5583977-8150668&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-5583977-8150668', 1, 107.99, 168.00, 60.01, NULL),
(67, 65, 'Fritadeira Air fryer Redstone Philco 4 Litros 1500w Preta', '2026-09-13', '2026-09-16', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018434952932/status?packId=2000018434952932&orderId=2000018434952932', 1, '2000018434952932', 1, 249.00, 310.00, 61.00, NULL),
(68, 66, 'Câmera de Segurança Interna/Externa Wi-Fi Preta Jortan', '2026-09-03', '2026-09-16', 'https://www.amazon.com.br/your-orders/order-details?orderID=701-7683517-3190648&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '701-7683517-3190648', 1, 104.48, 145.00, 40.52, NULL),
(69, 67, 'Ventilador 30cm 6 pás 3 velocidades Turbo 6 Ventisol', '2026-09-13', '2026-09-17', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018438702978/status?packId=2000018438702978&orderId=2000018438702978', 1, '2000018438702978', 1, 117.60, 158.00, 40.40, NULL),
(70, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '2026-09-12', '2026-09-17', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018427640356/status?packId=2000018427640356&orderId=2000018427640356', 1, '2000018427640356', 1, 139.37, 180.00, 40.63, NULL),
(71, 68, 'Som Automotivo Bluetooth Com Suporte Para Celular', '2026-09-11', '2026-09-17', 'https://myaccount.mercadolivre.com.br/my_purchases/2000014992677293/status?packId=2000014992677297&orderId=2000018417440754', 1, '2000014992677293', 1, 63.99, 100.00, 36.01, NULL),
(72, 69, 'Panela De Pressão Elétrica 4 Litros Inox Midea', '2026-09-14', '2026-09-17', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018448322104/status?packId=2000018448322104&orderId=2000018448322104', 1, '2000018448322104', 1, 215.92, 295.00, 79.08, NULL),
(73, 50, 'Parafusadeira Furadeira Sem Fio 48 2 Baterias 340w C/brocas IndoBest', '2026-09-10', '2026-09-17', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018392973360/status?packId=2000018392973360&orderId=2000018392973360', 1, '2000018392973360', 1, 93.52, 140.00, 46.48, NULL),
(74, 71, 'Som Automotivo Mp3 Rádio USB Bluetooth SD Card', '2026-09-11', '2026-09-18', 'https://myaccount.mercadolivre.com.br/my_purchases/2000014992677293/status?packId=2000014992677295&orderId=2000018417444302', 1, '2000014992677293', 1, 44.93, 85.00, 40.07, NULL),
(75, 70, 'Extensão Elétrica 3 Metros Com 3 Tomadas 3 Pinos Branca', '2026-09-11', '2026-09-18', 'https://myaccount.mercadolivre.com.br/my_purchases/2000014985810187/status?packId=2000014985810191&orderId=2000018410143474', 1, '2000014985810187', 1, 8.80, 28.00, 19.20, NULL),
(76, 51, 'Projetor HY320 Android 12 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '2026-09-15', '2026-09-18', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018467299152/status?packId=2000018467299152&orderId=2000018467299152', 1, '2000018467299152', 1, 178.51, 260.00, 81.49, NULL),
(77, 7, 'Panela Elétrica De Arroz 6 Xícaras Agratto', '2026-09-13', '2026-09-22', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018445296168/status?packId=2000018445296168&orderId=2000018445296168', 1, '2000018445296168', 1, 109.00, 150.00, 41.00, NULL),
(78, 6, 'Panela De Arroz Elétrica 10 Xícaras Inox Elgin', '2026-09-19', '2026-09-22', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018536695778/status?packId=2000018536695778&orderId=2000018536695778', 1, '2000018536695778', 1, 125.00, 175.00, 50.00, NULL),
(79, 72, 'Piscina Inflável Redonda 100 Litros 3 Aneis Fundo Do Mar VariTudo', '2026-09-15', '2026-09-19', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018476157254/status?packId=2000018476157254&orderId=2000018476157254', 1, '2000018476157254', 1, 38.51, 68.00, 29.49, NULL),
(80, 73, 'Liquidificador Philco 12 Velocidades 3 Litros 1200w', '2026-09-11', '2026-09-22', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018410730990/status?packId=2000018410730990&orderId=2000018410730990', 1, '2000018410730990', 1, 101.91, 150.00, 48.09, NULL),
(81, 74, 'Multimidia 7 Polegadas Mp5 Espelhamento Bluetooth Usb Sd com Controle Remoto', '2026-09-18', '2026-09-22', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018530227128/status?packId=2000018530227128&orderId=2000018530227128', 1, '2000018530227128', 1, 134.40, 185.00, 50.60, NULL),
(82, 31, 'Caixa de Som Bluetooth com Controle Remoto/Microfone/RádioFM/USB/SD First Option DS14', '2026-09-10', '2026-09-16', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018384929808/status?packId=2000018384929808&orderId=2000018384929808', 1, '2000018384929808', 1, 85.01, 165.00, 79.99, NULL),
(83, 31, 'Caixa de Som Bluetooth com Controle Remoto/Microfone/RádioFM/USB/SD First Option DS14', '2026-09-09', '2026-09-15', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018363242306/status?packId=2000018363242306&orderId=2000018363242306', 1, '2000018363242306', 1, 115.00, 165.00, 50.00, NULL),
(84, 75, 'Kit Par 2 Radio Baofeng 777s Walk Talk Comunicador 16 Canais', '2026-09-20', '2026-09-23', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018556518032/status?packId=2000018556518032&orderId=2000018556518032', 1, '2000018556518032', 1, 87.98, 138.00, 50.02, NULL),
(85, 76, 'Fritadeira Elétrica Air Fryer Multi 3 Litros 1200W Preta', '2026-09-12', '2026-09-12', 'https://www.americanas.com.br/account#/orders/1661078583847-01', 6, '1661078583847-01', 1, 159.90, 210.00, 50.10, NULL),
(86, 79, 'Extensão Elétrica De 10 M Com 3 Tomadas Bivolt Preta', '2026-09-20', '2026-09-25', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018556378026/status?packId=2000018556378026&orderId=2000018556378026', 1, '2000018556378026', 3, 18.75, 40.00, 21.25, NULL),
(87, 80, 'Extensão Elétrica 5 Metros Preto 3 Tomada Preta', '2026-09-20', '2026-09-25', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018556407858/status?packId=2000018556407858&orderId=2000018556407858', 1, '2000018556407858', 1, 15.95, 35.00, 19.05, NULL),
(88, 77, 'Panela de Pressão Elétrica Eletrozon 1100W de 6 Litros com Revestimento Antiaderente e Desligamento Automático', '2026-09-20', '2026-09-25', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018552691312/status?packId=2000018552691312&orderId=2000018552691312', 1, '2000018552691312', 1, 215.00, 285.00, 70.00, NULL),
(89, 78, 'Churrasqueira Elétrica Elgin', '2026-09-22', '2026-09-25', 'https://www.amazon.com.br/your-orders/order-details?orderID=701-7362331-5873830&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '701-7362331-5873830', 1, 89.70, 140.00, 50.30, NULL),
(90, 81, 'Compressor De Ar Automotivo 12v Vonder', '2026-09-22', '2026-09-25', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-5027536-3550621&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-5027536-3550621', 1, 114.79, 160.00, 45.21, NULL),
(91, 15, 'Jogo Kit Ferramentas Chave Catraca Soquete 3,8\' 40 Peças Sparta', '2026-09-16', '2026-09-24', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018486190718/status?packId=2000018486190718&orderId=2000018486190718', 1, '2000018486190718', 1, 35.94, 60.00, 24.06, NULL),
(92, 82, 'Ventilador de Coluna Turbo 6 Pás 50cm Ventisol', '2026-09-23', '2026-09-26', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018603370110/status?packId=2000018603370110&orderId=2000018603370110', 1, '2000018603370110', 1, 168.64, 218.00, 49.36, '2026-09-26'),
(93, 83, 'Sanduicheira Brunch Time 2 em 1 Grill Antiaderente Elgin', '2026-09-17', '2026-09-26', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018504161596/status?packId=2000018504161596&orderId=2000018504161596', 1, '2000018504161596', 1, 52.47, 80.00, 27.53, '2026-09-26'),
(94, 84, 'Parafusadeira Furadeira 2 Baterias 48v Com Maleta Lithium Drill', '2026-09-22', '2026-09-26', 'https://myaccount.mercadolivre.com.br/my_purchases/2000015160562565/status?packId=2000015160562567&orderId=2000018594254052', 1, '2000015160562565', 2, 75.00, 130.00, 55.00, '2026-09-26'),
(95, 85, 'Tenda Gazebo Branco Polietileno 3x3 Metros Desmontável Camping Praia Pesca', '2026-09-20', '2026-09-27', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018552652790/status?packId=2000018552652790&orderId=2000018552652790', 1, '2000018552652790', 1, 137.60, 187.00, 49.40, '2026-09-27'),
(96, 86, 'Refletor Super Led 400w Ip67 Holofote Bivolt Prova D\'água', '2026-09-24', '2026-09-29', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018628158434/status?packId=2000018628158434&orderId=2000018628158434', 1, '2000018628158434', 2, 22.00, 62.00, 40.00, '2026-09-29'),
(97, 87, 'Ventilador de Coluna Turbo 6 Pás 40cm Ventisol', '2026-09-26', '2026-09-29', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018660353760/status?packId=2000018660353760&orderId=2000018660353760', 1, '2000018660353760', 1, 167.33, 218.00, 50.67, '2026-09-29'),
(98, 88, 'Cadeira de Descanso e Balanço Funtime 18kgs Coruja Maxi Baby', '2026-09-24', '2026-09-29', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018634673774/status?packId=2000018634673774&orderId=2000018634673774', 1, '2000018634673774', 1, 158.35, 208.00, 49.65, '2026-09-29'),
(99, 89, 'Macaco Hidraulico Jacare 2 Toneladas Jacarezinho Com Maleta Elevi', '2026-09-24', '2026-09-29', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018628259442/status?packId=2000018628259442&orderId=2000018628259442', 1, '2000018628259442', 1, 143.38, 195.00, 51.62, '2026-09-29'),
(100, 90, 'Panela De Arroz Elétrica 10 Xicaras Inox Antiaderente Unitermi', '2026-09-25', '2026-09-29', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018638848898/status?packId=2000018638848898&orderId=2000018638848898', 1, '2000018638848898', 1, 133.83, 175.00, 41.17, '2026-09-29'),
(101, 6, 'Panela De Arroz Elétrica 10 Xícaras Inox Elgin', '2026-09-18', '2026-09-29', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-9354669-8380250&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-9354669-8380250', 2, 125.00, 175.00, 50.00, '2026-09-29'),
(102, 91, 'Panela De Arroz Elétrica 5 Xicaras Preta Itatiaia', '2026-09-22', '2026-09-29', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-9611282-5280258&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-9611282-5280258', 1, 112.00, 162.00, 50.00, '2026-09-29'),
(103, 92, 'Parafusadeira e Furadeira com Impacto 1 Bateria 12v Led de Iluminação e Maleta WAP', '2026-09-24', '2026-09-29', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018618224466/status?packId=2000018618224466&orderId=2000018618224466', 1, '2000018618224466', 1, 111.20, 163.00, 51.80, '2026-09-30'),
(104, 93, 'Ventilador Turbo Fresh 40cm 6 Pás 3 Velocidades Mallory', '2026-09-13', '2026-09-30', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018438629532/status?packId=2000018438629532&orderId=2000018438629532', 1, '2000018438629532', 1, 118.24, 178.00, 59.76, '2026-09-30'),
(105, 94, 'Camera Segurança A28 Yoosee Prova D\'agua Lente Dupla', '2026-09-23', '2026-09-27', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018612227860/status?packId=2000018612227860&orderId=2000018612227860', 1, '2000018612227860', 2, 88.70, 140.00, 51.30, '2026-09-30'),
(106, 95, 'Mini Projetor HY320 Android 14 Wi-Fi Bluetooth HDMI USB Preto', '2026-09-25', '2026-09-29', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018637006900/status?packId=2000018637006900&orderId=2000018637006900', 1, '2000018637006900', 1, 184.41, 250.00, 65.59, '2026-09-30'),
(107, 96, 'kit 2 Câmeras De Segurança Com Resolução De 2mp Visão Noturna Prova d\'água', '2026-09-26', '2026-09-30', 'https://myaccount.mercadolivre.com.br/my_purchases/2000015224407333/status?packId=2000015224407335&orderId=2000018661421042', 1, '2000015224407333', 2, 128.82, 178.00, 49.18, '2026-09-30'),
(108, 97, 'Espremedor Premium Preto Mondial', '2026-09-25', '2026-09-30', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-7606816-0058621&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-7606816-0058621', 1, 61.53, 92.00, 30.47, '2026-09-30'),
(109, 98, 'Ventilador de Mesa 30cm Super Power Mondial', '2026-10-27', '2026-10-01', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018667034068/status?packId=2000018667034068&orderId=2000018667034068', 1, '2000018667034068', 1, 106.03, 145.00, 38.97, '2026-10-01'),
(110, 95, 'Mini Projetor HY320 Android 14 Wi-Fi Bluetooth HDMI USB Preto', '2026-09-27', '2026-10-01', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018667866862/status?packId=2000018667866862&orderId=2000018667866862', 1, '2000018667866862', 1, 195.00, 250.00, 55.00, '2026-10-01'),
(111, 99, 'Ventilador De Coluna Mallory Éolo 40cm 6 Pás', '2026-09-26', '2026-10-05', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018660562374/status?packId=2000018660562374&orderId=2000018660562374', 1, '2000018660562374', 1, 189.90, 240.00, 50.10, '2026-10-05'),
(112, 100, 'Mini compressor de ar portátil a bateria', '2026-09-22', '2026-10-02', 'https://www.amazon.com.br/your-orders/order-details?orderID=701-4228485-8972220&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '701-4228485-8972220', 1, 57.95, 90.00, 32.05, '2026-10-05'),
(113, 7, 'Panela Elétrica De Arroz 6 Xícaras Agratto', '2026-09-27', '2026-10-05', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018663845230/status?packId=2000018663845230&orderId=2000018663845230', 1, '2000018663845230', 1, 89.79, 150.00, 60.21, '2026-10-06'),
(114, 7, 'Panela Elétrica De Arroz 6 Xícaras Agratto', '2026-09-27', '2026-10-05', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018663849818/status?packId=2000018663849818&orderId=2000018663849818', 1, '2000018663849818', 1, 89.79, 150.00, 60.21, '2026-10-06'),
(115, 101, 'Patinete Infantil 3 Rodas Led Dobrável Maxi Toys', '2026-10-02', '2026-10-06', 'https://myaccount.mercadolivre.com.br/my_purchases/2000015311132743/status?packId=2000015311132745&orderId=2000018752295798', 1, '2000015311132743', 1, 42.90, 93.00, 50.10, '2026-10-06'),
(116, 102, 'Panela Pressao Rochedo Clipso 4,5 Litros Fechamento Externo Seguro Preta', '2026-09-24', '2026-10-06', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018628671814/status?packId=2000018628671814&orderId=2000018628671814', 1, '2000018628671814', 1, 180.82, 232.00, 51.18, '2026-10-06'),
(117, 103, 'Kit 2 Câmera De Segurança Externa Wi-fi Hd App Icsee Visão Noturna Alarme Luminoso', '2026-09-30', '2026-10-05', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018726196214/status?packId=2000018726196214&orderId=2000018726196214', 1, '2000018726196214', 1, 138.59, 188.00, 49.41, '2026-10-06'),
(118, 104, 'Parafusadeira e Furadeira Com 2 Baterias 48v e Maleta Maximus', '2026-10-01', '2026-10-05', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018742137250/status?packId=2000018742137250&orderId=2000018742137250', 1, '2000018742137250', 1, 84.79, 130.00, 45.21, '2026-10-06'),
(119, 107, 'Furadeira E Parafusadeira 48v HR', '2026-10-30', '2026-10-09', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018723028938/status?packId=2000018723028938&orderId=2000018723028938', 1, '2000018723028938', 1, 89.56, 130.00, 40.44, '2026-10-10'),
(120, 105, 'Patinete Infantil Musical 3 Rodas Kiddy Rosa', '2026-10-02', '2026-10-09', 'https://myaccount.mercadolivre.com.br/my_purchases/2000015311219175/status?packId=2000015311219177&orderId=2000018752396094', 1, '2000015311219175', 1, 86.10, 137.00, 50.90, '2026-10-10'),
(121, 108, 'Central Multimídia Universal Mp5 Câmera Bt Espelha Dvd 2 Din ZY', '2026-09-25', '2026-10-09', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018643783562/status?packId=2000018643783562&orderId=2000018643783562', 1, '2000018643783562', 1, 170.00, 220.00, 50.00, '2026-10-10'),
(122, 106, 'Macaco Hidraulico Tipo Jacare Até 2 Toneladas Com Caixa Plástica Sparta', '2026-10-07', '2026-10-10', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018844344114/status?packId=2000018844344114&orderId=2000018844344114', 1, '2000018844344114', 1, 132.41, 195.00, 62.59, '2026-10-10'),
(123, 106, 'Macaco Hidraulico Tipo Jacare Até 2 Toneladas Com Caixa Plástica Sparta', '2026-10-07', '2026-10-10', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-3115454-8246612&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-3115454-8246612', 1, 162.63, 213.00, 50.37, '2026-10-10'),
(124, 109, 'Liquidificador Turbo 2,7 Litros 5 Velocidades 900W Preto Mondial', '2026-10-07', '2026-10-10', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-7439531-2588225&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-7439531-2588225', 1, 92.65, 135.00, 42.35, '2026-10-10'),
(125, 110, 'Liquidificador Britânia 2,6 Litros 3 Velocidades Turbo', '2026-10-07', '2026-10-10', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-5636944-8077055&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-5636944-8077055', 1, 80.91, 135.00, 54.09, '2026-10-10'),
(126, 111, 'Mixer Mallory Trikxer Pratic - 3 EM 1', '2026-10-07', '2026-10-10', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-2832041-8605031&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-2832041-8605031', 1, 102.00, 162.00, 60.00, '2026-10-10'),
(127, 51, 'Projetor HY320 Android 12 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '2026-10-08', '2026-10-11', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018868961808/status?packId=2000018868961808&orderId=2000018868961808', 1, '2000018868961808', 1, 203.60, 260.00, 56.40, '2026-10-13'),
(128, 112, 'Mixer Elgin Branco', '2026-10-07', '2026-10-12', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-3211801-2028251&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-3211801-2028251', 1, 52.90, 95.00, 42.10, '2026-10-13'),
(129, 46, 'Piscina Inflável Redonda 100 Litros 3 Aneis', '2026-09-30', '2026-10-13', 'https://myaccount.mercadolivre.com.br/my_purchases/2000015284048129/status?packId=2000015284048131&orderId=2000018724204832', 1, '2000015284048129', 2, 67.15, 63.00, -4.15, '2026-10-13'),
(130, 113, 'Parafusadeira Furadeira a Bateria Vonder 3/8\" 12v PFV 120', '2026-10-06', '2026-10-09', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018830025492/status?packId=2000018830025492&orderId=2000018830025492', 1, '2000018830025492', 1, 120.60, 170.00, 49.40, '2026-10-15'),
(131, 114, 'Furadeira e Parafusadeira Sem Fio 48V com 2 Baterias Mackie', '2026-10-06', '2026-10-16', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-5298385-1741802&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-5298385-1741802', 1, 94.72, 130.00, 35.28, '2026-10-16'),
(132, 5, 'Liquidificador Mondial 2,2 Litros 3 Velocidades Turbo Preto', '2026-10-15', '2026-10-17', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-1408990-7468247&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-1408990-7468247', 1, 89.90, 135.00, 45.10, '2026-10-20'),
(133, 115, 'Parafusadeira e Furadeira à Bateria 12V Kit de 13 Acessórios e Maleta WAP', '2026-10-06', '2026-10-16', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-3919754-1585811&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-3919754-1585811', 1, 105.90, 156.00, 50.10, '2026-10-21'),
(134, 64, 'Ventilador de Coluna Silencioso Design Slim Preto Hepta', '2026-10-13', '2026-10-16', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-7986130-2849058&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-7986130-2849058', 1, 99.99, 150.00, 50.01, '2026-10-21'),
(135, 116, 'Mini Projetor HY320 Android 13 Wi-Fi Bluetooth HDMI USB Preto', '2026-10-16', '2026-10-26', 'https://myaccount.mercadolivre.com.br/my_purchases/2000019017934430/status?packId=2000019017934430&orderId=2000019017934430', 1, '2000019017934430', 1, 203.60, 260.00, 56.40, '2026-10-28'),
(136, 117, 'Parafusadeira 1 Bateria 21v Philco PPF21M', '2026-10-17', '2026-10-27', 'https://www.amazon.com.br/your-orders/order-details?orderID=701-5718488-9172242&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '701-5718488-9172242', 1, 174.50, 225.00, 50.50, '2026-10-28'),
(137, 118, 'Patinete Infantil 3 Rodas Com Led Cesto Guidão Ajustável JustFun', '2026-10-15', '2026-10-26', 'https://myaccount.mercadolivre.com.br/my_purchases/2000018993234412/status?packId=2000018993234412&orderId=2000018993234412', 1, '2000018993234412', 1, 73.99, 125.00, 51.01, '2026-10-28'),
(138, 119, 'Parafusadeira Furadeira 2 Baterias 48v + maleta Elvis', '2026-10-10', '2026-10-20', 'https://myaccount.mercadolivre.com.br/my_purchases/2000015461710715/status?packId=2000015461710717&orderId=2000018912660486', 1, '2000015461710715', 3, 69.00, 125.00, 56.00, '2026-10-28'),
(139, 120, 'Multimídia 7 Polegadas 2 Din Bluetooth Espelhamento via Cabo', '2026-10-06', '2026-10-16', 'https://www.amazon.com.br/your-orders/order-details?orderID=702-7799471-0230605&ref=ppx_yo2ov_dt_b_fed_order_details', 2, '702-7799471-0230605', 1, 152.98, 203.00, 50.02, '2026-10-28'),
(140, 121, 'Liquidificador Cadence Hit 2,5 Litros 800W Preto', '2026-10-21', '2026-10-28', 'https://myaccount.mercadolivre.com.br/post-purchase/my-purchases/2000019102331540/status?packId=2000019102331540&orderId=2000019102331540', 1, '2000019102331540', 1, 89.90, 135.00, 45.10, '2026-10-30'),
(141, 122, 'Liquidificador 12 Velocidades 3 Litros 1400w Britânia', '2026-10-03', '2026-10-29', 'https://myaccount.mercadolivre.com.br/post-purchase/my-purchases/2000018770468436/status?packId=2000018770468436&orderId=2000018770468436', 1, '2000018770468436', 1, 116.99, 167.00, 50.01, '2026-10-30'),
(142, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '2026-11-10', '2026-11-20', 'https://myaccount.mercadolivre.com.br/post-purchase/my-purchases/2000015461681913/status?packId=2000015461681915&orderId=2000018912586810', 1, '2000015461681913', 2, 143.95, 220.00, 76.05, '2026-11-01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `compra_pagamentos`
--

CREATE TABLE `compra_pagamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `compra_id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `compra_pagamentos`
--

INSERT INTO `compra_pagamentos` (`id`, `compra_id`, `tipo`, `valor`) VALUES
(5440, 42, 'Cartão de crédito', 26.00),
(5441, 92, 'Saldo Mercado Pago', 68.64),
(5442, 92, 'Cartão de crédito', 100.00),
(5443, 93, 'PIX', 52.47),
(5444, 94, 'PIX', 148.51),
(5445, 95, 'Cartão de crédito', 137.60),
(5446, 98, 'PIX', 158.35),
(5447, 99, 'Cartão de crédito', 143.38),
(5448, 101, 'Cartão de crédito', 125.00),
(5449, 102, 'Cartão de crédito', 112.00),
(5450, 103, 'Cartão de crédito', 111.20),
(5451, 104, 'Cartão de crédito', 118.24),
(5452, 105, 'Cartão de crédito', 88.70),
(5453, 106, 'Cartão de crédito', 184.41),
(5454, 107, 'Cartão de crédito', 128.82),
(5455, 108, 'PIX', 61.53),
(5456, 109, 'PIX', 106.03),
(5457, 110, 'Cartão de crédito', 195.00),
(5458, 111, 'Cartão de crédito', 189.90),
(5459, 112, 'Cartão de crédito', 57.95),
(5460, 113, 'PIX', 89.79),
(5461, 114, 'PIX', 89.79),
(5462, 115, 'Cartão de crédito', 42.90),
(5463, 116, 'Cartão de crédito', 180.82),
(5464, 117, 'Cartão de crédito', 138.59),
(5465, 118, 'Cartão de crédito', 84.79),
(5466, 119, 'PIX', 89.56),
(5467, 120, 'Cartão de crédito', 86.10),
(5468, 121, 'PIX', 170.00),
(5469, 122, 'PIX', 132.41),
(5470, 123, 'Cartão de crédito', 162.63),
(5471, 124, 'Cartão de crédito', 92.65),
(5472, 125, 'PIX', 80.91),
(5473, 126, 'Cartão de crédito', 102.00),
(5474, 127, 'Cartão de crédito', 203.60),
(5475, 128, 'Cartão de crédito', 52.90),
(5476, 129, 'Cartão de crédito', 67.15),
(5477, 130, 'Cartão de crédito', 120.60),
(5478, 131, 'Cartão de crédito', 94.72),
(5479, 132, 'Cartão de crédito', 89.90),
(5480, 133, 'Cartão de crédito', 105.90),
(5481, 134, 'Cartão de crédito', 99.99),
(5482, 135, 'Cartão de crédito', 203.60),
(5483, 136, 'Cartão de crédito', 174.50),
(5484, 137, 'Saldo Mercado Pago', 23.99),
(5485, 137, 'Cartão de crédito', 50.00),
(5486, 139, 'Cartão de crédito', 152.98),
(5487, 140, 'Cartão de crédito', 89.90),
(5488, 141, 'Cartão de crédito', 116.99),
(5489, 142, 'Cartão de crédito', 287.90);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome`) VALUES
(1, 'Mercado Livre'),
(2, 'Amazon'),
(3, 'Shopee'),
(4, 'AliExpress'),
(5, 'Casas Bahia'),
(6, 'Americanas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(500) NOT NULL DEFAULT '',
  `complemento` varchar(255) NOT NULL DEFAULT '',
  `custo` decimal(10,2) NOT NULL DEFAULT 0.00,
  `preco` decimal(10,2) NOT NULL DEFAULT 0.00,
  `imagem` varchar(255) NOT NULL DEFAULT '',
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `cod_barras` varchar(50) NOT NULL DEFAULT '',
  `estoque` int(11) NOT NULL DEFAULT 0,
  `data_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `complemento`, `custo`, `preco`, `imagem`, `categoria_id`, `cod_barras`, `estoque`, `data_cadastro`) VALUES
(1, 'Panela De Pressão Elétrica 5 Litros Painel Digital Itatiaia', '', '', 253.76, 299.99, 'img/produtos/panela_eletrica_itatiaia.webp', 1, '', 0, NULL),
(2, 'Fritadeira Air Fryer 4,5 Litros Widemax Com Interior De Alumínio 1500w Midea', '', '', 249.00, 299.99, 'img/produtos/fritadeira_midea.webp', 1, '', 0, NULL),
(3, 'Fritadeira Elétrica Air Fryer Wap 5,2 Litros Com Revestimento Antiaderente', '', '', 209.00, 279.99, 'img/produtos/fritadeira_wap.webp', 1, '', 0, NULL),
(4, 'Liquidificador Britânia 2,7 Litros 4 Velocidades Turbo', '', '', 89.90, 134.99, 'img/produtos/liquidificador_britania.jpg', 1, '', 0, NULL),
(5, 'Liquidificador Mondial 2,2 Litros 3 Velocidades Turbo Preto', 'L-98-B', '', 99.90, 134.99, 'img/produtos/liquidificador_mondial.jpg', 1, '', 1, NULL),
(6, 'Panela De Arroz Elétrica 10 Xícaras Inox Elgin', '', '', 129.90, 175.00, 'img/produtos/panela_arroz_elgin_inox.webp', 1, '', 0, '2026-10-13'),
(7, 'Panela Elétrica De Arroz 6 Xícaras Agratto', '', '', 90.02, 150.00, 'img/produtos/panela_arroz_agratto.webp', 1, '', 2, '2026-10-06'),
(8, 'Sanduicheira Misteira Tostequeira Mini Grill Multilaser', '', '', 59.21, 79.99, 'img/produtos/sanduicheira_multilaser.webp', 1, '', 0, NULL),
(9, 'Sanduicheira Grill Elétrica Antiaderente Sumay', '', '', 49.49, 81.99, 'img/produtos/sanduicheira_sumay.webp', 1, '', 0, NULL),
(10, 'Chaleira Elétrica 2 litros Mokfa', '', '', 31.40, 60.00, 'img/produtos/chaleira.webp', 1, '', 2, NULL),
(11, 'Kit Chave Ferramentas Jogo De Soquetes 1/2\'\' 17 Peças Tramontina', '', '', 149.00, 189.99, 'img/produtos/jogo_soquete_17_pecas_tramontina.webp', 2, '', 1, NULL),
(12, 'Kit Ferramentas Chave 27 Peças L 1/2\' Soquete', '', '', 31.04, 50.00, 'img/produtos/jogo_soquete_27_pecas.webp', 2, '', 0, NULL),
(13, 'Chave Tigre de Boca Multifuncional 360 Graus', '', '', 24.70, 38.00, 'img/produtos/chave_tigre_bomvink.webp', 2, '', 0, NULL),
(14, 'Kit Ferramentas 40 Peças Com Soquetes e Chave Com Catraca 3/8\' Black Tools', '', '', 28.00, 48.00, 'img/produtos/jogo_soquete_40_pecas_black_tools.webp', 2, '', 1, NULL),
(15, 'Jogo Kit Ferramentas Chave Catraca Soquete 3,8\' 40 Peças Sparta', '', '', 24.06, 45.00, 'img/produtos/jogo_soquete_40_pecas_sparta.webp', 2, '', 0, NULL),
(16, 'Kit de Ferramentas Jogo Chave Catraca 1/2 do 8 ao 32mm', '', '', 138.90, 169.99, 'img/produtos/jogo_soquete_22_pecas_black_tools.webp', 2, '', 0, NULL),
(17, 'Kit Ferramentas Jogo Chave 12 Peças 4mm a 13mm Catraca Soquete 1/4', '', '', 19.80, 40.00, 'img/produtos/jogo_soquete_12_pecas.webp', 2, '', 1, NULL),
(18, 'Ferramentas Jogo 40 Peças Chave Catraca Soquete 3/8 Fasterr Tools', '', '', 22.62, 42.00, 'img/produtos/jogo_soquete_40_pecas_faster_tools.webp', 2, '', 1, NULL),
(19, 'Ferramenta Kit Chaves Catraca Reversivel Soquetes 46 Pecas Maleta', '', '', 24.99, 40.00, 'img/produtos/jogo_catraca_46_pecas.jpg', 2, '', 2, NULL),
(20, 'Furadeira De Impacto Mondial', '', '', 118.00, 150.00, 'img/produtos/furadeira_mondial.webp', 2, '', 0, '2026-09-24'),
(21, 'Parafusadeira Furadeira 1 Bateria 12v', '', '', 67.80, 95.00, 'img/produtos/parafusadeira_black_tools_12v.webp', 2, '', 1, NULL),
(22, 'Parafusadeira Furadeira 2 Baterias 21v + Acessórios', '', '', 0.00, 135.00, 'img/produtos/parafusadeira_arstheco_21v.jpg', 2, '', 0, NULL),
(23, 'Projetor MAGCUBIC HY300 PRO Android 11 Wifi 5g Espelhamento', '', '', 0.00, 249.99, 'img/produtos/projetor_hy300_magcubic.jpg', 3, '', 0, NULL),
(24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '', '', 0.00, 220.00, 'img/produtos/projetor_hy300.jpg', 3, '', 1, '2026-09-30'),
(25, 'Câmera De Segurança Wifi Externa Full Hd Infravermelho Prova D\'água', '', '', 0.00, 94.99, 'img/produtos/camera_seguranca_jortan.jpg', 3, '', 0, NULL),
(26, 'Caixa de Som Bluetooth USB/SD Card 20W Vermelha', '', '', 33.00, 59.99, 'img/produtos/caixa_som_altomex_al_8787.jpg', 3, '', 0, NULL),
(27, 'Caixa de Som Bluetooth Portátil TWS USB SD 10W Preta', '', '', 30.00, 54.99, 'img/produtos/caixa_som_grasep_d_y03.jpg', 3, '', 1, NULL),
(28, 'Caixa De Som Bluetooth Rádio Fm/USB/SD Card e Iluminação Led', '', '', 29.99, 48.00, 'img/produtos/caixa_som_grasep_d_y05.webp', 3, '', 1, NULL),
(29, 'Caixa de Som Bluetooth 20w Vermelha', '', '', 35.88, 55.00, 'img/produtos/caixa_som_charce.webp', 3, '', 0, NULL),
(30, 'Caixa De Som Bluetooth 50w Led USB, SD e rádio FM', '', '', 0.00, 134.99, 'img/produtos/caixa_som_altomex_al_3629.webp', 3, '', 0, NULL),
(31, 'Caixa de Som Bluetooth com Controle Remoto/Microfone/RádioFM/USB/SD First Option DS14', '', '', 103.70, 165.00, 'img/produtos/caixa_som_first_option_ds14.webp', 3, '', 1, NULL),
(32, 'Fone De Ouvido Sem Fio Bluetooth', '', 'Redmi', 21.76, 39.99, 'img/produtos/fone_ouvido_redmi.jpg', 3, '', 0, NULL),
(33, 'Fone De Ouvido Sem Fio Bluetooth Branco', '', 'X55', 0.00, 34.99, 'img/produtos/fone_ouvido_x55.png', 3, '', 0, NULL),
(34, 'Relógio Smartwatch 1 Pulseira Tela 2.2 polegadas', '', '', 28.54, 64.99, 'img/produtos/smartwatch_8_ultra.jpg', 3, '', 0, NULL),
(35, 'Relógio Smartwatch T800 Ultra 2 Big 7 Pulseiras Tela 2.19 polegadas', '', '', 26.00, 69.99, 'img/produtos/smartwatch_t800_ultra.webp', 3, '', 0, NULL),
(36, 'Carregador Bateria Portátil Powerbank 20000 mAh adaptador iPhone/Micro USB V8', '', '', 45.15, 74.99, 'img/produtos/carregador_powerbank_20000mah.webp', 3, '', 1, NULL),
(37, 'Som Automotivo Carro Mp3 Bluetooth Rádio Fm Com Controle', '', '', 48.50, 87.99, 'img/produtos/som_automotivo_first_option.png', 3, '', 0, NULL),
(38, 'Parafusadeira Furadeira 2 Baterias 48v + Acessórios + Maleta', '', '', 0.00, 144.99, 'img/produtos/parafusadeira_soarfly_48v.webp', 2, '', 0, NULL),
(39, 'Brinquedo Arminha Catapulta Avião', '', '', 21.60, 34.99, 'img/produtos/brinquedo_arma_catapulta_aviao.png', 4, '', 1, NULL),
(40, 'Brinquedo Lançador de Foguete Com Pé', '', '', 24.00, 39.99, 'img/produtos/brinquedo_lancador_foguete.webp', 4, '', 2, NULL),
(41, 'Brinquedo Arco e Flecha Atirador de Bolinhas Que Grudam Alvo Dinossauro', '', '', 33.64, 53.00, 'img/produtos/brinquedo_arco_flecha_alvo_dinossauro.png', 4, '', 1, NULL),
(42, 'Brinquedo Educativo Quebra-Cabeça Alfabeto', '', '', 19.16, 34.99, 'img/produtos/brinquedo_quebra_cabeca_alfabeto.png', 4, '', 1, NULL),
(43, 'Brinquedo Arminha Lançador de Discos', '', '', 14.38, 25.00, 'img/produtos/brinquedo_arminha_lancador_disco.png', 4, '', 1, NULL),
(44, 'Brinquedo Jogo Educativo Tiro Ao Alvo Jacaré', '', '', 13.17, 29.99, 'img/produtos/brinquedo_tiro_alvo_jacare.png', 4, '', 1, NULL),
(45, 'Brinquedo Arco e Flecha com Alvo', '', '', 28.82, 39.99, 'img/produtos/brinquedo_tiro_alvo.png', 4, '', 0, NULL),
(46, 'Piscina Inflável Redonda 100 Litros 3 Aneis', '', '', 33.56, 63.00, 'img/produtos/brinquedo_piscina_100lt.webp', 4, '', 2, '2026-10-13'),
(47, 'Relógio Digital Com Pulseira Silicone Preto Adulto/Infantil', '', '', 16.45, 20.00, 'img/produtos/relogio_digital_preto.avif', 3, '', 1, NULL),
(48, 'Relógio Digital Feminino Rosa Adulto/Infantil', '', '', 18.52, 20.00, 'img/produtos/relogio_digital_rosa.png', 3, '', 1, NULL),
(49, 'Liquidificador Mondial 2,2 Litros 3 Velocidades Turbo Branco', 'L-97-W', '', 89.00, 134.99, 'img/produtos/liquidificador_mondial_branco.jpg', 1, '', 0, NULL),
(50, 'Parafusadeira Furadeira Sem Fio 48 2 Baterias 340w C/brocas IndoBest', '', '', 97.76, 140.00, 'img/produtos/parafusadeira_indorbest_48v.jpg', 2, '', 0, NULL),
(51, 'Projetor HY320 Android 12 4KUltra HD HDMI Wifi Bluetooth Alto Falante', '', '', 203.00, 260.00, 'img/produtos/projetor_hy320.png', 3, '', 0, '2026-10-13'),
(52, 'Caixa De Som Bluetooth Grande Alto Falante 8 1000w Pmpo Saida 10w Heruz 711A', '', '', 84.00, 165.00, 'img/produtos/caixa_som_heruz_hz711a.webp', 3, '', 0, NULL),
(53, 'Câmera Externa Ip A Prova D\'água Wifi Dupla Visão Noturna ItBlue', 'App: Icsee', 'SC-B57', 85.00, 140.00, 'img/produtos/camera_seguranca_scb57.jpg', 3, '', 0, NULL),
(54, 'Câmera De Segurança Wifi Externa Hd Infravermelho Prova D\'água Preta Jortan', 'App: Yoosee', '', 59.49, 100.00, 'img/produtos/camera_seguranca_jortan_jt8160.png', 3, '', 0, NULL),
(55, 'Caixa De Som Bluetooth Grande Alto Falante 8 1000w Pmpo Saida 10w Heruz 712A', '', '', 99.00, 165.00, 'img/produtos/caixa_som_heruz_hz712a.webp', 3, '', 0, NULL),
(56, 'Parafusadeira Furadeira 2 Baterias 48v Kit Completo com Bits, Brocas, Soquetes e Maleta Alobrax', '', '', 93.41, 140.00, 'img/produtos/parafusadeira_alobrax_48v.webp', 2, '', 0, NULL),
(57, 'Parafusadeira Furadeira 2 Baterias 36v Com Maleta e Acessórios B-Tek', '', '', 77.52, 128.00, 'img/produtos/parafusadeira_btek_36v.webp', 2, '', 0, NULL),
(58, 'Câmera Segurança Ip Externa Wifi A28 À Prova Dágua App Icsee', '', '', 75.04, 140.00, 'img/produtos/camera_seguranca_a28.jpg', 3, '6920260513598', 0, NULL),
(59, 'Fone De Ouvido Sem Fio Bluetooth Preto', '', 'X55', 16.15, 40.00, 'img/produtos/fone_ouvido_x55_preto.png', 3, '', 1, NULL),
(60, 'Fone De Ouvido Sem Fio Bluetooth Branco', '', 'Pro 4', 12.90, 40.00, 'img/produtos/fone_ouvido_pro4_branco.png', 3, '', 2, NULL),
(61, 'Câmera Externa Wifi Prova D\'água ItBlue', '', 'SC-B28', 59.33, 100.00, 'img/produtos/camera_seguranca_scb28.png', 3, '', 0, NULL),
(62, 'Sanduicheira Elétrica e Grill Elétrico 2 em 1 Antiaderente Multiuso 750W Preta', '', 'Unitermi', 56.00, 80.00, 'img/produtos/sanduicheira_unitermi.webp', 1, '', 0, NULL),
(63, 'Panela De Pressão Elétrica 5 Litros Essencial Inox Itatiaia', '', '', 237.00, 300.00, 'img/produtos/panela_pressao_eletrica_essencial_itatiaia.webp', 1, '7892946456316', 0, NULL),
(64, 'Ventilador de Coluna Silencioso Design Slim Preto Hepta', '', 'FS101', 107.99, 168.00, 'img/produtos/ventilador_hepta.avif', 1, '', 0, '2026-10-21'),
(65, 'Fritadeira Air fryer Redstone Philco 4 Litros 1500w Preta', '', 'paf40a', 249.00, 310.00, 'img/produtos/fritadeira_philco_redstone.webp', 1, '', 1, NULL),
(66, 'Câmera de Segurança Interna/Externa Wi-Fi Preta Jortan', 'App: Yoosee', 'JT-8698', 104.48, 145.00, 'img/produtos/camera_seguranca_jortan_jt8698.webp', 3, '', 0, NULL),
(67, 'Ventilador 30cm 6 pás 3 velocidades Turbo 6 Ventisol', '', '', 117.60, 158.00, 'img/produtos/ventilador_ventisol_30cm.png', 1, '', 0, NULL),
(68, 'Som Automotivo Bluetooth Com Suporte Para Celular', '', '', 63.99, 100.00, 'img/produtos/som_automotivo_soundfy.webp', 5, '', 1, NULL),
(69, 'Panela De Pressão Elétrica 4 Litros Inox Midea', '', '', 215.92, 295.00, 'img/produtos/panela_pressao_eletrica_midea.webp', 1, '', 1, NULL),
(70, 'Extensão Elétrica 3 Metros Com 3 Tomadas 3 Pinos Branca', '', '', 8.80, 28.00, 'img/produtos/extensao_eletrica_3mt.webp', 6, '', 1, NULL),
(71, 'Som Automotivo Mp3 Rádio USB Bluetooth SD Card', '', 'First Option 8850B', 44.93, 85.00, 'img/produtos/som_automotivo_first_option_8850b.webp', 5, '', 0, NULL),
(72, 'Piscina Inflável Redonda 100 Litros 3 Aneis Fundo Do Mar VariTudo', '', 'Vari Tudo', 38.51, 68.00, 'img/produtos/brinquedo_piscina_100lt_varitudo.png', 4, '', 0, NULL),
(73, 'Liquidificador Philco 12 Velocidades 3 Litros 1200w', '', 'Ph900', 101.91, 150.00, 'img/produtos/liquidificador_philco.jpg', 1, '', 0, NULL),
(74, 'Multimidia 7 Polegadas Mp5 Espelhamento Bluetooth Usb Sd com Controle Remoto', '', 'H-TECH', 134.40, 185.00, 'img/produtos/multimidia_mp5.webp', 5, '', 0, NULL),
(75, 'Kit Par 2 Radio Baofeng 777s Walk Talk Comunicador 16 Canais', '', '', 87.98, 138.00, 'img/produtos/kit_2_radio_baofeng_777.webp', 3, '', 0, NULL),
(76, 'Fritadeira Elétrica Air Fryer Multi 3 Litros 1200W Preta', '', '', 159.90, 210.00, 'img/produtos/fritadeira_multi.webp', 1, '', 0, NULL),
(77, 'Panela de Pressão Elétrica Eletrozon 1100W de 6 Litros com Revestimento Antiaderente e Desligamento Automático', '', '', 215.00, 285.00, 'img/produtos/panela_pressao_eletrica_eletrozon.webp', 1, '', 0, '2026-09-24'),
(78, 'Churrasqueira Elétrica Elgin', '', '', 87.90, 140.00, 'img/produtos/churrasqueira_eletrica_elgin.avif', 1, '', 1, '2026-09-24'),
(79, 'Extensão Elétrica De 10 M Com 3 Tomadas Bivolt Preta', '', 'Parosflux', 18.75, 40.00, 'img/produtos/extensao_eletrica_10mt.webp', 6, '', 2, '2026-09-25'),
(80, 'Extensão Elétrica 5 Metros Preto 3 Tomada Preta', '', '', 15.95, 35.00, 'img/produtos/extensao_eletrica_5mt.webp', 6, '', 1, '2026-09-25'),
(81, 'Compressor De Ar Automotivo 12v Vonder', '', '', 114.79, 160.00, 'img/produtos/compressor_de_ar_vonder.avif', 5, '', 1, '2026-09-25'),
(82, 'Ventilador de Coluna Turbo 6 Pás 50cm Ventisol', '', '', 168.64, 218.00, 'img/produtos/ventilador_ventisol_50cm.webp', 1, '', 0, '2026-09-26'),
(83, 'Sanduicheira Brunch Time 2 em 1 Grill Antiaderente Elgin', '', '', 52.47, 80.00, 'img/produtos/sanduicheira_elgin.webp', 1, '', 1, '2026-09-26'),
(84, 'Parafusadeira Furadeira 2 Baterias 48v Com Maleta Lithium Drill', '', '', 75.00, 130.00, 'img/produtos/parafusadeira_lithium_drill.webp', 2, '', 0, '2026-09-26'),
(85, 'Tenda Gazebo Branco Polietileno 3x3 Metros Desmontável Camping Praia Pesca', '', 'Usd', 137.60, 187.00, 'img/produtos/tenda_3x3_usd.webp', 6, '', 0, '2026-09-27'),
(86, 'Refletor Super Led 400w Ip67 Holofote Bivolt Prova D\'água', '', '', 22.00, 62.00, 'img/produtos/refletor_400w.webp', 6, '', 2, '2026-09-29'),
(87, 'Ventilador de Coluna Turbo 6 Pás 40cm Ventisol', '', '', 167.33, 218.00, 'img/produtos/ventilador_ventisol_40cm.webp', 1, '', 0, '2026-09-29'),
(88, 'Cadeira de Descanso e Balanço Funtime 18kgs Coruja Maxi Baby', '', '', 158.35, 208.00, 'img/produtos/cadeira_balanco.webp', 6, '', 1, '2026-09-29'),
(89, 'Macaco Hidraulico Jacare 2 Toneladas Jacarezinho Com Maleta Elevi', '', '', 143.38, 195.00, 'img/produtos/macaco_hidraulico_elevi.webp', 2, '', 1, '2026-09-29'),
(90, 'Panela De Arroz Elétrica 10 Xicaras Inox Antiaderente Unitermi', '', '', 133.83, 175.00, 'img/produtos/panela_arroz_unitermi_10x.webp', 1, '', 0, '2026-09-29'),
(91, 'Panela De Arroz Elétrica 5 Xicaras Preta Itatiaia', '', '', 112.00, 162.00, 'img/produtos/panela_arroz_eletrica_itatiaia.jpg', 1, '', 1, '2026-09-29'),
(92, 'Parafusadeira e Furadeira com Impacto 1 Bateria 12v Led de Iluminação e Maleta WAP', '', 'BPFI 12K4', 111.20, 163.00, 'img/produtos/parafusadeira_wap_12v.webp', 2, '', 0, '2026-09-30'),
(93, 'Ventilador Turbo Fresh 40cm 6 Pás 3 Velocidades Mallory', '', '', 118.24, 178.00, 'img/produtos/ventilador_malory_40cm.webp', 1, '', 0, '2026-09-30'),
(94, 'Camera Segurança A28 Yoosee Prova D\'agua Lente Dupla', '', '', 88.70, 140.00, 'img/produtos/camera_seguranca_a28_branca.png', 3, '', 2, '2026-09-30'),
(95, 'Mini Projetor HY320 Android 14 Wi-Fi Bluetooth HDMI USB Preto', '', '', 184.41, 250.00, 'img/produtos/projetor_hy320_vlx.webp', 3, '', 0, '2026-09-30'),
(96, 'kit 2 Câmeras De Segurança Com Resolução De 2mp Visão Noturna Prova d\'água', '', 'App Yoosee', 128.82, 178.00, 'img/produtos/camera_seguranca_kit.png', 3, '', 1, '2026-09-30'),
(97, 'Espremedor Premium Preto Mondial', '', 'E-02', 61.53, 92.00, 'img/produtos/espremedor_mondial.jpg', 1, '', 1, '2026-09-30'),
(98, 'Ventilador de Mesa 30cm Super Power Mondial', '', 'VSP-30-B', 106.03, 150.00, 'img/produtos/ventilador_mondial_30cm.webp', 1, '', 0, '2026-10-01'),
(99, 'Ventilador De Coluna Mallory Éolo 40cm 6 Pás', '', '', 189.90, 240.00, 'img/produtos/ventilador_mallory_eolo_40cm.webp', 1, '', 0, '2026-10-05'),
(100, 'Mini compressor de ar portátil a bateria', '', '', 57.95, 90.00, 'img/produtos/mini_compressor.jpg', 5, '', 0, '2026-10-05'),
(101, 'Patinete Infantil 3 Rodas Led Dobrável Maxi Toys', '', '', 42.90, 93.00, 'img/produtos/patinete_azul_maxitoys.webp', 4, '', 0, '2026-10-06'),
(102, 'Panela Pressao Rochedo Clipso 4,5 Litros Fechamento Externo Seguro Preta', '', '', 180.82, 232.00, 'img/produtos/panela_rochedo_clipso.webp', 6, '', 1, '2026-10-06'),
(103, 'Kit 2 Câmera De Segurança Externa Wi-fi Hd App Icsee Visão Noturna Alarme Luminoso', '', '', 138.59, 188.00, 'img/produtos/kit_2_cameras.webp', 3, '', 1, '2026-10-06'),
(104, 'Parafusadeira e Furadeira Com 2 Baterias 48v e Maleta Maximus', '', '', 84.79, 140.00, 'img/produtos/parafusadeira_maximus_48v.png', 2, '', 0, '2026-10-06'),
(105, 'Patinete Infantil Musical 3 Rodas Kiddy Rosa', '', '', 86.10, 137.00, 'img/produtos/patinete_rosa_maxitoys.webp', 4, '', 1, '2026-10-09'),
(106, 'Macaco Hidraulico Tipo Jacare Até 2 Toneladas Com Caixa Plástica Sparta', '', '', 132.41, 195.00, 'img/produtos/macaco_hidraulico_sparta.webp', 5, '', 2, '2026-10-10'),
(107, 'Furadeira E Parafusadeira 48v HR', '', '', 89.56, 130.00, 'img/produtos/parafusadeira_hr_48v.webp', 2, '', 0, '2026-10-10'),
(108, 'Central Multimídia Universal Mp5 Câmera Bt Espelha Dvd 2 Din ZY', '', 'Marca ZY', 170.51, 220.00, 'img/produtos/multimidia_zy.png', 5, '', 0, '2026-10-10'),
(109, 'Liquidificador Turbo 2,7 Litros 5 Velocidades 900W Preto Mondial', '', 'L-900-W', 92.65, 135.00, 'img/produtos/liquidificador_mondial_l900w.jpg', 1, '', 0, '2026-10-10'),
(110, 'Liquidificador Britânia 2,6 Litros 3 Velocidades Turbo', '', '', 80.91, 135.00, 'img/produtos/liquidificador_britania_3velocidades.avif', 1, '899963921438', 0, '2026-10-10'),
(111, 'Mixer Mallory Trikxer Pratic - 3 EM 1', '', '', 102.00, 162.00, 'img/produtos/mixer_mallory.jpg', 1, '', 1, '2026-10-10'),
(112, 'Mixer Elgin Branco', '', '', 52.90, 95.00, 'img/produtos/mixer_elgin.jpg', 1, '', 1, '2026-10-13'),
(113, 'Parafusadeira Furadeira a Bateria Vonder 3/8\" 12v PFV 120', '', '', 120.60, 170.00, 'img/produtos/parafusadeira_vonder_12v.webp', 2, '', 0, '2026-10-15'),
(114, 'Furadeira e Parafusadeira Sem Fio 48V com 2 Baterias Mackie', '', '', 94.72, 130.00, 'img/produtos/parafusadeira_mackie_48v.jpg', 2, '', 0, '2026-10-16'),
(115, 'Parafusadeira e Furadeira à Bateria 12V Kit de 13 Acessórios e Maleta WAP', '', 'BPF-12K3', 105.90, 160.00, 'img/produtos/parafusadeira_wap_12v_bpf12k3.webp', 2, '', 1, '2026-10-21'),
(116, 'Mini Projetor HY320 Android 13 Wi-Fi Bluetooth HDMI USB Preto', '', '', 203.60, 260.00, 'img/produtos/projetor_hy320_vlx.webp', 3, '', 0, '2026-10-28'),
(117, 'Parafusadeira 1 Bateria 21v Philco PPF21M', '', '', 174.50, 225.00, 'img/produtos/parafusadeira_philco_ppf21m.jpg', 2, '', 1, '2026-10-28'),
(118, 'Patinete Infantil 3 Rodas Com Led Cesto Guidão Ajustável JustFun', '', '', 73.99, 125.00, 'img/produtos/patinete_justfun_azul.jpg', 4, '', 1, '2026-10-28'),
(119, 'Parafusadeira Furadeira 2 Baterias 48v + maleta Elvis', '', '', 69.00, 125.00, 'img/produtos/parafusadeira_elvis_48v.webp', 2, '', 3, '2026-10-28'),
(120, 'Multimídia 7 Polegadas 2 Din Bluetooth Espelhamento via Cabo', '', '', 152.98, 203.00, 'img/produtos/multimidia_fnbrli.png', 5, '', 0, '2026-10-28'),
(121, 'Liquidificador Cadence Hit 2,5 Litros 800W Preto', '', '', 89.90, 135.00, 'img/produtos/liquidificador_cadence_hit800w.webp', 1, '', 1, '2026-10-29'),
(122, 'Liquidificador 12 Velocidades 3 Litros 1400w Britânia', '', 'BLQ1300', 116.99, 167.00, 'img/produtos/liquidificador_britania_blq1300.webp', 1, '', 1, '2026-10-30');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `nome_cliente` varchar(150) NOT NULL,
  `telefone_cliente` varchar(20) NOT NULL DEFAULT '',
  `localizacao` text DEFAULT NULL,
  `data` date NOT NULL,
  `desconto_real` decimal(10,2) DEFAULT NULL,
  `total_venda` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`id`, `cliente_id`, `nome_cliente`, `telefone_cliente`, `localizacao`, `data`, `desconto_real`, `total_venda`) VALUES
(1, 1, 'Aninha Cardoso', '63992972999', '', '2026-09-04', NULL, 200.00),
(2, 2, 'Jose Alves', '63991103810', '', '2026-09-04', NULL, 140.00),
(3, 3, 'Luciano', '63992964293', '', '2026-09-05', NULL, 400.00),
(4, 4, 'Laura', '63992690357', '', '2026-09-07', NULL, 260.00),
(5, 5, 'Wellington', '63981458977', '', '2026-09-08', NULL, 170.00),
(6, 6, 'Jakeline', '63991257224', '', '2026-09-09', NULL, 140.00),
(7, 7, 'Felipe', '63991115047', '', '2026-09-09', NULL, 100.00),
(8, 8, 'Gleysse', '63992701094', '', '2026-09-10', NULL, 250.00),
(9, 9, 'Poliana', '63991309444', 'Setor Universitário', '2026-09-11', NULL, 273.00),
(10, 10, 'Amanda Vieira', '63991332183', 'Taquari', '2026-09-11', NULL, 135.00),
(11, 11, 'Lucas', '6392502008', 'Retirada', '2026-09-11', NULL, 50.00),
(12, 12, 'Elielson', '6392304876', 'https://www.google.com/maps/place/10%C2%B019\'09.2%22S+48%C2%B018\'39.2%22W/@-10.3196301,-48.3124917,623m/data=!3m1!1e3!4m4!3m3!8m2!3d-10.3192275!4d-48.3108795?hl=pt-BR&entry=ttu&g_ep=EgoyMDI2MDkwOS4wIKXMDSoASAFQAw%3D%3D', '2026-09-11', NULL, 300.00),
(13, 13, 'Joel Cardoso', '6392235295', 'https://www.google.com/maps?q=-10.3448776,-48.3311022&z=17&hl=pt-BR', '2026-09-11', NULL, 88.00),
(14, 14, 'Martins', '63992951972', 'Aureny 3', '2026-09-12', NULL, 165.00),
(15, 15, 'Ezequiel Freitas', '91991018377', 'Taquari', '2026-09-12', NULL, 44.00),
(16, 16, 'Doglas', '63981044370', '', '2026-09-12', NULL, 220.00),
(17, 17, 'Cielle', '63984607558', '', '2026-09-12', NULL, 205.00),
(18, 12, 'Elielson', '6392304876', '', '2026-09-13', NULL, 80.00),
(19, 18, 'Klecio Dias', '92994588285', '', '2026-09-15', NULL, 50.00),
(20, 19, 'Valderi (Macarrão)', '63984555597', '', '2026-09-15', NULL, 140.00),
(21, 20, 'Wallison Ferreira', '63984550205', '', '2026-09-15', NULL, 85.00),
(22, 19, 'Valderi (Macarrão)', '63984555597', '', '2026-09-16', 140.00, 140.00),
(23, 22, 'Kayque Lino', '63992154703', '', '2026-09-18', NULL, 64.00),
(24, 23, 'Talyson Lima', '63981167006', '', '2026-09-18', NULL, 85.00),
(25, 21, 'Ingrid', '63981304915', '', '2026-09-17', NULL, 170.00),
(26, 21, 'Ingrid', '63981304915', '', '2026-09-18', NULL, 300.00),
(27, 24, 'Fernando Ribeiro', '6392690552', '', '2026-09-21', NULL, 140.00),
(28, 25, 'Evaristo', '6399372969', '', '2026-09-21', NULL, 170.00),
(29, 26, 'Katiussia', '9981689780', '', '2026-09-21', NULL, 190.00),
(30, 27, 'Sergio', '6392918827', '', '2026-09-21', NULL, 40.00),
(31, 28, 'Matheus', '6392764312', '', '2026-09-21', NULL, 250.00),
(32, 29, 'Cleonice Almeida', '6384109127', '', '2026-09-22', NULL, 150.00),
(33, 30, 'Tiago Souza Wanderley', '6384024471', '', '2026-09-22', NULL, 155.00),
(34, 31, 'Zenny Aires', '63992346099', '', '2026-09-23', NULL, 60.00),
(35, 32, 'Daniel Eliseu', '63984384495', '', '2026-09-24', 75.00, 550.00),
(36, 33, 'Carlos Eduardo', '63991105439', '', '2026-09-24', 0.00, 145.00),
(37, 34, 'Aelso', '63984120306', '', '2026-09-24', 0.00, 140.00),
(38, 35, 'Maikom Douglas', '63991297866', '', '2026-09-24', 0.00, 150.00),
(39, 36, 'Jonatas', '63981186833', '', '2026-09-25', 0.00, 180.00),
(40, 37, 'Iago Silva', '6384049904', '', '2026-09-26', 0.00, 165.00),
(41, 38, 'Nurielle Morais', '6399691394', '', '2026-09-27', 0.00, 55.00),
(42, 39, 'Jerre Lucio', '63991342476', '', '2026-09-27', 0.00, 218.00),
(43, 40, 'Pedro', '6393029988', '', '2026-09-27', 25.00, 300.00),
(44, 41, 'Consumidor', '63984172482', '', '2026-09-29', 0.00, 130.00),
(45, 42, 'Jaime', '63999463311', '', '2026-09-30', 0.00, 198.00),
(46, 43, 'Rogerio', '63984529991', '', '2026-09-30', 0.00, 178.00),
(47, 44, 'Arlle Sandro', '63992568578', '', '2026-09-30', 0.00, 135.00),
(48, 45, 'Lucas', '63985127001', '', '2026-10-05', 0.00, 245.00),
(49, 46, 'Leandro', '63981121529', '', '2026-10-05', 0.00, 150.00),
(50, 47, 'Luciano Dias', '63991044703', '', '2026-10-06', 0.00, 38.00),
(51, 48, 'Regirom', '63991076911', '', '2026-10-06', 0.00, 130.00),
(52, 49, 'Luciano', '63999575987', '', '2026-10-07', 0.00, 163.00),
(53, 50, 'Val', '63992669874', '', '2026-10-07', 0.00, 40.00),
(54, 51, 'Valdemir', '63992479705', '', '2026-10-07', 0.00, 260.00),
(55, 52, 'Eduardo', '86988572401', '', '2026-10-10', 0.00, 135.00),
(56, 53, 'Daniel Clarindo', '63992018633', '', '2026-10-10', 0.00, 60.00),
(57, 54, 'Edicleiton Macedo', '63992745571', '', '2026-10-10', 0.00, 285.00),
(58, 55, 'Dionisio Sylve', '93992390048', '', '2026-10-10', 0.00, 135.00),
(59, 56, 'Fagno Naves', '63981265930', '', '2026-10-10', 0.00, 130.00),
(60, 57, 'Ludmila', '6399816116', '', '2026-10-12', 0.00, 205.00),
(61, 58, 'Consumidor', '63992130692', '', '2026-10-12', 0.00, 205.00),
(62, 59, 'Nay', '63991346858', '', '2026-10-12', 0.00, 135.00),
(63, 60, 'Geziel', '63992350209', '', '2026-10-12', 0.00, 128.00),
(64, 61, 'Kayko Souza', '63981288261', '', '2026-10-12', 0.00, 125.00),
(65, 62, 'Eduardo Menezes', '63992812505', '', '2026-10-12', 0.00, 135.00),
(66, 63, 'Leidiane Batista', '63992740120', '', '2026-10-12', 0.00, 178.00),
(67, 64, 'Dg Divisorias', '6391333718', '', '2026-10-13', 0.00, 138.00),
(68, 65, 'Alana', '63992204026', '', '2026-10-13', 0.00, 40.00),
(69, 66, 'Wenes Alves', '63992655116', '', '2026-10-13', 0.00, 330.00),
(70, 67, 'Cleomar Silva', '63984324028', '', '2026-10-15', 0.00, 95.00),
(71, 68, 'Xavier', '63992521546', '', '2026-10-15', 0.00, 80.00),
(72, 69, 'Josiel Dias', '63984046773', '', '2026-10-15', 0.00, 170.00),
(73, 70, 'Luiz Barros', '63981221561', '', '2026-10-16', 0.00, 130.00),
(74, 71, 'Lucas Leonardo', '11915010700', '', '2026-10-16', 0.00, 260.00),
(75, 72, 'Adegilson França Ferreira', '63981110928', '', '2026-10-20', 0.00, 165.00),
(76, 73, 'Pedro Lucas', '63992154494', '', '2026-10-20', 0.00, 200.00),
(77, 74, 'Junior', '63991223618', '', '2026-10-20', 0.00, 150.00),
(78, 75, 'Consumidor', '63991131677', '', '2026-10-21', 0.00, 210.00),
(79, 76, 'Felipe', '63981202174', '', '2026-10-21', 0.00, 40.00),
(80, 77, 'Vinicius Albuquerque', '63992372322', '', '2026-10-21', 0.00, 160.00),
(81, 78, 'Márcia Tereza', '63981386702', '', '2026-10-22', 0.00, 145.00),
(82, 79, 'Ellen Ricardo', '63984687806', '', '2026-10-28', 0.00, 160.00),
(83, 80, 'Cledison ivanovic', '63984889307', '', '2026-10-28', 0.00, 190.00),
(84, 81, 'Marlon', '63991386108', '', '2026-10-28', 0.00, 127.00),
(85, 52, 'Eduardo', '86988572401', '', '2026-10-27', 0.00, 220.00),
(86, 82, 'Wesley', '63992220217', '', '2026-10-31', 0.00, 200.00),
(87, 83, 'Wandenson Nunes', '62986240840', '', '2026-11-01', 0.00, 250.00),
(88, 84, 'Daniel Borges', '63992139824', '', '2026-11-02', 0.00, 40.00),
(89, 85, 'Altyno', '63991042731', '', '2026-11-01', 0.00, 162.00),
(90, 86, 'Mateus', '63981101969', '', '2026-11-02', 0.00, 40.00),
(91, 87, 'Madson', '63984446462', '', '2026-11-04', 0.00, 60.00),
(92, 88, 'Sebastião Ferreira', '63985156397', '', '2026-11-04', 0.00, 190.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `venda_itens`
--

CREATE TABLE `venda_itens` (
  `id` int(10) UNSIGNED NOT NULL,
  `venda_id` int(10) UNSIGNED NOT NULL,
  `ordem` int(11) NOT NULL DEFAULT 1,
  `produto_id` int(10) UNSIGNED NOT NULL,
  `nome_produto` varchar(255) NOT NULL,
  `compra_id` int(10) UNSIGNED DEFAULT NULL,
  `quantidade` int(11) NOT NULL DEFAULT 1,
  `preco_unitario` decimal(10,2) NOT NULL DEFAULT 0.00,
  `preco_custo_unitario` decimal(10,2) DEFAULT NULL,
  `preco_cadastro` decimal(10,2) DEFAULT NULL,
  `valor_desconto` decimal(10,2) DEFAULT NULL,
  `preco_unitario_com_desc` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `venda_itens`
--

INSERT INTO `venda_itens` (`id`, `venda_id`, `ordem`, `produto_id`, `nome_produto`, `compra_id`, `quantidade`, `preco_unitario`, `preco_custo_unitario`, `preco_cadastro`, `valor_desconto`, `preco_unitario_com_desc`) VALUES
(1, 1, 1, 4, 'Liquidificador Britânia 2,7 Litros 4 Velocidades Turbo', NULL, 1, 127.50, NULL, NULL, NULL, NULL),
(2, 1, 2, 9, 'Sanduicheira Grill Elétrica Antiaderente Sumay', NULL, 1, 72.50, NULL, NULL, NULL, NULL),
(3, 2, 1, 50, 'Parafusadeira Furadeira Sem Fio 48 2 Baterias 340w C/brocas', NULL, 1, 140.00, NULL, NULL, NULL, NULL),
(4, 3, 1, 3, 'Fritadeira Elétrica Air Fryer Wap 5,2 Litros Com Revestimento Antiaderente', NULL, 1, 270.00, NULL, NULL, NULL, NULL),
(5, 3, 2, 7, 'Panela Elétrica De Arroz 6 Xícaras Agratto', NULL, 1, 130.00, NULL, NULL, NULL, NULL),
(6, 4, 1, 50, 'Parafusadeira Furadeira Sem Fio 48 2 Baterias 340w C/brocas', NULL, 1, 132.50, NULL, NULL, NULL, NULL),
(7, 4, 2, 5, 'Liquidificador Mondial 2,2 Litros 3 Velocidades Turbo Preto', NULL, 1, 127.50, NULL, NULL, NULL, NULL),
(8, 5, 1, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', 1, 1, 170.00, NULL, NULL, NULL, NULL),
(10, 6, 1, 52, 'Caixa De Som Bluetooth Grande Alto Falante 8 1000w Pmpo Saida 10w Heruz 711A', 5, 1, 140.00, NULL, NULL, NULL, NULL),
(11, 7, 1, 54, 'Câmera De Segurança Wifi Externa Hd Infravermelho Prova D\'água Preta Jortan', 7, 1, 100.00, NULL, NULL, NULL, NULL),
(12, 8, 1, 51, 'Projetor HY320 Android 12 4KUltra HD HDMI Wifi Bluetooth Alto Falante', 3, 1, 250.00, NULL, NULL, NULL, NULL),
(13, 9, 1, 1, 'Panela De Pressão Elétrica 5 Litros Painel Digital Itatiaia', 13, 1, 273.00, NULL, NULL, NULL, NULL),
(14, 10, 1, 4, 'Liquidificador Britânia 2,7 Litros 4 Velocidades Turbo', 12, 1, 135.00, NULL, NULL, NULL, NULL),
(15, 11, 1, 12, 'Kit Ferramentas Chave 27 Peças L 1/2\' Soquete', 15, 1, 50.00, NULL, NULL, NULL, NULL),
(16, 12, 1, 2, 'Fritadeira Air Fryer 4,5 Litros Widemax Com Interior De Alumínio 1500w Midea', 16, 1, 300.00, NULL, NULL, NULL, NULL),
(18, 13, 1, 37, 'Som Automotivo Carro Mp3 Bluetooth Rádio Fm Com Controle', 17, 1, 88.00, NULL, NULL, NULL, NULL),
(19, 14, 1, 31, 'Caixa de Som Bluetooth com Controle Remoto/Microfone/RádioFM/USB/SD First Option DS14', 4, 1, 165.00, NULL, NULL, NULL, NULL),
(20, 15, 1, 15, 'Jogo Kit Ferramentas Chave Catraca Soquete 3,8\' 40 Peças Sparta', 29, 1, 44.00, NULL, NULL, NULL, NULL),
(21, 16, 1, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', 2, 1, 220.00, NULL, NULL, NULL, NULL),
(22, 17, 1, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', 2, 1, 205.00, NULL, NULL, NULL, NULL),
(23, 18, 1, 8, 'Sanduicheira Misteira Tostequeira Mini Grill Multilaser', 24, 1, 80.00, NULL, NULL, NULL, NULL),
(24, 19, 1, 46, 'Piscina Inflável Redonda 100 Litros 3 Aneis', 52, 1, 50.00, NULL, NULL, NULL, NULL),
(25, 20, 1, 56, 'Parafusadeira Furadeira 2 Baterias 48v Kit Completo com Bits, Brocas, Soquetes e Maleta Alobrax', 10, 1, 140.00, NULL, NULL, NULL, NULL),
(26, 21, 1, 9, 'Sanduicheira Grill Elétrica Antiaderente Sumay', 21, 1, 85.00, NULL, NULL, NULL, NULL),
(28, 23, 1, 35, 'Relógio Smartwatch T800 Ultra 2 Big 7 Pulseiras Tela 2.19 polegadas', 42, 1, 64.00, NULL, NULL, NULL, NULL),
(29, 24, 1, 71, 'Som Automotivo Mp3 Rádio USB Bluetooth SD Card', 74, 1, 85.00, NULL, NULL, NULL, NULL),
(30, 25, 1, 6, 'Panela De Arroz Elétrica 10 Xícaras Inox Elgin', 23, 1, 170.00, NULL, NULL, NULL, NULL),
(31, 26, 1, 63, 'Panela De Pressão Elétrica 5 Litros Essencial Inox Itatiaia', 63, 1, 300.00, NULL, NULL, NULL, NULL),
(32, 27, 1, 50, 'Parafusadeira Furadeira Sem Fio 48 2 Baterias 340w C/brocas IndoBest', 73, 1, 140.00, NULL, NULL, NULL, NULL),
(33, 28, 1, 16, 'Kit de Ferramentas Jogo Chave Catraca 1/2 do 8 ao 32mm', 31, 1, 170.00, NULL, NULL, NULL, NULL),
(34, 29, 1, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', 64, 1, 190.00, NULL, NULL, NULL, NULL),
(35, 30, 1, 19, 'Ferramenta Kit Chaves Catraca Reversivel Soquetes 46 Pecas Maleta', 33, 1, 40.00, NULL, NULL, NULL, NULL),
(36, 31, 1, 51, 'Projetor HY320 Android 12 4KUltra HD HDMI Wifi Bluetooth Alto Falante', 57, 1, 250.00, NULL, NULL, NULL, NULL),
(37, 32, 1, 7, 'Panela Elétrica De Arroz 6 Xícaras Agratto', 77, 1, 150.00, NULL, NULL, NULL, NULL),
(38, 33, 1, 64, 'Ventilador de Coluna Silencioso Design Slim Preto', 66, 1, 155.00, NULL, NULL, NULL, NULL),
(39, 34, 1, 10, 'Chaleira Elétrica 2 litros Mokfa', 25, 1, 60.00, NULL, NULL, NULL, NULL),
(44, 35, 1, 53, 'Câmera Externa Ip A Prova D\'água Wifi Dupla Visão Noturna ItBlue', 6, 1, 125.00, NULL, NULL, 15.00, NULL),
(45, 35, 2, 58, 'Câmera Segurança Ip Externa Wifi A28 À Prova Dágua App Icsee', 55, 1, 125.00, NULL, NULL, 15.00, NULL),
(46, 35, 3, 61, 'Câmera Externa Wifi Prova D\'água ItBlue', 60, 2, 85.00, NULL, NULL, 15.00, NULL),
(47, 35, 4, 66, 'Câmera de Segurança Interna/Externa Wi-Fi Preta Jortan', 68, 1, 130.00, NULL, NULL, 15.00, NULL),
(48, 36, 1, 67, 'Ventilador 30cm 6 pás 3 velocidades Turbo 6 Ventisol', 69, 1, 145.00, NULL, 145.00, 0.00, NULL),
(57, 22, 1, 50, 'Parafusadeira Furadeira Sem Fio 48 2 Baterias 340w C/brocas IndoBest', 9, 1, 45.00, NULL, 140.00, 0.00, 45.00),
(58, 22, 2, 21, 'Parafusadeira Furadeira 1 Bateria 12v', 35, 1, 95.00, NULL, 95.00, 0.00, 95.00),
(59, 37, 1, 73, 'Liquidificador Philco 12 Velocidades 3 Litros 1200w', 80, 1, 140.00, NULL, 150.00, 0.00, 140.00),
(60, 38, 1, 6, 'Panela De Arroz Elétrica 10 Xícaras Inox Elgin', 78, 1, 150.00, NULL, 175.00, 0.00, 150.00),
(61, 39, 1, 74, 'Multimidia 7 Polegadas Mp5 Espelhamento Bluetooth Usb Sd com Controle Remoto', 81, 1, 180.00, NULL, 185.00, 0.00, 180.00),
(62, 40, 1, 52, 'Caixa De Som Bluetooth Grande Alto Falante 8 1000w Pmpo Saida 10w Heruz 711A', 62, 1, 165.00, NULL, 165.00, 0.00, 165.00),
(63, 41, 1, 29, 'Caixa de Som Bluetooth 20w Vermelha', 39, 1, 55.00, NULL, 55.00, 0.00, 55.00),
(64, 42, 1, 82, 'Ventilador de Coluna Turbo 6 Pás 50cm Ventisol', 92, 1, 218.00, NULL, 218.00, 0.00, 218.00),
(65, 43, 1, 51, 'Projetor HY320 Android 12 4KUltra HD HDMI Wifi Bluetooth Alto Falante', 76, 1, 260.00, NULL, 260.00, 12.50, 247.50),
(66, 43, 2, 34, 'Relógio Smartwatch 1 Pulseira Tela 2.2 polegadas', 41, 1, 65.00, NULL, 65.00, 12.50, 52.50),
(67, 44, 1, 84, 'Parafusadeira Furadeira 2 Baterias 48v Com Maleta Lithium Drill', 94, 1, 130.00, NULL, 130.00, 0.00, 130.00),
(68, 45, 1, 84, 'Parafusadeira Furadeira 2 Baterias 48v Com Maleta Lithium Drill', 94, 1, 130.00, 75.00, 130.00, 0.00, 130.00),
(69, 45, 2, 72, 'Piscina Inflável Redonda 100 Litros 3 Aneis Fundo Do Mar VariTudo', 79, 1, 68.00, 38.51, 68.00, 0.00, 68.00),
(70, 46, 1, 96, 'kit 2 Câmeras De Segurança Com Resolução De 2mp Visão Noturna Prova d\'água', 107, 1, 178.00, 128.82, 178.00, 0.00, 178.00),
(72, 47, 1, 4, 'Liquidificador Britânia 2,7 Litros 4 Velocidades Turbo', 56, 1, 135.00, 97.07, 135.00, 0.00, 135.00),
(73, 48, 1, 95, 'Mini Projetor HY320 Android 14 Wi-Fi Bluetooth HDMI USB Preto', 110, 1, 245.00, 195.00, 250.00, 0.00, 245.00),
(74, 49, 1, 31, 'Caixa de Som Bluetooth com Controle Remoto/Microfone/RádioFM/USB/SD First Option DS14', 82, 1, 165.00, 85.01, 165.00, 15.00, 150.00),
(75, 50, 1, 13, 'Chave Tigre de Boca Multifuncional 360 Graus', 27, 1, 38.00, 24.70, 38.00, 0.00, 38.00),
(76, 51, 1, 104, 'Parafusadeira e Furadeira Com 2 Baterias 48v e Maleta Maximus', 118, 1, 130.00, 84.79, 130.00, 0.00, 130.00),
(77, 52, 1, 92, 'Parafusadeira e Furadeira com Impacto 1 Bateria 12v Led de Iluminação e Maleta WAP', 103, 1, 163.00, 111.20, 163.00, 0.00, 163.00),
(78, 53, 1, 79, 'Extensão Elétrica De 10 M Com 3 Tomadas Bivolt Preta', 86, 1, 40.00, 18.75, 40.00, 0.00, 40.00),
(79, 54, 1, 95, 'Mini Projetor HY320 Android 14 Wi-Fi Bluetooth HDMI USB Preto', 110, 1, 260.00, 195.00, 250.00, 0.00, 260.00),
(80, 55, 1, 5, 'Liquidificador Mondial 2,2 Litros 3 Velocidades Turbo Preto', 22, 1, 135.00, 93.68, 135.00, 0.00, 135.00),
(81, 56, 1, 15, 'Jogo Kit Ferramentas Chave Catraca Soquete 3,8\' 40 Peças Sparta', 91, 1, 60.00, 35.94, 60.00, 0.00, 60.00),
(82, 57, 1, 77, 'Panela de Pressão Elétrica Eletrozon 1100W de 6 Litros com Revestimento Antiaderente e Desligamento Automático', 88, 1, 285.00, 215.00, 285.00, 0.00, 285.00),
(83, 58, 1, 4, 'Liquidificador Britânia 2,7 Litros 4 Velocidades Turbo', 56, 1, 135.00, 97.07, 135.00, 0.00, 135.00),
(84, 59, 1, 107, 'Furadeira E Parafusadeira 48v HR', 119, 1, 130.00, 89.56, 130.00, 0.00, 130.00),
(85, 60, 1, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', 70, 1, 205.00, 139.37, 180.00, 0.00, 205.00),
(86, 61, 1, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', 65, 1, 205.00, 144.91, 210.00, 0.00, 205.00),
(87, 62, 1, 110, 'Liquidificador Britânia 2,6 Litros 3 Velocidades Turbo', 125, 1, 135.00, 80.91, 135.00, 0.00, 135.00),
(88, 63, 1, 57, 'Parafusadeira Furadeira 2 Baterias 36v Com Maleta e Acessórios B-Tek', 14, 1, 128.00, 77.52, 128.00, 0.00, 128.00),
(89, 64, 1, 49, 'Liquidificador Mondial 2,2 Litros 3 Velocidades Turbo Branco', 54, 1, 125.00, 89.00, 135.00, 0.00, 125.00),
(90, 65, 1, 109, 'Liquidificador Turbo 2,7 Litros 5 Velocidades 900W Preto Mondial', 124, 1, 135.00, 92.65, 135.00, 0.00, 135.00),
(91, 66, 1, 93, 'Ventilador Turbo Fresh 40cm 6 Pás 3 Velocidades Mallory', 104, 1, 178.00, 118.24, 178.00, 0.00, 178.00),
(92, 67, 1, 75, 'Kit Par 2 Radio Baofeng 777s Walk Talk Comunicador 16 Canais', 84, 1, 138.00, 87.98, 138.00, 0.00, 138.00),
(93, 68, 1, 32, 'Fone De Ouvido Sem Fio Bluetooth', 40, 1, 40.00, 21.76, 40.00, 0.00, 40.00),
(94, 69, 1, 76, 'Fritadeira Elétrica Air Fryer Multi 3 Litros 1200W Preta', 85, 1, 180.00, 159.90, 210.00, 0.00, 180.00),
(95, 69, 2, 90, 'Panela De Arroz Elétrica 10 Xicaras Inox Antiaderente Unitermi', 100, 1, 150.00, 133.83, 175.00, 0.00, 150.00),
(96, 70, 1, 101, 'Patinete Infantil 3 Rodas Led Dobrável Maxi Toys', 115, 1, 95.00, 42.90, 93.00, 0.00, 95.00),
(97, 71, 1, 62, 'Sanduicheira Elétrica e Grill Elétrico 2 em 1 Antiaderente Multiuso 750W Preta', 61, 1, 80.00, 56.00, 80.00, 0.00, 80.00),
(98, 72, 1, 113, 'Parafusadeira Furadeira a Bateria Vonder 3/8\" 12v PFV 120', 130, 1, 170.00, 120.60, 170.00, 0.00, 170.00),
(99, 73, 1, 114, 'Furadeira e Parafusadeira Sem Fio 48V com 2 Baterias Mackie', 131, 1, 130.00, 94.72, 130.00, 0.00, 130.00),
(100, 74, 1, 51, 'Projetor HY320 Android 12 4KUltra HD HDMI Wifi Bluetooth Alto Falante', 127, 1, 260.00, 203.60, 260.00, 0.00, 260.00),
(101, 75, 1, 55, 'Caixa De Som Bluetooth Grande Alto Falante 8 1000w Pmpo Saida 10w Heruz 712A', 8, 1, 165.00, 99.00, 165.00, 0.00, 165.00),
(102, 76, 1, 108, 'Central Multimídia Universal Mp5 Câmera Bt Espelha Dvd 2 Din ZY', 121, 1, 200.00, 170.00, 220.00, 0.00, 200.00),
(103, 77, 1, 20, 'Furadeira De Impacto Mondial', 34, 1, 150.00, 118.00, 150.00, 0.00, 150.00),
(104, 78, 1, 64, 'Ventilador de Coluna Silencioso Design Slim Preto Hepta', 134, 1, 150.00, 99.99, 150.00, 0.00, 150.00),
(105, 78, 2, 26, 'Caixa de Som Bluetooth USB/SD Card 20W Vermelha', 36, 1, 60.00, 33.00, 60.00, 0.00, 60.00),
(106, 79, 1, 45, 'Brinquedo Arco e Flecha com Alvo', 51, 1, 40.00, 28.82, 40.00, 0.00, 40.00),
(107, 80, 1, 85, 'Tenda Gazebo Branco Polietileno 3x3 Metros Desmontável Camping Praia Pesca', 95, 1, 160.00, 137.60, 187.00, 0.00, 160.00),
(108, 81, 1, 98, 'Ventilador de Mesa 30cm Super Power Mondial', 109, 1, 145.00, 106.03, 145.00, 0.00, 145.00),
(109, 82, 1, 6, 'Panela De Arroz Elétrica 10 Xícaras Inox Elgin', 101, 1, 160.00, 125.00, 175.00, 0.00, 160.00),
(110, 83, 1, 87, 'Ventilador de Coluna Turbo 6 Pás 40cm Ventisol', 97, 1, 190.00, 167.33, 218.00, 0.00, 190.00),
(111, 84, 1, 100, 'Mini compressor de ar portátil a bateria', 112, 1, 87.00, 57.95, 90.00, 0.00, 87.00),
(112, 84, 2, 19, 'Ferramenta Kit Chaves Catraca Reversivel Soquetes 46 Pecas Maleta', 33, 1, 40.00, 20.00, 40.00, 0.00, 40.00),
(113, 85, 1, 99, 'Ventilador De Coluna Mallory Éolo 40cm 6 Pás', 111, 1, 220.00, 189.90, 240.00, 0.00, 220.00),
(114, 86, 1, 24, 'Projetor HY300 Android 11 4KUltra HD HDMI Wifi Bluetooth Alto Falante', 142, 1, 200.00, 143.95, 220.00, 0.00, 200.00),
(115, 87, 1, 116, 'Mini Projetor HY320 Android 13 Wi-Fi Bluetooth HDMI USB Preto', 135, 1, 250.00, 203.60, 260.00, 0.00, 250.00),
(116, 88, 1, 59, 'Fone De Ouvido Sem Fio Bluetooth Preto', 58, 1, 40.00, 16.15, 40.00, 0.00, 40.00),
(117, 89, 1, 6, 'Panela De Arroz Elétrica 10 Xícaras Inox Elgin', 101, 1, 162.00, 125.00, 175.00, 0.00, 162.00),
(118, 90, 1, 19, 'Ferramenta Kit Chaves Catraca Reversivel Soquetes 46 Pecas Maleta', 33, 1, 40.00, 20.00, 40.00, 0.00, 40.00),
(119, 91, 1, 10, 'Chaleira Elétrica 2 litros Mokfa', 25, 1, 60.00, 31.40, 60.00, 0.00, 60.00),
(120, 92, 1, 120, 'Multimídia 7 Polegadas 2 Din Bluetooth Espelhamento via Cabo', 139, 1, 190.00, 152.98, 203.00, 0.00, 190.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `venda_pagamentos`
--

CREATE TABLE `venda_pagamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `venda_id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `venda_pagamentos`
--

INSERT INTO `venda_pagamentos` (`id`, `venda_id`, `tipo`, `valor`) VALUES
(10716, 1, 'Pix', 100.00),
(10717, 1, 'Dinheiro', 100.00),
(10718, 2, 'Pix', 140.00),
(10719, 3, 'Dinheiro', 400.00),
(10720, 4, 'Pix', 260.00),
(10721, 5, 'Pix', 170.00),
(10722, 6, 'Dinheiro', 100.00),
(10723, 6, 'Pix', 40.00),
(10724, 7, 'Pix', 100.00),
(10725, 8, 'Pix', 250.00),
(10726, 9, 'Pix', 273.00),
(10727, 10, 'Pix', 135.00),
(10728, 11, 'Pix', 50.00),
(10729, 12, 'Pix', 300.00),
(10730, 13, 'Pix', 88.00),
(10731, 14, 'Dinheiro', 165.00),
(10732, 15, 'Pix', 44.00),
(10733, 16, 'Pix', 220.00),
(10734, 17, 'Pix', 204.98),
(10735, 18, 'Pix', 80.00),
(10736, 19, 'Pix', 50.00),
(10737, 20, 'Pix', 140.00),
(10738, 21, 'Pix', 85.00),
(10739, 22, 'Dinheiro', 140.00),
(10740, 23, 'Cartão Crédito', 64.00),
(10741, 24, 'Pix', 88.00),
(10742, 25, 'Pix', 170.00),
(10743, 26, 'Pix', 300.00),
(10744, 27, 'Pix', 150.00),
(10745, 28, 'Cartão Crédito', 160.00),
(10746, 29, 'Pix', 190.00),
(10747, 30, 'Pix', 40.00),
(10748, 31, 'Pix', 250.00),
(10749, 32, 'Dinheiro', 150.00),
(10750, 33, 'Pix', 155.00),
(10751, 34, 'Pix', 60.00),
(10752, 35, 'Pix', 550.00),
(10753, 36, 'Pix', 145.00),
(10754, 37, 'Pix', 140.00),
(10755, 38, 'Pix', 150.00),
(10756, 39, 'Pix', 180.00),
(10757, 40, 'Pix', 165.00),
(10758, 41, 'Pix', 55.00),
(10759, 42, 'Pix', 218.00),
(10760, 43, 'Pix', 300.00),
(10761, 44, 'Dinheiro', 130.00),
(10762, 45, 'Dinheiro', 198.00),
(10763, 46, 'Cartão Débito', 178.00),
(10764, 47, 'Pix', 135.00),
(10765, 48, 'Dinheiro', 245.00),
(10766, 49, 'Dinheiro', 150.00),
(10767, 50, 'Dinheiro', 38.00),
(10768, 51, 'Dinheiro', 130.00),
(10769, 52, 'Pix', 163.00),
(10770, 53, 'Pix', 40.00),
(10771, 54, 'Pix', 260.00),
(10772, 55, 'Pix', 135.00),
(10773, 56, 'Pix', 60.00),
(10774, 57, 'Pix', 285.00),
(10775, 58, 'Pix', 135.00),
(10776, 59, 'Pix', 130.00),
(10777, 60, 'Pix', 205.00),
(10778, 61, 'Dinheiro', 205.00),
(10779, 62, 'Dinheiro', 100.00),
(10780, 62, 'Pix', 35.00),
(10781, 63, 'Pix', 128.00),
(10782, 64, 'Pix', 125.00),
(10783, 65, 'Dinheiro', 135.00),
(10784, 66, 'Pix', 178.00),
(10785, 67, 'Pix', 138.00),
(10786, 68, 'Dinheiro', 40.00),
(10787, 69, 'Pix', 330.00),
(10788, 70, 'Dinheiro', 95.00),
(10789, 71, 'Pix', 80.00),
(10790, 72, 'Pix', 170.00),
(10791, 73, 'Pix', 130.00),
(10792, 74, 'Pix', 260.00),
(10793, 75, 'Pix', 165.00),
(10794, 76, 'Pix', 200.00),
(10795, 77, 'Pix', 150.00),
(10796, 78, 'Pix', 210.00),
(10797, 79, 'Cartão Débito', 40.00),
(10798, 80, 'Pix', 160.00),
(10799, 81, 'Dinheiro', 145.00),
(10800, 82, 'Pix', 160.00),
(10801, 83, 'Pix', 190.00),
(10802, 84, 'Pix', 127.00),
(10803, 85, 'Pix', 220.00),
(10804, 86, 'Dinheiro', 200.00),
(10805, 87, 'Pix', 250.00),
(10806, 88, 'Pix', 40.00),
(10807, 89, 'Pix', 162.00),
(10808, 90, 'Pix', 40.00),
(10809, 91, 'Pix', 60.00),
(10810, 92, 'Cartão Crédito', 190.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_compras_produto` (`produto_id`),
  ADD KEY `idx_compras_fornecedor` (`fornecedor_id`);

--
-- Índices de tabela `compra_pagamentos`
--
ALTER TABLE `compra_pagamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_compra_pag_compra` (`compra_id`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_produtos_categoria` (`categoria_id`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vendas_cliente` (`cliente_id`);

--
-- Índices de tabela `venda_itens`
--
ALTER TABLE `venda_itens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_venda_itens_venda` (`venda_id`),
  ADD KEY `idx_venda_itens_produto` (`produto_id`),
  ADD KEY `idx_venda_itens_compra` (`compra_id`);

--
-- Índices de tabela `venda_pagamentos`
--
ALTER TABLE `venda_pagamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_venda_pag_venda` (`venda_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de tabela `compra_pagamentos`
--
ALTER TABLE `compra_pagamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5490;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de tabela `venda_itens`
--
ALTER TABLE `venda_itens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de tabela `venda_pagamentos`
--
ALTER TABLE `venda_pagamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10811;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_compras_fornecedor` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id`),
  ADD CONSTRAINT `fk_compras_produto` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`);

--
-- Restrições para tabelas `compra_pagamentos`
--
ALTER TABLE `compra_pagamentos`
  ADD CONSTRAINT `fk_compra_pag_compra` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_produtos_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Restrições para tabelas `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Restrições para tabelas `venda_itens`
--
ALTER TABLE `venda_itens`
  ADD CONSTRAINT `fk_venda_itens_compra` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_venda_itens_produto` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  ADD CONSTRAINT `fk_venda_itens_venda` FOREIGN KEY (`venda_id`) REFERENCES `vendas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `venda_pagamentos`
--
ALTER TABLE `venda_pagamentos`
  ADD CONSTRAINT `fk_venda_pag_venda` FOREIGN KEY (`venda_id`) REFERENCES `vendas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
