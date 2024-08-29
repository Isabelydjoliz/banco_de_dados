-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/08/2024 às 14:10
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
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluguel`
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

--
-- Despejando dados para a tabela `aluguel`
--

INSERT INTO `aluguel` (`IDaluguel`, `datafim`, `valor`, `datainicio`, `tipocontrato`, `datavencimento`, `descri`, `IDinquilino`, `IDimovel`, `IDcorretor`) VALUES
(1, '2027-08-18', 99.99, '2022-08-18', '--', '15', '--', 1, 1, 1),
(2, '2025-11-01', 99.99, '2020-11-01', '--', '05', '--', 2, 2, 2),
(3, '2026-05-24', 99.99, '2022-05-24', '--', '01', '--', 3, 3, 3),
(4, '2025-01-09', 99.99, '2020-01-09', '--', '05', '--', 4, 4, 4),
(5, '2028-03-19', 99.99, '2018-03-19', '--', '25', '--', 5, 5, 5),
(6, '2028-10-16', 99.99, '2018-10-16', '--', '25', '--', 6, 6, 6),
(7, '2027-03-16', 99.99, '2017-03-16', '--', '05', '--', 7, 7, 7),
(8, '2024-12-20', 99.99, '2019-12-20', '--', '01', '--', 8, 8, 8),
(9, '2029-05-23', 99.99, '2024-05-23', '--', '10', '--\r\n', 9, 9, 9),
(10, '2028-07-10', 99.99, '2023-07-10', '--', '01', '--', 10, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `corretor`
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

--
-- Despejando dados para a tabela `corretor`
--

INSERT INTO `corretor` (`IDcorretor`, `nascimento`, `RG`, `telefone`, `email`, `nome`, `CPF`, `cidade`, `bairro`, `rua`, `numerocasa`, `complemento`) VALUES
(1, '1999-11-29', '43-111.676-7', '11 97432-4111', 'paulacorretora@gmail.com', 'Paula Coelho', '635.111.279-89', 'Santo André', 'Centro', 'Rua Presidencial', '315', 'Sala 3'),
(2, '1986-09-18', '55-222.632-5', '11 98273-6222', 'andreiacorretora@gmail.com', 'Andreia Carvalho', '543.222.543-57', 'Mauá', 'Parque das Américas', 'Rua Arco 3', '543', 'sem complemento'),
(3, '1977-03-26', '86-333.653-7', '11 93784-4333', 'andrecorretor@gmail.com', 'André Costa', '366.333.907-07', 'Mauá', 'Vila Assis', 'Rua Anelinda', '632', 'sem complemento'),
(4, '1967-10-03', '56-444.847-8', '11 98836-9444', 'paulocorretor@gmail.com', 'Paulo Motta', '684.444.468-85', 'Ribeirão Pires', 'Centro', 'Rua Avenida Fortuna', '45', 'Sala 32'),
(5, '1987-11-28', '46-555.925-7', '11 92004-5555', 'lindianecorretora@gmail.com', 'Lindiane Silva', '545.555.579-29', 'Ribeirão Pires', 'Centro', 'Rua Afranio Peixoto', '20', 'Segundo andar'),
(6, '1989-01-15', '46-666.985-9', '11 98267-9666', 'hectorcorretor@gmail.com', 'Hector Lima', '954.666.505-65', 'Ribeirão Pires', 'Centro', 'Rua do Comércio', '79', 'sem complemento'),
(7, '1990-04-11', '79-777.943-0', '11 98816-0777', 'nicolecorretora@gmail.com', 'Nicole Santos', '593.777.035-06', 'Mauá', 'Centro', 'Rua da Matriz', '82', 'sem complemento'),
(8, '1968-07-09', '34-888.043-6', '11 90083-4888', 'robertocorretor@gmail.com', 'Roberto Alvez', '348.888.932-64', 'Mauá', 'Centro', 'Rua da Matriz', '66', 'sem complemento'),
(9, '1969-11-19', '23-999.643-9', '11 94379-5999', 'carmencorretora@gmail.com', 'Carmen Altine', '965.999.965-32', 'Santo André', 'Via pires', 'Rua Saudação', '389', 'Sala 35'),
(10, '1989-06-23', '65-101.092-3', '11 96279-1010', 'ceciliacorretora@gmail.com', 'Cecilia Clims', '467.101.068-97', 'Santo André', 'Via pires', 'Rua Saudação', '389', 'Sala 36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fiador`
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

