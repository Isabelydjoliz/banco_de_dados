-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Ago-2024 às 13:52
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `IDaluguel` int(11) NOT NULL,
  `datafim` date NOT NULL,
  `valor` decimal(4,2) NOT NULL,
  `datainicio` date NOT NULL,
  `tipocontrato` varchar(50) NOT NULL,
  `datavencimento` varchar(10) NOT NULL,
  `descri` varchar(500) DEFAULT NULL,
  `IDinquilino` int(11) DEFAULT NULL,
  `IDimovel` int(11) DEFAULT NULL,
  `IDcorretor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `IDcorretor` int(11) NOT NULL,
  `nascimento` date NOT NULL,
  `RG` varchar(20) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numerocasa` varchar(20) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

CREATE TABLE `fiador` (
  `IDfiador` int(11) NOT NULL,
  `nascimento` date NOT NULL,
  `nome` varchar(50) NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `RG` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `IDimovel` int(11) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `areatotal` decimal(7,2) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `suite` int(11) NOT NULL,
  `garagem` bit(1) NOT NULL,
  `numerocasa` varchar(12) NOT NULL,
  `alugado` bit(1) NOT NULL,
  `banheiro` int(11) NOT NULL,
  `quarto` int(11) NOT NULL,
  `vagasgaragem` int(11) NOT NULL,
  `quintal` bit(1) NOT NULL,
  `lavanderia` bit(1) NOT NULL,
  `piscina` bit(1) NOT NULL,
  `areaconstruida` decimal(7,2) NOT NULL,
  `IDproprietario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `IDinquilino` int(11) NOT NULL,
  `nascimento` date NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `RG` varchar(15) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `IDfiador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `midias`
--

CREATE TABLE `midias` (
  `IDmidia` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `IDimovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `IDproprietario` int(11) NOT NULL,
  `nascimento` date NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `numerocasa` varchar(10) DEFAULT NULL,
  `numerocelular` varchar(15) NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `RG` varchar(15) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `contabancaria` varchar(255) NOT NULL,
  `pix` varchar(255) NOT NULL,
  `banco` varchar(255) NOT NULL,
  `agencia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`IDproprietario`, `nascimento`, `rua`, `cidade`, `numerocasa`, `numerocelular`, `CPF`, `pais`, `bairro`, `RG`, `nome`, `estado`, `cep`, `email`, `contabancaria`, `pix`, `banco`, `agencia`) VALUES
(1, '1999-09-08', 'Rua da esquina Dupla', 'Ribeirão Pires', '30', '11 98762-8743', '125.667.978-34', 'Brasil', 'Santa Luzia', '62-673.536-0', 'Carolina', 'São Paulo', '43250-040', 'carolinalinda@gmail.com', '010-54327865', '11 98762-8743', 'itaú', '010'),
(2, '1999-02-17', 'Rua da Alegria', 'Ribeirão Pires', '298', '11 93625-9872', '762.256.888-09', 'Brasil', 'Quarta Dimensão', '73-134.092-8', 'Letícia', 'São Paulo', '42361-090', 'leledograu@gmail.com', '290-76245902', '11 93625-9872', 'santander', '290'),
(3, '1999-12-04', 'Rua Janelinha', 'Ribeirão Pires', '43', '11 98764-1128', '534.009.988-10', 'Brasil', 'Centro', '39-098.153-8', 'Luana', 'São Paulo', '09814-050', 'blogdalu@gmail.com', '120-87191528', 'blogdalu@gmail.com', 'Banco do Brasil', '120'),
(4, '1999-05-14', 'Rua de Terra', 'Mauá', '378', '11 98142-1176', '816.116.008-09', 'Brasil', 'Guapituba', '98-256.887-0', 'Raphaela', 'São Paulo', '09776-700', 'filhadohoender@gmail.com', '676-88522538', 'filhadohoender@gmail.com', 'Nubank', '676'),
(5, '1999-07-12', 'Rua do Capim Dourado', 'Ribeirão Pires', '109', '11 99972-0091', '871.997.778-23', 'Brasil', 'Roncom', '49-112.009-0', 'Camila', 'São Paulo', '04059-020', 'camisdobrunomars@gmail.com', '902-00167392', '11 99972-0091', 'Nubank', '902'),
(6, '1999-11-16', 'Rua Arnaldinho', 'Ribeirão Pires', '278', '11 95781-8304', '240.777.928-27', 'Brasil', 'Nova Suíça', '34-886.432-7', 'Isabely', 'São Paulo', '04055-080', 'isabelyeilish@gmail.com', '091-85133428', 'isabelyeilish@gmail.com', 'Inter', '091');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`IDaluguel`),
  ADD KEY `IDimovel` (`IDimovel`),
  ADD KEY `IDinquilino` (`IDinquilino`),
  ADD KEY `IDcorretor` (`IDcorretor`);

--
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`IDcorretor`),
  ADD UNIQUE KEY `RG` (`RG`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Índices para tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`IDfiador`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `RG` (`RG`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`IDimovel`),
  ADD KEY `IDproprietario` (`IDproprietario`);

--
-- Índices para tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`IDinquilino`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `RG` (`RG`),
  ADD KEY `IDfiador` (`IDfiador`);

--
-- Índices para tabela `midias`
--
ALTER TABLE `midias`
  ADD PRIMARY KEY (`IDmidia`),
  ADD KEY `IDimovel` (`IDimovel`);

--
-- Índices para tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`IDproprietario`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `RG` (`RG`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `IDaluguel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `IDcorretor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `IDfiador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `IDimovel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `IDinquilino` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `midias`
--
ALTER TABLE `midias`
  MODIFY `IDmidia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `IDproprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`IDimovel`) REFERENCES `imovel` (`IDimovel`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`IDinquilino`) REFERENCES `inquilino` (`IDinquilino`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`IDcorretor`) REFERENCES `corretor` (`IDcorretor`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`IDproprietario`) REFERENCES `proprietario` (`IDproprietario`);

--
-- Limitadores para a tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`IDfiador`) REFERENCES `fiador` (`IDfiador`);

--
-- Limitadores para a tabela `midias`
--
ALTER TABLE `midias`
  ADD CONSTRAINT `midias_ibfk_1` FOREIGN KEY (`IDimovel`) REFERENCES `imovel` (`IDimovel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
