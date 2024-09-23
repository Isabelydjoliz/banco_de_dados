-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Set-2024 às 14:00
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(10) NOT NULL,
  `andar` varchar(20) DEFAULT NULL,
  `capacidade` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `andar`, `capacidade`) VALUES
(1, 'Térreo', 50),
(2, 'Subsolo 1', 40),
(3, 'Subsolo 2', 30),
(4, '1º Andar', 60),
(5, '2º Andar', 55),
(6, '3º Andar', 45);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `nasc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `nasc`) VALUES
('012.345.678-90', 'Juliana Ribeiro', '1996-10-10'),
('111.222.333-44', 'Gabriel Ferreira', '1989-04-19'),
('111.333.555-77', 'Carolina Dias', '1995-06-22'),
('123.456.789-01', 'João Silva', '1985-07-15'),
('222.333.444-55', 'Patrícia Cardoso', '1993-02-15'),
('234.567.890-12', 'Maria Souza', '1990-03-22'),
('333.444.555-66', 'André Gomes', '1981-07-03'),
('345.678.901-23', 'Carlos Pereira', '1982-11-10'),
('444.555.666-77', 'Isabela Santos', '1986-11-25'),
('456.789.012-34', 'Ana Costa', '1995-01-05'),
('555.666.777-88', 'Rafael Carvalho', '1994-03-30'),
('567.890.123-45', 'Pedro Martins', '1978-09-30'),
('666.777.888-99', 'Laura Rodrigues', '1997-09-09'),
('678.901.234-56', 'Fernanda Oliveira', '1992-06-17'),
('777.888.999-00', 'Daniel Borges', '1988-12-31'),
('789.012.345-67', 'Luís Almeida', '1987-08-08'),
('888.999.111-22', 'Aline Barros', '1992-01-20'),
('890.123.456-78', 'Roberta Lima', '1991-12-12'),
('901.234.567-89', 'Bruno Machado', '1983-05-25'),
('999.111.222-33', 'Felipe Rocha', '1980-08-14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estacionamento`
--