--
-- Despejando dados para a tabela `fiador`
--

INSERT INTO `fiador` (`IDfiador`, `nascimento`, `nome`, `CPF`, `telefone`, `email`, `RG`) VALUES
(1, '1999-07-08', 'Sabrina Carpnter', '111.278.279-89', '11 91126-2778', 'miniloirinhapop@gmail.com', '11-378.029-0'),
(2, '1988-11-24', 'Taylor Swift', '222.432.312-32', '11 92229-0083', 'loirinhadopop@gmail.com', '22-432.223-9'),
(3, '1999-12-10', 'Billie Eilish', '333.132.356-43', '11 93374-3356', 'thegreatest@gmail.com', '33-876.098-6'),
(4, '1989-06-05', 'Bruno Mars', '444.547.947-08', '11 94498-9790', 'wiwym@gmail.com', '44-976.463-6'),
(5, '1997-08-16', 'Ariana Grande', '555.453.876-54', '11 95502-5004', 'catforever@gmail.com', '55-456.364-0'),
(6, '1986-10-06', 'Abel', '666.976.435-76', '11 96632-8446', 'abel0234@gmail.com', '66-674.459-4'),
(7, '1986-08-16', 'Lana del Rey', '77.465.008-43', '11 96632-8446', 'delrey09@gmail.com', '77-453.768-6'),
(8, '1996-09-21', 'Olivia Rodrigo', '88.765.678-21', '11 98871-9764', 'highschool_musical@gmail.com', '88-246.682-5'),
(9, '1996-06-13', 'Charli', '99.574.534-56', '11 99913-4621', 'xcx_brat@gmail.com', '99-566.434-5'),
(10, '1992-06-13', 'Doja', '10.325.106-10', '11 91010-5742', 'dojadog@gmail.com', '10-356.180-1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imovel`
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
  `IDproprietario` int(11) DEFAULT NULL,
  `qtdcomodos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `imovel`
--

INSERT INTO `imovel` (`IDimovel`, `bairro`, `estado`, `cidade`, `rua`, `complemento`, `areatotal`, `pais`, `suite`, `garagem`, `numerocasa`, `alugado`, `banheiro`, `quarto`, `vagasgaragem`, `quintal`, `lavanderia`, `piscina`, `areaconstruida`, `IDproprietario`, `qtdcomodos`) VALUES
(1, 'Jardim Maristela', 'São Paulo', 'Ribeirão Pires', 'Ernesto Alves', 'sem complemento', 198.00, 'Brasil', 1, b'1', '476', b'1', 2, 2, 1, b'1', b'1', b'0', 150.00, 1, NULL),
(2, 'Imperatriz', 'São Paulo', 'Jundiaí', 'Rua estrada do ferrador', 'sem complemento', 300.00, 'Brasil', 3, b'1', '49', b'1', 5, 2, 3, b'1', b'1', b'1', 250.00, 2, NULL),
(3, 'Jardins', 'São Paulo', 'São Paulo', 'Limoeiro', 'sem complemento', 235.00, 'Brasil', 2, b'1', '54', b'1', 4, 2, 2, b'1', b'1', b'1', 198.00, 3, NULL),
(4, 'Mirante Verde', 'São Paulo', 'São Paulo', 'Augusta', 'Quinto andar, apartamento com área externa', 112.00, 'Brasil', 2, b'1', '52', b'1', 3, 1, 1, b'0', b'1', b'0', 105.00, 4, NULL),
(5, 'Vila Nova', 'São Paulo', 'São Paulo', 'Aurora Boreal', 'sem complemento', 150.00, 'Brasil', 1, b'1', '24', b'1', 3, 2, 2, b'1', b'1', b'1', 118.00, 5, NULL),
(6, 'Capim Dorado', 'São Paulo', 'Várzea Paulista', 'Esmeralda', 'sem complemento', 200.00, 'Brasil', 2, b'1', '536', b'1', 4, 2, 3, b'1', b'1', b'1', 167.00, 6, NULL),
(7, 'Riacho Fundo', 'São Paulo', 'Socrro', 'Nitorial', 'sem complemento', 523.00, 'Brasil', 4, b'1', '976', b'1', 6, 2, 4, b'1', b'1', b'1', 586.00, 7, NULL),
(8, 'Mato Verde', 'São Paulo', 'Moca', 'Vento Limpo', 'sem complemento', 77.00, 'Brasil', 1, b'1', '12', b'1', 2, 1, 1, b'0', b'1', b'0', 77.00, 8, NULL),
(9, 'Rio Claro', 'São Paulo', 'Bauru', 'Estrada do campo', 'sem complemento', 84.00, 'Brasil', 2, b'1', '85', b'1', 3, 1, 1, b'1', b'1', b'0', 74.00, 9, NULL),
(10, 'Vinhedo', 'São Paulo', 'França', 'Itália', 'sem complemento', 123.00, 'Brasil', 2, b'1', '78', b'1', 3, 1, 2, b'1', b'1', b'1', 99.00, 10, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `IDinquilino` int(11) NOT NULL,
  `nascimento` date NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `RG` varchar(15) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `IDfiador` int(11) DEFAULT NULL,
  `salario` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `inquilino`
--

INSERT INTO `inquilino` (`IDinquilino`, `nascimento`, `CPF`, `email`, `RG`, `nome`, `telefone`, `IDfiador`, `salario`) VALUES
(1, '1999-10-18', '932.325.111-45', 'luisasonza@gmail.com', '43-432.111-8', 'Luiza Sonza', '11 91102-1182', 1, 5070.00),
(2, '1989-02-09', '123.545.222-06', 'bacoexu@gmail.com', '38-954.222-5', 'Baco Exu', '11 92278-2275', 2, 6300.00),
(3, '1997-02-09', '596.987.333-79', 'carolbiazin@gmail.com', '43-922.333-7', 'Carol Biazin', '11 93302-3345', 3, 4570.00),
(4, '1998-07-16', '425.078.444-07', 'sofiasantino@gmail.com', '87-765.444-0', 'Sofia Santino', '11 94405-4493', 4, 7420.00),
(5, '1998-04-24', '078.456.555-54', 'doarda@gmail.com', '85-854.555-8', 'Doarda', '11 95574-5566', 5, 4790.00),
(6, '1996-11-10', '676.679.666-09', 'leticiapanamar@gmail.com', '75-796.666-9', 'Letícia Panamar', '11 96673-6676', 6, 5260.00),
(7, '1988-02-17', '590.357.777-23', 'jeanluca@gmail.com', '65-732.777-7', 'Jean Luca', '11 97724-7732', 7, 9860.00),
(8, '1999-10-11', '556.113.888-54', 'bruninzor@gmail.com', '57-123.888-8', 'Bruno', '11 98893-8899', 8, 7230.00),
(9, '1999-05-17', '790.232.999-34', 't3ddy@gmail.com', '09-326.999-9', 'Lucas Olioti', '11 99993-9987', 9, 7850.00),
(10, '1997-03-03', '029.289.101-05', 'larissamanoela@gmail.com', '45-485.101-0', 'Larissa Manoela', '11 91010-1099', 10, 4780.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `midias`
--

CREATE TABLE `midias` (
  `IDmidia` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `IDimovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `proprietario`
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
-- Despejando dados para a tabela `proprietario`
--

INSERT INTO `proprietario` (`IDproprietario`, `nascimento`, `rua`, `cidade`, `numerocasa`, `numerocelular`, `CPF`, `pais`, `bairro`, `RG`, `nome`, `estado`, `cep`, `email`, `contabancaria`, `pix`, `banco`, `agencia`) VALUES
(1, '1999-09-08', 'Rua da esquina Dupla', 'Ribeirão Pires', '30', '11 98762-8743', '125.667.978-34', 'Brasil', 'Santa Luzia', '62-673.536-0', 'Carolina', 'São Paulo', '43250-040', 'carolinalinda@gmail.com', '010-54327865', '11 98762-8743', 'itaú', '010'),
(2, '1999-02-17', 'Rua da Alegria', 'Ribeirão Pires', '298', '11 93625-9872', '762.256.888-09', 'Brasil', 'Quarta Dimensão', '73-134.092-8', 'Letícia', 'São Paulo', '42361-090', 'leledograu@gmail.com', '290-76245902', '11 93625-9872', 'santander', '290'),
(3, '1999-12-04', 'Rua Janelinha', 'Ribeirão Pires', '43', '11 98764-1128', '534.009.988-10', 'Brasil', 'Centro', '39-098.153-8', 'Luana', 'São Paulo', '09814-050', 'blogdalu@gmail.com', '120-87191528', 'blogdalu@gmail.com', 'Banco do Brasil', '120'),
(4, '1999-05-14', 'Rua de Terra', 'Mauá', '378', '11 98142-1176', '816.116.008-09', 'Brasil', 'Guapituba', '98-256.887-0', 'Raphaela', 'São Paulo', '09776-700', 'filhadohoender@gmail.com', '676-88522538', 'filhadohoender@gmail.com', 'Nubank', '676'),
(5, '1999-07-12', 'Rua do Capim Dourado', 'Ribeirão Pires', '109', '11 99972-0091', '871.997.778-23', 'Brasil', 'Roncom', '49-112.009-0', 'Camila', 'São Paulo', '04059-020', 'camisdobrunomars@gmail.com', '902-00167392', '11 99972-0091', 'Nubank', '902'),
(6, '1999-11-16', 'Rua Arnaldinho', 'Ribeirão Pires', '278', '11 95781-8304', '240.777.928-27', 'Brasil', 'Nova Suíça', '34-886.432-7', 'Isabely', 'São Paulo', '04055-080', 'isabelyeilish@gmail.com', '091-85133428', 'isabelyeilish@gmail.com', 'Inter', '091'),
(7, '1981-04-09', 'Rua Parralelepípedo Torto', 'Ribeirão Pires', '278', '11 95307-8099', '145.367.298-14', 'Brasil', 'Centro Alto', '32-124.324-0', 'Heuller', 'São Paulo', '98268-040', 'heullerdjoliz1@gmail.com', '872-01872537', 'heullerdjoliz1@gmail.com', 'santander', '872'),
(8, '1981-12-03', 'Rua Parralelepípedo Torto', 'Ribeirão Pires', '278', '11 96346-0987', '300.155.558-06', 'Brasil', 'Centro Alto', '54-321.432-2', 'Susi', 'São Paulo', '98268-040', 'susidjoliz@gmail.com', '987-09889726', '11 96346-0937', 'Stone', '987'),
(9, '1954-02-22', 'Rua Cirandinha', 'Ribeirão Pires', '187', '11 94467-0981', '673.234.098-02', 'Brasil', 'Parque Aliança', '54-234.543-4', 'Sirley', 'São Paulo', '54321-432', 'donaleila@gmail.com', '900-98527385', '11 94467-0981', 'Nubank', '900'),
(10, '1952-05-04', 'Rua Paralelepípedo Torto', 'Ribeirão Pires', '144', '11 90082-2178', '982.321.008-05', 'Brasil', 'Centro Alto', '43-327.773-3', 'Maria Luiza', 'São Paulo', '98268-040', 'donamarilu@gmail.com', '456-23672893', 'donamarilu@gmail.com', 'Santander', '456');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`IDaluguel`),
  ADD KEY `IDimovel` (`IDimovel`),
  ADD KEY `IDinquilino` (`IDinquilino`),
  ADD KEY `IDcorretor` (`IDcorretor`);

