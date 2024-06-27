-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 03:34 AM
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
-- Database: `produtoravinho4`
--
CREATE DATABASE IF NOT EXISTS `produtoravinho4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtoravinho4`;

-- --------------------------------------------------------

--
-- Table structure for table `casta`
--

CREATE TABLE `casta` (
  `codCasta` int(11) NOT NULL,
  `casta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casta`
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
-- Table structure for table `casta_vinho`
--

CREATE TABLE `casta_vinho` (
  `codVinho` int(11) DEFAULT NULL,
  `codCasta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casta_vinho`
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
-- Table structure for table `produtor`
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
-- Dumping data for table `produtor`
--

INSERT INTO `produtor` (`produtorid`, `nomeProdutor`, `moradaProdutor`, `telefone`, `email`, `codRegiao`) VALUES
(1, 'Qt. Vallado', 'Régua', '+351254323147', 'vallado@mail.telepac.pt', 1),
(2, 'Francisco', 'Paris', '+351923479209', 'franfran@gmail.com', 3),
(3, 'Finagra', 'Reguengos', '+351266509270', 'esporao@gmail.com', 2),
(4, 'Florencia', 'Roma', '+3519357929876', 'donaflora@yahoo.com', 2),
(5, 'Flora', 'Malta', '+351259351397', 'floradamalta@gmail.com', 7);

-- --------------------------------------------------------

--
-- Table structure for table `regiao`
--

CREATE TABLE `regiao` (
  `idregiao` int(11) NOT NULL,
  `descriregiao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regiao`
--

INSERT INTO `regiao` (`idregiao`, `descriregiao`) VALUES
(1, 'ETEC MCM'),
(2, 'Douro'),
(3, 'Fazenda da ETEC'),
(7, 'Fazenda Sul Cintia');

-- --------------------------------------------------------

--
-- Table structure for table `vinho`
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
-- Dumping data for table `vinho`
--

INSERT INTO `vinho` (`vinhoId`, `nomeVinho`, `anoVinho`, `cor`, `grau`, `preco`, `codProdutor`) VALUES
(1, 'Esporão Reserva', 2004, 'Tinto', 14.50, 59.39, 3),
(2, 'Quinta do Vallado', 2004, 'Tinto', 14.00, 29.10, 1),
(3, 'Muros Antigos', 2006, 'Branco', 13.00, 30.50, 2),
(4, 'Carbenet Francês Original', 2005, 'Tinto', 12.50, 76.35, 5),
(5, 'Pirnoit', 2000, 'Branco', 10.50, 90.50, 5),
(6, 'Roulty', 2014, 'Tinto', 13.60, 59.50, 4),
(7, 'Cabernet 2.0', 2004, 'Tinto', 14.00, 6.50, 5),
(8, 'Vinho Perolas', 2004, 'Tinto', 14.50, 18.50, 2),
(9, 'Rio Doce', 2004, 'Tinto', 14.00, 6.50, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casta`
--
ALTER TABLE `casta`
  ADD PRIMARY KEY (`codCasta`);

--
-- Indexes for table `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD KEY `codVinho` (`codVinho`),
  ADD KEY `codCasta` (`codCasta`);

--
-- Indexes for table `produtor`
--
ALTER TABLE `produtor`
  ADD PRIMARY KEY (`produtorid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `codRegiao` (`codRegiao`);

--
-- Indexes for table `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`idregiao`);

--
-- Indexes for table `vinho`
--
ALTER TABLE `vinho`
  ADD PRIMARY KEY (`vinhoId`),
  ADD KEY `codProdutor` (`codProdutor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casta`
--
ALTER TABLE `casta`
  MODIFY `codCasta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produtor`
--
ALTER TABLE `produtor`
  MODIFY `produtorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `regiao`
--
ALTER TABLE `regiao`
  MODIFY `idregiao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vinho`
--
ALTER TABLE `vinho`
  MODIFY `vinhoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD CONSTRAINT `casta_vinho_ibfk_1` FOREIGN KEY (`codVinho`) REFERENCES `vinho` (`vinhoId`),
  ADD CONSTRAINT `casta_vinho_ibfk_2` FOREIGN KEY (`codCasta`) REFERENCES `casta` (`codCasta`);

--
-- Constraints for table `produtor`
--
ALTER TABLE `produtor`
  ADD CONSTRAINT `produtor_ibfk_1` FOREIGN KEY (`codRegiao`) REFERENCES `regiao` (`idregiao`);

--
-- Constraints for table `vinho`
--
ALTER TABLE `vinho`
  ADD CONSTRAINT `vinho_ibfk_1` FOREIGN KEY (`codProdutor`) REFERENCES `produtor` (`produtorid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
