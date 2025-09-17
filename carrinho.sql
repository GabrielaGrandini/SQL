-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 15:56
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `carrinho`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `dataCadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `email`, `senha`, `cpf`, `endereco`, `cidade`, `estado`, `cep`, `dataCadastro`) VALUES
(1, 'João Silva', 'joãoSilva@gmail.com', '@mudar', '123.456.789-00', 'Rua das Flores, 123', 'São Paulo', 'SP', '01001-000', '1990-01-01 00:00:00'),
(2, 'Maria Oliveria', 'maria.oliveira@gmail.com', '12345', '987.654.321-00', 'Avenida Paulista, 456', 'São Paulo', 'SP', '01310-100', '1985-05-15 00:00:00'),
(3, 'Carlos Pereira', 'carlos.pereira@gmail.com', 'Sen1283', '111.222.333-44', 'Rua do Sol, 789', 'Rio de Janeiro', 'RJ', '20001-000', '1978-03-22 00:00:00'),
(4, 'Ana Souza', 'ana.souuuza@gmal.com', 'SenhaForte_@', '555.666.777-88', 'Rua das Palmeiras, 101', 'Belo Horizonte', 'MG', '30130-141', '1992-07-07 00:00:00'),
(5, 'Pedro Lima', 'pedro.lima21@gmail.com', '3245236BFS', '222.333.444-55', 'Rua da Lua, 202', 'Curitiba', 'PR', '80001-000', '1998-11-12 00:00:00'),
(6, 'Laura Costa', 'laura.c0st@gmail.com', '23092025', '333.444.555-66', 'Rua do Mar, 303', 'Salvador', 'BA', '40001-000', '1995-08-29 00:00:00'),
(7, 'Lucas Santos', 'lucas.santoso@gmail.com', 'Mud345', '444.555.666-77', 'Rua das Estrelas, 404', 'Fortaleza', 'CE', '60001-000', '1983-06-04 00:00:00'),
(8, 'Beatriz Almeida', 'beatrizaAlmeida@gmail.com', 'S3nMudarForte', '666.777.888-99', 'Rua do Vento, 505', 'Recife', 'PE', '50001-000', '1999-02-18 00:00:00'),
(9, 'Rafael Rocha', 'rafael.rocha435@gmail.com', 'EuC153s', '777.888.999-00', 'Rua do Tempo, 606', 'Porto Alegre', 'RS', '90001-000', '1980-04-30 00:00:00'),
(10, 'Fernada Gomes', 'fernanda.gomes@gmail.com', 'senhafortissima2345', '888.999.000-11', 'Rua da Paz, 707', 'Brasília', 'DF', '70001-000', '1987-12-21 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itenspedido`
--

CREATE TABLE `itenspedido` (
  `id_itemPedido` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_produtos` int(11) DEFAULT NULL,
  `quantidade` int(100) DEFAULT NULL,
  `precoUnitario` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itenspedido`
--

INSERT INTO `itenspedido` (`id_itemPedido`, `id_pedido`, `id_produtos`, `quantidade`, `precoUnitario`) VALUES
(1, 1, 1, 1, 60),
(2, 2, 2, 1, 90),
(3, 3, 3, 1, 129),
(4, 4, 4, 1, 50),
(5, 5, 5, 1, 70),
(6, 6, 9, 1, 30),
(7, 7, 9, 1, 30),
(8, 8, 7, 1, 120),
(9, 9, 5, 1, 70),
(10, 10, 4, 1, 50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `dataPedido` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `ValorTotal` double DEFAULT NULL,
  `enderecoEntrega` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `dataPedido`, `status`, `ValorTotal`, `enderecoEntrega`) VALUES
(1, 1, '2025-03-09 00:00:00', 'Entregue', 59, 'Rua das Flores, 123'),
(2, 2, '2025-09-17 00:00:00', 'Em andamento', 89, 'Avenida Paulista, 456'),
(3, 3, '2023-12-12 00:00:00', 'Entregue', 129, 'Rua do Sol, 789'),
(4, 4, '2025-09-01 00:00:00', 'A caminho', 49, 'Rua das Palmeiras, 101'),
(5, 6, '2024-01-01 00:00:00', 'Entregue', 69, 'Rua do Mar, 303'),
(6, 5, '2024-10-10 00:00:00', 'Entregue', 30, 'Rua da Lua, 202'),
(7, 7, '2025-09-08 00:00:00', 'A caminho', 30, 'Rua das Estrelas, 404'),
(8, 8, '2025-01-09 00:00:00', 'Entregue', 120, 'Rua do Vento, 505'),
(9, 10, '2023-12-25 00:00:00', 'Entregue', 69, 'Rua da Paz, 707'),
(10, 9, '2025-02-20 00:00:00', 'Entregue', 49, 'Rua do Tempo, 606');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produtos` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `sku` varchar(9) DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `dataCriacao` datetime DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produtos`, `nome`, `preco`, `sku`, `estoque`, `dataCriacao`, `descricao`) VALUES
(1, 'Vestido Floral de Verão', 59, 'VFV-001', 150, '2023-01-19 00:00:00', 'Vestido leve com estampa floral, ideal para dias quentes'),
(2, 'Jaqueta Jeans Feminina', 89, 'JJF-002', 200, '2023-02-20 00:00:00', 'Jaqueta jeans clássica com botões de metal e bolsos frontais. Perfeita para compor looks casuais.'),
(3, 'Tênis Esportivo Branco', 129, 'TEB-003', 300, '2023-05-04 00:00:00', 'Tênis confortável e estiloso, ideal para atividades físicas ou uso diário. Solado emborrachado e acolchoamento no calcanhar.'),
(4, 'Blusa de Seda Preta', 49, 'BSP-004', 100, '2021-04-30 00:00:00', 'Blusa elegante em seda, com mangas longas e corte reto. Ideal para eventos formais.'),
(5, 'Calça Legging de Yoga', 69, 'CLY-005', 300, '2022-05-05 00:00:00', ' Calça legging feita de tecido elástico e respirável, perfeita para yoga e exercícios. Cintura alta e modelagem slim.'),
(6, ' Saia Lápis de Couro', 99, 'SLC-006', 10, '2024-10-06 00:00:00', 'Saia lápis em couro sintético, com zíper na lateral. Estilo moderno e sofisticado.'),
(7, 'Óculos de Sol Aviador', 120, 'OSA-007', 120, '2023-07-10 00:00:00', ' Óculos de sol no estilo aviador, com lentes escuras e armação metálica. Ideal para proteção e estilo.'),
(8, 'Bolsa Tote de Lona', 79, 'BTL-008', 180, '2024-06-06 00:00:00', 'Bolsa espaçosa em lona resistente, com alças longas e fecho de botão magnético. Perfeita para o dia a dia.'),
(9, 'Camiseta Básica Branca', 30, 'CBB-009', 500, '2023-07-23 00:00:00', 'Camiseta de algodão com corte básico e gola redonda. Ideal para combinar com diversas peças.'),
(10, 'Jaqueta de Couro Masculina', 199, 'JCM-010', 200, '0000-00-00 00:00:00', 'Jaqueta de couro com design clássico, bolsos frontais e forro interno. Estilo e proteção para o inverno.');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD PRIMARY KEY (`id_itemPedido`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_produtos` (`id_produtos`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produtos`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  MODIFY `id_itemPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produtos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD CONSTRAINT `itenspedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`),
  ADD CONSTRAINT `itenspedido_ibfk_2` FOREIGN KEY (`id_produtos`) REFERENCES `produtos` (`id_produtos`);

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
