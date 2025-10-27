-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/10/2025 às 11:49
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
-- Banco de dados: `doces`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `doces`
--

CREATE TABLE `doces` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `origem` varchar(50) DEFAULT NULL,
  `calorias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `doces`
--

INSERT INTO `doces` (`id`, `nome`, `origem`, `calorias`) VALUES
(1, 'Brigadeiro', 'Brasil', 90),
(2, 'Tiramisu', 'Itália', 250),
(3, 'Macaron', 'França', 180);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `doces`
--
ALTER TABLE `doces`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
