-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 20:54
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
-- Banco de dados: `marketing`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `campanha`
--

CREATE TABLE `campanha` (
  `id_campanha` int(11) NOT NULL,
  `nome_campanha` varchar(50) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `orcamento` float DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_midia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `campanha`
--

INSERT INTO `campanha` (`id_campanha`, `nome_campanha`, `data_inicio`, `data_fim`, `orcamento`, `id_cliente`, `id_midia`) VALUES
(1, 'Doces delícias', '2025-09-09', '2025-12-31', 2000, 1, 2),
(2, 'Roupas sem furos', '2022-05-05', '2023-05-05', 6000, 2, 5),
(3, 'Educação sem barreiras', '2024-10-10', '2024-11-11', 5000, 3, 4),
(4, 'Frio? Nunca mais!', '2023-04-04', '2023-04-10', 3500, 4, 1),
(5, 'Carros no capricho!', '2010-06-06', '2010-07-07', 4000, 5, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `segmento` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cliente`, `email`, `segmento`) VALUES
(1, 'João Oliveira', 'joao.Oliveira@gmail.com', 'Doceria'),
(2, 'Anna Silva dos Campos', 'anna.SilCamp@gmail.com', 'Alfaiataria'),
(3, 'Jonathan Prado', 'jojo.prad0@gmail.com', 'Educativo'),
(4, 'Maria Luiza de Nogare', 'mahLu.Nogare@gmail.com', 'Vestimentas de frio'),
(5, 'Matheus Queiroz', 'mat.queiroz@gmail.com', 'Mecânica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `midia`
--

CREATE TABLE `midia` (
  `id_midia` int(11) NOT NULL,
  `tipo_midia` varchar(50) DEFAULT NULL,
  `custo_unitario` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `midia`
--

INSERT INTO `midia` (`id_midia`, `tipo_midia`, `custo_unitario`) VALUES
(1, 'Foto pequena - JPEG', 3500),
(2, 'Vídeo curto - MP4', 2000),
(3, 'Foto média - JPEG', 4000),
(4, 'Foto Grande - JPEG E PNG', 5000),
(5, 'Vídeo Grande  MP4', 6000);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `campanha`
--
ALTER TABLE `campanha`
  ADD PRIMARY KEY (`id_campanha`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_midia` (`id_midia`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `midia`
--
ALTER TABLE `midia`
  ADD PRIMARY KEY (`id_midia`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `campanha`
--
ALTER TABLE `campanha`
  ADD CONSTRAINT `campanha_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `campanha_ibfk_2` FOREIGN KEY (`id_midia`) REFERENCES `midia` (`id_midia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
