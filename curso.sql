-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/10/2025 às 20:59
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
-- Banco de dados: `curso`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos_gratis`
--

CREATE TABLE `cursos_gratis` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `plataforma` varchar(50) DEFAULT NULL,
  `certificado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos_gratis`
--

INSERT INTO `cursos_gratis` (`id`, `nome`, `plataforma`, `certificado`) VALUES
(1, 'Introdução ao Git', 'GitHub', 1),
(2, 'HTML Básico', 'freeCodeCamp', 1),
(3, 'Lógica de Programação', 'Curso em Vídeo', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `festivais`
--

CREATE TABLE `festivais` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `publico_medio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `festivais`
--

INSERT INTO `festivais` (`id`, `nome`, `pais`, `publico_medio`) VALUES
(1, 'Rock in Rio', 'Brasil', 700000),
(2, 'Coachella', 'EUA', 125000),
(3, 'Tomorrowland', 'Bélgica', 400000);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cursos_gratis`
--
ALTER TABLE `cursos_gratis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `festivais`
--
ALTER TABLE `festivais`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
