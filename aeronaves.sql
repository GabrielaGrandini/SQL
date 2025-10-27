-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/10/2025 às 11:48
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
-- Banco de dados: `aeronaves`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aeronaves`
--

CREATE TABLE `aeronaves` (
  `id` int(11) NOT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `fabricante` varchar(50) DEFAULT NULL,
  `passageiros` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aeronaves`
--

INSERT INTO `aeronaves` (`id`, `modelo`, `fabricante`, `passageiros`) VALUES
(1, 'A380', 'Airbus', 853),
(2, 'B787', 'Boeing', 330),
(3, 'Embraer E195', 'Embraer', 124);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aeronaves`
--
ALTER TABLE `aeronaves`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