CREATE TABLE `estacionamento` (
  `codestacionamento` int(10) NOT NULL,
  `horasaida` datetime DEFAULT NULL,
  `horaentrada` datetime DEFAULT NULL,
  `dataentrada` datetime DEFAULT NULL,
  `datasaida` datetime DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `codlugar` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estacionamento`
--

INSERT INTO `estacionamento` (`codestacionamento`, `horasaida`, `horaentrada`, `dataentrada`, `datasaida`, `placa`, `codlugar`) VALUES
(1, '2024-09-23 10:30:00', '2024-09-23 08:00:00', '2024-09-23 08:00:00', '2024-09-23 10:30:00', 'ABC-1234', 1),
(2, '2024-09-23 14:00:00', '2024-09-23 09:30:00', '2024-09-23 09:30:00', '2024-09-23 14:00:00', 'DEF-5678', 2),
(3, '2024-09-23 15:45:00', '2024-09-23 11:15:00', '2024-09-23 11:15:00', '2024-09-23 15:45:00', 'GHI-9012', 3),
(4, '2024-09-23 12:30:00', '2024-09-23 07:00:00', '2024-09-23 07:00:00', '2024-09-23 12:30:00', 'JKL-3456', 4),
(5, '2024-09-23 18:00:00', '2024-09-23 08:45:00', '2024-09-23 08:45:00', '2024-09-23 18:00:00', 'MNO-7890', 5),
(6, '2024-09-23 13:45:00', '2024-09-23 10:00:00', '2024-09-23 10:00:00', '2024-09-23 13:45:00', 'PQR-1234', 6),
(7, '2024-09-23 17:30:00', '2024-09-23 09:00:00', '2024-09-23 09:00:00', '2024-09-23 17:30:00', 'STU-5678', 1),
(8, '2024-09-23 16:00:00', '2024-09-23 12:00:00', '2024-09-23 12:00:00', '2024-09-23 16:00:00', 'VWX-9012', 2),
(9, '2024-09-23 11:00:00', '2024-09-23 07:30:00', '2024-09-23 07:30:00', '2024-09-23 11:00:00', 'YZA-3456', 3),
(10, '2024-09-23 19:00:00', '2024-09-23 08:15:00', '2024-09-23 08:15:00', '2024-09-23 19:00:00', 'BCD-7890', 4),
(11, '2024-09-23 14:30:00', '2024-09-23 10:30:00', '2024-09-23 10:30:00', '2024-09-23 14:30:00', 'EFG-1234', 5),
(12, '2024-09-23 15:30:00', '2024-09-23 13:00:00', '2024-09-23 13:00:00', '2024-09-23 15:30:00', 'HIJ-5678', 6),
(13, '2024-09-23 17:00:00', '2024-09-23 11:45:00', '2024-09-23 11:45:00', '2024-09-23 17:00:00', 'KLM-9012', 1),
(14, '2024-09-23 13:00:00', '2024-09-23 07:45:00', '2024-09-23 07:45:00', '2024-09-23 13:00:00', 'NOP-3456', 2),
(15, '2024-09-23 19:30:00', '2024-09-23 09:15:00', '2024-09-23 09:15:00', '2024-09-23 19:30:00', 'QRS-7890', 3),
(16, '2024-09-23 18:45:00', '2024-09-23 12:30:00', '2024-09-23 12:30:00', '2024-09-23 18:45:00', 'TUV-1234', 4),
(17, '2024-09-23 11:30:00', '2024-09-23 06:45:00', '2024-09-23 06:45:00', '2024-09-23 11:30:00', 'WXY-5678', 5),
(18, '2024-09-23 16:45:00', '2024-09-23 11:00:00', '2024-09-23 11:00:00', '2024-09-23 16:45:00', 'ZAB-9012', 6),
(19, '2024-09-23 15:15:00', '2024-09-23 09:45:00', '2024-09-23 09:45:00', '2024-09-23 15:15:00', 'CDE-3456', 1),
(20, '2024-09-23 18:15:00', '2024-09-23 10:30:00', '2024-09-23 10:30:00', '2024-09-23 18:15:00', 'FGH-7890', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(10) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`) VALUES
(1, 'Honda Civic'),
(2, 'Toyota Corolla'),
(3, 'Ford Focus'),
(4, 'Chevrolet Cruze'),
(5, 'Volkswagen Golf'),
(6, 'Hyundai Elantra'),
(7, 'Renault Duster'),
(8, 'Fiat Argo'),
(9, 'Jeep Renegade'),
(10, 'Nissan Sentra'),
(11, 'Peugeot 208'),
(12, 'BMW Série 3'),
(13, 'Mercedes-Benz C-Class'),
(14, 'Audi A4'),
(15, 'Kia Sportage'),
(16, 'Chevrolet Onix'),
(17, 'Volkswagen Polo'),
(18, 'Ford EcoSport'),
(19, 'Honda HR-V'),
(20, 'Hyundai Creta');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(10) NOT NULL,
  `codmodelo` int(10) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `codmodelo`, `cor`, `cpf`) VALUES
('ABC-1234', 1, 'Preto', '123.456.789-01'),
('BCD-7890', 10, 'Vermelho', '012.345.678-90'),
('CDE-3456', 19, 'Preto', '999.111.222-33'),
('DEF-5678', 2, 'Branco', '234.567.890-12'),
('EFG-1234', 11, 'Azul', '111.222.333-44'),
('FGH-7890', 20, 'Branco', '111.333.555-77'),
('GHI-9012', 3, 'Prata', '345.678.901-23'),
('HIJ-5678', 12, 'Cinza', '222.333.444-55'),
('JKL-3456', 4, 'Vermelho', '456.789.012-34'),
('KLM-9012', 13, 'Preto', '333.444.555-66'),
('MNO-7890', 5, 'Azul', '567.890.123-45'),
('NOP-3456', 14, 'Branco', '444.555.666-77'),
('PQR-1234', 6, 'Cinza', '678.901.234-56'),
('QRS-7890', 15, 'Prata', '555.666.777-88'),
('STU-5678', 7, 'Preto', '789.012.345-67'),
('TUV-1234', 16, 'Vermelho', '666.777.888-99'),
('VWX-9012', 8, 'Branco', '890.123.456-78'),
('WXY-5678', 17, 'Azul', '777.888.999-00'),
('YZA-3456', 9, 'Prata', '901.234.567-89'),
('ZAB-9012', 18, 'Cinza', '888.999.111-22');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estacionamento`
--
ALTER TABLE `estacionamento`
  ADD PRIMARY KEY (`codestacionamento`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estacionamento`
--
ALTER TABLE `estacionamento`
  ADD CONSTRAINT `estacionamento_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estacionamento_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
