-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/11/2025 às 18:21
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
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acervos`
--

CREATE TABLE `acervos` (
  `id_acer` int(11) NOT NULL,
  `titulo1` varchar(50) NOT NULL,
  `titulo2` varchar(50) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `Outros_autores` varchar(50) DEFAULT NULL,
  `edicao` varchar(50) DEFAULT NULL,
  `tipoAcervo` int(10) NOT NULL,
  `ano_edicao` int(4) NOT NULL,
  `origem` int(10) DEFAULT NULL,
  `numero_tombo` int(11) DEFAULT NULL,
  `id_editora` int(11) DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL,
  `id_clientes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `acervos`
--

INSERT INTO `acervos` (`id_acer`, `titulo1`, `titulo2`, `autor`, `Outros_autores`, `edicao`, `tipoAcervo`, `ano_edicao`, `origem`, `numero_tombo`, `id_editora`, `id_cat`, `id_clientes`) VALUES
(1, 'O Mundo de Sofia', 'Romance da história da filosofia', 'Jostein Gaarder', 'Não há', '5ª', 0, 1995, 0, 120076101, 1, 1, 1),
(2, 'A Noite das Bruxas', 'Não há', 'Agatha Christie', 'Não há', '3ª', 0, 2014, 0, 120076102, 2, 2, 2),
(3, 'A Hipótese do Amor', 'Não há', 'Ali Hazelwood', 'Não há', '1ª', 0, 2022, 0, 120076103, 3, 3, 3),
(4, 'Colapso', 'Não há', 'Roberto Denser', 'Não há', '1ª', 0, 2023, 0, 120076104, 4, 4, 4),
(5, 'Física 1: Mecânica', 'Não há', 'Gref - Grupo de Reelaboração do Ensino de Física', 'Não há', '7ª', 0, 2024, 0, 120076105, 5, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `acervos_autor`
--

CREATE TABLE `acervos_autor` (
  `id_aA` int(11) NOT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `id_acer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `acervos_autor`
--

INSERT INTO `acervos_autor` (`id_aA`, `id_autor`, `id_acer`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `num_Autor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `autor`
--

INSERT INTO `autor` (`id_autor`, `nome`, `num_Autor`) VALUES
(1, 'Agatha Christie', 11),
(2, 'José de Alencar', 12),
(3, 'Machado de Assis', 13),
(4, 'Conceição Evaristo', 14),
(5, 'Clarice Lispector', 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_cat` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_cat`, `descricao`) VALUES
(1, 'Romance'),
(2, 'Suspense'),
(3, 'Terror psicológico'),
(4, 'Ação'),
(5, 'Ficção científica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `cod` int(11) DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `obs` varchar(50) DEFAULT NULL,
  `situacao` varchar(50) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `cod`, `nome`, `endereco`, `cidade`, `telefone`, `obs`, `situacao`, `codCliente`) VALUES
(1, 1, 'Giulia Domingues', 'Rua do Girasol, 134', 'Votorantim-SP', '(15) 9991-4527', 'Não há', 'Não há atrasos, devolutivas em bom estado e client', 4018),
(2, 2, 'Gabriela Prado', 'Rua das vinheiras, 862', 'Sorocaba-SP', '(15) 98223-7613', 'Não há', 'Não há atrasos, devolutivas em bom estado e client', 4007),
(3, 3, 'Anna Lara Guido', 'Rua das Mariposas, 303', 'Sorocaba-SP', '(15) 99023-7112', 'Cuidado com os bilhetes da caixinha', 'Não há atrasos e devolutivas em bom estado', 4023),
(4, 4, 'Beatrice Williams', 'Rua Oliva, 015', 'Votorantim-SP', '(15) 99167-3291', 'Não deixar levar nenhuma namorada para os fundos d', 'Apenas 1 atraso, sem rasura e cliente assídua', 4001),
(5, 5, 'Ethan Kaneko', 'Rua Lima, 129', 'Sorocaba-SP', '(15) 91023-2322', 'Não há', 'Não há atrasos, devolutivas em bom estado e client', 4033);

-- --------------------------------------------------------

--
-- Estrutura para tabela `editora`
--

CREATE TABLE `editora` (
  `id_editora` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `editora`
--

INSERT INTO `editora` (`id_editora`, `descricao`, `telefone`) VALUES
(1, 'Grande editora caracterizada pela versatilidade de', '(11) 99997-2223'),
(2, 'Editora híbrida caracterizada pela alta qualidade ', '(22) 22133-5453'),
(3, 'Editora acadêmica', '(92) 98808-4245'),
(4, 'Editora especializada em praparação de texto, gest', '(64) 24808-7553'),
(5, 'Editora média que está começando a ganhar destaque', '(45) 43450-9980');

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `id_emprestimo` int(11) NOT NULL,
  `cod` int(10) DEFAULT NULL,
  `DataEmp` date DEFAULT NULL,
  `DataEnt` date DEFAULT NULL,
  `cod_Tombo` int(11) DEFAULT NULL,
  `id_clientes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `emprestimo`
--

INSERT INTO `emprestimo` (`id_emprestimo`, `cod`, `DataEmp`, `DataEnt`, `cod_Tombo`, `id_clientes`) VALUES
(1, 1, '2025-03-17', '2025-03-24', 120076101, 1),
(2, 2, '2025-06-02', '2025-06-09', 120076102, 2),
(3, 3, '2025-01-29', '2025-02-05', 120076103, 3),
(4, 4, '2025-08-11', '2025-08-18', 120076104, 4),
(5, 5, '2025-09-10', '2025-09-17', 120076105, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `param_biblioteca`
--

CREATE TABLE `param_biblioteca` (
  `id_param` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `valor_multa` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `param_biblioteca`
--

INSERT INTO `param_biblioteca` (`id_param`, `nome`, `cidade`, `estado`, `pais`, `cep`, `telefone`, `email`, `valor_multa`) VALUES
(1, 'Biblioteca Pública Municipal Louis Braille', 'Paraíso', '', 'Brasil', ' 01504-00', '(11) 12345-6789', 'biblio.LouisBraille@gmail.com', 2.00),
(2, 'Biblioteca Municipal de Sorocaba', 'Sorocaba', '', 'Brasil', '18013-550', '(15) 3228-1955', 'biliotecaSorocaba@gmail.com', 5.00),
(3, 'Biblioteca Apostólica Vaticana', 'Cortile del Belvedere', '', 'Vaticano', 'V-00120', '+39/06698.79400', 'bav@vatlib.it', 30.79),
(4, 'Real Gabinete Português de Leitura', 'Rio de Janeiro', '', 'Brasil', ' 20051-02', '(21) 2221-3138', ' gabinete@realgabinete.com.br', 1.00),
(5, 'Biblioteca Nacional da França', 'Paris', '', 'França', 'Rue Riche', '+33 153795959', 'servicepro@bnf.fr', 12.32);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `cod` int(6) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `tipo_usuario` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `cod`, `nome`, `tipo_usuario`, `telefone`, `login`, `senha`) VALUES
(1, 1, 'Giulia Domingues', 'Aparece com frequência e prefere livros de romance', '(15) 54350-5543', 'GiuGiu', 'senha123'),
(2, 2, 'Gabriela Prado', 'Aparece com frequência e prefere livros de suspens', '(15) 32405-3412', 'BagAyu', 'GAb!34@'),
(3, 3, 'Anna Lara Guido', 'Aparece com pouca frequência', '(11) 42443-5682', 'AnnaLara', 'pAQ231'),
(4, 4, 'Beatrice Williams', 'Aparece todo dia', '(78) 54234-3351', 'Bea.M.Williams', 'Sqc@567!!'),
(5, 5, 'Ethan Kaneko', 'Aparece com de vez em quando', '(93) 12313-1234', 'KanekoEthan', 'AfD21J');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acervos`
--
ALTER TABLE `acervos`
  ADD PRIMARY KEY (`id_acer`),
  ADD KEY `id_editora` (`id_editora`),
  ADD KEY `id_cat` (`id_cat`),
  ADD KEY `id_clientes` (`id_clientes`);

--
-- Índices de tabela `acervos_autor`
--
ALTER TABLE `acervos_autor`
  ADD PRIMARY KEY (`id_aA`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_acer` (`id_acer`);

--
-- Índices de tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_cat`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Índices de tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id_editora`);

--
-- Índices de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`id_emprestimo`),
  ADD KEY `id_clientes` (`id_clientes`);

--
-- Índices de tabela `param_biblioteca`
--
ALTER TABLE `param_biblioteca`
  ADD PRIMARY KEY (`id_param`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `acervos`
--
ALTER TABLE `acervos`
  ADD CONSTRAINT `acervos_ibfk_1` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id_editora`),
  ADD CONSTRAINT `acervos_ibfk_2` FOREIGN KEY (`id_cat`) REFERENCES `categoria` (`id_cat`),
  ADD CONSTRAINT `acervos_ibfk_3` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`);

--
-- Restrições para tabelas `acervos_autor`
--
ALTER TABLE `acervos_autor`
  ADD CONSTRAINT `acervos_autor_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `acervos_autor_ibfk_2` FOREIGN KEY (`id_acer`) REFERENCES `acervos` (`id_acer`);

--
-- Restrições para tabelas `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
