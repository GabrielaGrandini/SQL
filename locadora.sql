-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 20:54
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
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `id` int(11) NOT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `placa` varchar(7) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `cor` varchar(15) DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`id`, `modelo`, `placa`, `marca`, `cor`, `descricao`) VALUES
(1, 'Chevrolet Onix', 'MUL2K20', 'Chevrolet', 'Azul', 'Carro azul com quatro portas'),
(2, 'Hyundai HB20', 'QRA3L30', 'Hyundai', 'Cinza', 'Carro cinza com quatro portas'),
(3, 'Volkswagen Polo', 'MEN2H50', 'Volkswagen', 'Vermelho', 'Carro vermelho com quatro portas'),
(4, 'Fiat Argo', 'PQA8545', 'Fiat', 'Preto', 'Carro preto com quatro portas'),
(5, 'Fiat Mobi', 'STQ5C10', 'Fiat', 'Branco', 'Carro branco com quatro portas'),
(6, 'Renault Kwid', 'ZPT2M76', 'Renault', 'Preto', 'Carro preto com quatro portas'),
(7, 'Paugeot 208', 'MNQ1S00', 'Peugeot', 'Cinza', 'Carro cinza com quatro portas'),
(8, 'Volkswagen T-Cross', 'PAR5I50', 'Volkswagen', 'Azul', 'Carro azul com quatro portas'),
(9, 'Jeep Compass', 'AQH2H30', 'Jeep', '´Vermelho', 'Carro vermelho com quatro portas'),
(10, 'Honda HR-V', 'OQY6J80', 'Honda', 'Preto', 'Carro preto com quatro portas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `rg` varchar(11) DEFAULT NULL,
  `cnh` varchar(9) NOT NULL,
  `data_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `telefone`, `rg`, `cnh`, `data_nascimento`) VALUES
(1, 'Beatrice Williams', '6754-343991', '128356789', '123456789', '2005-07-09'),
(2, 'Emily Duarte', '6853-45340', '21987644', '987654321', '2003-06-21'),
(3, 'Jack Uphir', '6754-34300', '33445665', '135792468', '2004-01-06'),
(4, 'Harvey Nomikos', '0064-02243', '45012350', '247691639', '2000-02-29'),
(5, 'Ayumi Bellini Kai', '1224-25586', '58765321', '582934470', '2005-05-20'),
(6, 'João Silva', '2222-222', '67891231', '975318642', '1992-12-12'),
(7, 'Giulia Domingues', '1224-26586', '7408578904', '582934470', '2001-12-12'),
(8, 'Anna Lara Guido', '3443-54543', '8901345X', '242434567', '2008-10-18'),
(9, 'Jonathan Costa', '3333-44444', '91235678', '234862047', '1980-04-23'),
(10, 'John Godai', '6666-00043', '99877663', '060606324', '2002-09-23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva`
--

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL,
  `id_carro` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `data_reserva` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reserva`
--

INSERT INTO `reserva` (`id`, `id_carro`, `id_cliente`, `data_reserva`, `data_devolucao`, `observacoes`) VALUES
(1, 1, 1, '2025-09-01', '2025-10-01', 'Cliente especial'),
(2, 2, 2, '2024-10-29', '2024-11-25', 'Cliente regular'),
(3, 3, 3, '2020-01-06', '2021-01-12', 'Cliente fiél'),
(4, 4, 4, '2025-01-10', '2025-06-06', 'Cliente regular'),
(5, 6, 9, '2025-09-15', '2025-09-16', 'Cliente novo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_carro` (`id_carro`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `id_carro` FOREIGN KEY (`id_carro`) REFERENCES `carro` (`id`),
  ADD CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