--
-- Índices de tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`IDcorretor`),
  ADD UNIQUE KEY `RG` (`RG`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Índices de tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`IDfiador`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `RG` (`RG`);

--
-- Índices de tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`IDimovel`),
  ADD KEY `IDproprietario` (`IDproprietario`);

--
-- Índices de tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`IDinquilino`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `RG` (`RG`),
  ADD KEY `IDfiador` (`IDfiador`);

--
-- Índices de tabela `midias`
--
ALTER TABLE `midias`
  ADD PRIMARY KEY (`IDmidia`),
  ADD KEY `IDimovel` (`IDimovel`);

--
-- Índices de tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`IDproprietario`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD UNIQUE KEY `RG` (`RG`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `IDaluguel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `IDcorretor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `IDfiador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `IDimovel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `IDinquilino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `midias`
--
ALTER TABLE `midias`
  MODIFY `IDmidia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `IDproprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`IDimovel`) REFERENCES `imovel` (`IDimovel`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`IDinquilino`) REFERENCES `inquilino` (`IDinquilino`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`IDcorretor`) REFERENCES `corretor` (`IDcorretor`);

--
-- Restrições para tabelas `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`IDproprietario`) REFERENCES `proprietario` (`IDproprietario`);

--
-- Restrições para tabelas `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`IDfiador`) REFERENCES `fiador` (`IDfiador`);

--
-- Restrições para tabelas `midias`
--
ALTER TABLE `midias`
  ADD CONSTRAINT `midias_ibfk_1` FOREIGN KEY (`IDimovel`) REFERENCES `imovel` (`IDimovel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
