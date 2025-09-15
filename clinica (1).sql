-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 18:49
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
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  `data_hota` datetime DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`id`, `id_paciente`, `id_medico`, `data_hota`, `observacoes`) VALUES
(1, 11, 6, '2025-09-15 07:00:00', 'Consulta de emergência'),
(2, 9, 1, '2025-09-19 14:00:00', 'Consulta de rotina'),
(3, 7, 4, '2025-12-12 10:00:00', 'Consulta de rotina'),
(4, 8, 3, '2025-09-17 17:30:00', 'Consulta sobre mudanças hormonais'),
(5, 13, 8, '2025-10-21 09:10:00', 'Consulta de check-up sobre o aumento das lentes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id`, `nome`, `especialidade`, `telefone`, `crm`) VALUES
(1, 'Dr. Roberto Williams', 'Cirurgião', '5555-6666', 'CRM12345'),
(2, 'Dra. Ana Lima', 'Pediatra', '7878-0000', 'CRM67890'),
(3, 'Dr. Marcos Alves', 'Dermatologista', '8989-0020', 'CRM45678'),
(4, 'Dra. Luisa Costa', 'Ginecologista', '3478-3333', 'CRM09453'),
(5, 'Dr. Carlos Souza', 'Cardiologista', '1234-4567', 'CRM45755'),
(6, 'Dra. Maria Lurdes', 'Psiquiatra', '4754-4321', 'CRM66600'),
(7, 'Dr. Bruno Lewis', 'Ortopedista', '8345-3482', 'CRM00001'),
(8, 'Dra. Anabeth Dorigan', 'Oftalmologista', '1111-2222', 'CRM33322'),
(9, 'Dr.Frederico', 'Neurologista', '5676-9474', 'CRM77853'),
(10, 'Dra. Júlia Domingues', 'Radiologista', '9988-8844', 'CRM23433');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `data_nascimento`, `telefone`, `endereco`, `cep`, `email`) VALUES
(1, 'João Silva', '1990-05-12', '2033-4342', 'Rua das Monções,34', '1234-567', 'joao.silva@gmail.com'),
(4, 'Giulia Domingues', '2008-12-12', '2222-2222', 'Rua das flores, 22', '54321-098', 'giulia.domingues1a@gmail.com'),
(5, 'Anna Lara Guido', '2008-10-18', '3443-5453', 'Rua dos Alfas, 29', '6666-666', 'annal.guido1a@gmail.com'),
(6, 'Ayumi Bellini Kai', '2005-05-20', '1224-2655', 'Rua dos ventos, 22', '0002-002', 'baghibellinikai@gmail.com'),
(7, 'Emily Duarte', '2003-06-21', '6853-4534', 'Rua das Marias, 2', '4545-666', 'emilyduarte@gmail.com'),
(8, 'Beatrice Williams', '2005-07-09', '6754-3434', 'Rua sete de setembro, 145', '9876-543', 'beatricewillwilliams@gmail.com'),
(9, 'Jack Uphir', '2004-01-06', '0666-333', 'Rua dos cocais, 01', '0001-204', 'jackuphir@gmail.com'),
(10, 'Martin Sunset', '2005-08-27', '1919-2232', 'Rua das estrelas, 100', '4325-444', 'martinsunset@gmail.com'),
(11, 'John Godai', '2010-09-23', '6545-2806', 'Rua Cherlim, 544', '3330-666', 'ojohngodai@gamil.com'),
(12, 'Harvey Nomikos', '2008-02-29', '0064-0232', 'Rua Cherlim, 544', '3330-666', 'nomikosharvey@gmail.com'),
(13, 'Jonathan Costa', '1980-04-23', '1010-2020', 'Rua Aparecida, 50', '5678-899', 'jonathan@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
