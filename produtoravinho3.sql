-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/06/2024 às 17:46
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtoravinho`
--
CREATE DATABASE IF NOT EXISTS `produtoravinho` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtoravinho`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `casta`
--

CREATE TABLE `casta` (
  `codCasta` int(11) NOT NULL,
  `casta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `casta`
--

INSERT INTO `casta` (`codCasta`, `casta`) VALUES
(1, 'Touriga Nacional'),
(2, 'Tinta Roriz'),
(3, 'Tinta Barroca'),
(4, 'Carbenet'),
(5, 'Malbec'),
(6, 'Pinot Noir');

-- --------------------------------------------------------

--
-- Estrutura para tabela `casta_vinho`
--

CREATE TABLE `casta_vinho` (
  `codVinho` int(11) DEFAULT NULL,
  `codCasta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `casta_vinho`
--

INSERT INTO `casta_vinho` (`codVinho`, `codCasta`) VALUES
(1, 2),
(2, 1),
(3, 3),
(4, 4),
(5, 6),
(6, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtor`
--

CREATE TABLE `produtor` (
  `produtorid` int(11) NOT NULL,
  `nomeProdutor` varchar(50) DEFAULT NULL,
  `moradaProdutor` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `codRegiao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtor`
--

INSERT INTO `produtor` (`produtorid`, `nomeProdutor`, `moradaProdutor`, `telefone`, `email`, `codRegiao`) VALUES
(1, 'Qt. Vallado', 'Régua', '254323147', 'vallado@mail.telepac.pt', 1),
(2, 'Francisco', 'Paris', '923479209', 'franfran@gmail.com', 3),
(3, 'Finagra', 'Reguengos', '266509270', 'esporao@gmail.com', 2),
(4, 'Florencia', 'Roma', '9357929876', 'donaflora@yahoo.com', 2),
(5, 'Florencia', 'Roma', '9357929876', 'donaflora@gmail.com', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `regiao`
--

CREATE TABLE `regiao` (
  `idregiao` int(11) NOT NULL,
  `descriregiao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `regiao`
--

INSERT INTO `regiao` (`idregiao`, `descriregiao`) VALUES
(1, 'ETEC MCM'),
(2, 'Douro'),
(3, 'Fazenda da ETEC'),
(7, 'Fazenda Sul Cintia');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vinho`
--

CREATE TABLE `vinho` (
  `vinhoId` int(11) NOT NULL,
  `nomeVinho` varchar(30) DEFAULT NULL,
  `anoVinho` int(11) DEFAULT NULL,
  `cor` varchar(15) DEFAULT NULL,
  `grau` decimal(7,2) DEFAULT NULL,
  `preco` decimal(7,2) DEFAULT NULL,
  `codProdutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vinho`
--

INSERT INTO `vinho` (`vinhoId`, `nomeVinho`, `anoVinho`, `cor`, `grau`, `preco`, `codProdutor`) VALUES
(1, 'Esporão Reserva', 2004, 'Tinto', 14.50, 59.39, 3),
(2, 'Quinta do Vallado', 2004, 'Tinto', 14.00, 29.10, 1),
(3, 'Muros Antigos', 2006, 'Branco', 13.00, 30.50, 2),
(4, 'Carbenet Francês Original', 2005, 'Tinto', 12.50, 76.35, 5),
(5, 'Pirnoit', 2000, 'Branco', 10.50, 90.50, 5),
(6, 'Roulty', 2014, 'Tinto', 13.60, 59.50, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `casta`
--
ALTER TABLE `casta`
  ADD PRIMARY KEY (`codCasta`);

--
-- Índices de tabela `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD KEY `codVinho` (`codVinho`),
  ADD KEY `codCasta` (`codCasta`);

--
-- Índices de tabela `produtor`
--
ALTER TABLE `produtor`
  ADD PRIMARY KEY (`produtorid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `codRegiao` (`codRegiao`);

--
-- Índices de tabela `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`idregiao`);

--
-- Índices de tabela `vinho`
--
ALTER TABLE `vinho`
  ADD PRIMARY KEY (`vinhoId`),
  ADD KEY `codProdutor` (`codProdutor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `casta`
--
ALTER TABLE `casta`
  MODIFY `codCasta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produtor`
--
ALTER TABLE `produtor`
  MODIFY `produtorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `regiao`
--
ALTER TABLE `regiao`
  MODIFY `idregiao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `vinho`
--
ALTER TABLE `vinho`
  MODIFY `vinhoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD CONSTRAINT `casta_vinho_ibfk_1` FOREIGN KEY (`codVinho`) REFERENCES `vinho` (`vinhoId`),
  ADD CONSTRAINT `casta_vinho_ibfk_2` FOREIGN KEY (`codCasta`) REFERENCES `casta` (`codCasta`);

--
-- Restrições para tabelas `produtor`
--
ALTER TABLE `produtor`
  ADD CONSTRAINT `produtor_ibfk_1` FOREIGN KEY (`codRegiao`) REFERENCES `regiao` (`idregiao`);

--
-- Restrições para tabelas `vinho`
--
ALTER TABLE `vinho`
  ADD CONSTRAINT `vinho_ibfk_1` FOREIGN KEY (`codProdutor`) REFERENCES `produtor` (`produtorid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
