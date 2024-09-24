-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 03:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Table structure for table `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(10) NOT NULL,
  `andar` varchar(20) DEFAULT NULL,
  `capacidade` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `andar`
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
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `nasc` date DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `nasc`, `endereco`) VALUES
('012.345.678-90', 'Juliana Ribeiro', '1996-10-10', 'Rua J, 707, Tatuapé, São Paulo, SP'),
('111.222.333-44', 'Gabriel Ferreira', '1989-04-19', 'Rua K, 808, Vila Madalena, São Paulo, SP'),
('111.333.555-77', 'Carolina Dias', '1995-06-22', 'Rua T, 888, Morumbi, São Paulo, SP'),
('123.456.789-01', 'João Silva', '1985-07-15', 'Rua A, 123, Centro, São Paulo, SP'),
('222.333.444-55', 'Patrícia Cardoso', '1993-02-15', 'Rua L, 909, Bela Vista, São Paulo, SP'),
('234.567.890-12', 'Maria Souza', '1990-03-22', 'Rua B, 456, Vila Mariana, São Paulo, SP'),
('333.444.555-66', 'André Gomes', '1981-07-03', 'Rua M, 111, Consolação, São Paulo, SP'),
('345.678.901-23', 'Carlos Pereira', '1982-11-10', 'Rua C, 789, Jardins, São Paulo, SP'),
('444.555.666-77', 'Isabela Santos', '1986-11-25', 'Rua N, 222, Santa Cecília, São Paulo, SP'),
('456.789.012-34', 'Ana Costa', '1995-01-05', 'Rua D, 101, Ibirapuera, São Paulo, SP'),
('555.666.777-88', 'Rafael Carvalho', '1994-03-30', 'Rua O, 333, Perdizes, São Paulo, SP'),
('567.890.123-45', 'Pedro Martins', '1978-09-30', 'Rua E, 202, Moema, São Paulo, SP'),
('666.777.888-99', 'Laura Rodrigues', '1997-09-09', 'Rua P, 444, Lapa, São Paulo, SP'),
('678.901.234-56', 'Fernanda Oliveira', '1992-06-17', 'Rua F, 303, Brooklin, São Paulo, SP'),
('777.888.999-00', 'Daniel Borges', '1988-12-31', 'Rua Q, 555, Bixiga, São Paulo, SP'),
('789.012.345-67', 'Luís Almeida', '1987-08-08', 'Rua G, 404, Itaim Bibi, São Paulo, SP'),
('888.999.111-22', 'Aline Barros', '1992-01-20', 'Rua R, 666, Saúde, São Paulo, SP'),
('890.123.456-78', 'Roberta Lima', '1991-12-12', 'Rua H, 505, Pinheiros, São Paulo, SP'),
('901.234.567-89', 'Bruno Machado', '1983-05-25', 'Rua I, 606, Lapa, São Paulo, SP'),
('999.111.222-33', 'Felipe Rocha', '1980-08-14', 'Rua S, 777, Liberdade, São Paulo, SP');

-- --------------------------------------------------------

--
-- Table structure for table `estacionamento`
--

CREATE TABLE `estacionamento` (
  `codestacionamento` int(10) NOT NULL,
  `horasaida` datetime DEFAULT NULL,
  `horaentrada` datetime DEFAULT NULL,
  `dataentrada` datetime DEFAULT NULL,
  `datasaida` datetime DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `codlugar` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `estacionamento`
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
-- Table structure for table `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(10) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `descri` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`, `descri`) VALUES
(1, 'Honda Civic', 'Sedan médio, motor 1.5 turbo, eficiente e espaçoso - Honda Civic'),
(2, 'Toyota Corolla', 'Sedan confiável e econômico com motor 1.8 - Toyota Corolla'),
(3, 'Ford Focus', 'Hatchback esportivo com bom desempenho - Ford Focus'),
(4, 'Chevrolet Cruze', 'Sedan médio, motor 1.4 turbo, confortável - Chevrolet Cruze'),
(5, 'Volkswagen Golf', 'Hatchback compacto, versátil e com bom desempenho - Volkswagen Golf'),
(6, 'Hyundai Elantra', 'Sedan médio com design moderno e motor 2.0 - Hyundai Elantra'),
(7, 'Renault Duster', 'SUV compacto com tração 4x4 e robustez - Renault Duster'),
(8, 'Fiat Argo', 'Hatch compacto, motor 1.3 flex, prático para a cidade - Fiat Argo'),
(9, 'Jeep Renegade', 'SUV compacto com visual robusto e motor 1.8 - Jeep Renegade'),
(10, 'Nissan Sentra', 'Sedan médio, espaçoso e com bom custo-benefício - Nissan Sentra'),
(11, 'Peugeot 208', 'Hatchback compacto, design europeu e eficiente - Peugeot 208'),
(12, 'BMW Série 3', 'Sedan premium, motor 2.0 turbo, luxo e desempenho - BMW Série 3'),
(13, 'Mercedes-Benz C-Class', 'Sedan de luxo com alta performance e conforto - Mercedes-Benz C-Class'),
(14, 'Audi A4', 'Sedan premium com design elegante e tecnologia avançada - Audi A4'),
(15, 'Kia Sportage', 'SUV compacto, motor 2.0, estilo esportivo - Kia Sportage'),
(16, 'Chevrolet Onix', 'Hatch compacto mais vendido no Brasil, motor 1.0 turbo - Chevrolet Onix'),
(17, 'Volkswagen Polo', 'Hatch compacto, desempenho ágil e design moderno - Volkswagen Polo'),
(18, 'Ford EcoSport', 'SUV compacto com bom desempenho e eficiência - Ford EcoSport'),
(19, 'Honda HR-V', 'SUV compacto, motor 1.8 flex, confiável e eficiente - Honda HR-V'),
(20, 'Hyundai Creta', 'SUV compacto com motor 1.6 e design moderno - Hyundai Creta');

-- --------------------------------------------------------

--
-- Table structure for table `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(10) NOT NULL,
  `codmodelo` int(10) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `ano` int(4) DEFAULT NULL,
  `vezesestacionadas` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `veiculo`
--

INSERT INTO `veiculo` (`placa`, `codmodelo`, `cor`, `cpf`, `ano`, `vezesestacionadas`) VALUES
('ABC-1234', 1, 'Preto', '123.456.789-01', 2015, 32),
('BCD-7890', 10, 'Vermelho', '012.345.678-90', 2023, 30),
('CDE-3456', 19, 'Preto', '999.111.222-33', 2015, 38),
('DEF-5678', 2, 'Branco', '234.567.890-12', 2018, 29),
('EFG-1234', 11, 'Azul', '111.222.333-44', 2011, 36),
('FGH-7890', 20, 'Branco', '111.333.555-77', 2020, 31),
('GHI-9012', 3, 'Prata', '345.678.901-23', 2020, 35),
('HIJ-5678', 12, 'Cinza', '222.333.444-55', 2013, 26),
('JKL-3456', 4, 'Vermelho', '456.789.012-34', 2017, 28),
('KLM-9012', 13, 'Verde', '333.444.555-66', 2012, 34),
('MNO-7890', 5, 'Azul', '567.890.123-45', 2016, 30),
('NOP-3456', 14, 'Branco', '444.555.666-77', 2010, 30),
('PQR-1234', 6, 'Cinza', '678.901.234-56', 2021, 34),
('QRS-7890', 15, 'Prata', '555.666.777-88', 2009, 32),
('STU-5678', 7, 'Preto', '789.012.345-67', 2019, 31),
('TUV-1234', 16, 'Vermelho', '666.777.888-99', 2016, 25),
('VWX-9012', 8, 'Branco', '890.123.456-78', 2022, 27),
('WXY-5678', 17, 'Azul', '777.888.999-00', 2017, 33),
('YZA-3456', 9, 'Prata', '901.234.567-89', 2014, 33),
('ZAB-9012', 18, 'Cinza', '888.999.111-22', 2021, 29);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Indexes for table `estacionamento`
--
ALTER TABLE `estacionamento`
  ADD PRIMARY KEY (`codestacionamento`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Indexes for table `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `estacionamento`
--
ALTER TABLE `estacionamento`
  ADD CONSTRAINT `estacionamento_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estacionamento_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Constraints for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
