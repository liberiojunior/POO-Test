-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Nov-2017 às 04:59
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_provabanco`
--
CREATE DATABASE IF NOT EXISTS `bd_provabanco` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_provabanco`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `idConta` int(11) NOT NULL,
  `cpfTitular` varchar(14) DEFAULT NULL,
  `idTipoConta` int(11) NOT NULL,
  `agencia` varchar(5) NOT NULL,
  `numeroConta` varchar(6) NOT NULL,
  `dtAbertura` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`idConta`, `cpfTitular`, `idTipoConta`, `agencia`, `numeroConta`, `dtAbertura`) VALUES
(1, '25836914711', 1, '1478', '3647-8', '1987-09-22 00:00:00'),
(2, '15814725863', 5, '4545', '2587-2', '2016-08-20 00:00:00'),
(3, '25454545631', 3, '1478', '2312-1', '1990-10-22 00:00:00'),
(4, '21321554321', 2, '1478', '2534-2', '2010-12-20 00:00:00'),
(5, '35454542123', 1, '4545', '5654-5', '1988-11-22 00:00:00'),
(6, '54542121324', 3, '1478', '2642-2', '2008-08-20 00:00:00'),
(7, '54554212455', 1, '1478', '8242-7', '2000-05-22 00:00:00'),
(8, '56635432348', 2, '1478', '2453-x', '2015-07-10 00:00:00'),
(9, '87987675655', 4, '4545', '2567-8', '1999-06-22 00:00:00'),
(10, '34356546678', 3, '1478', '2648-x', '2003-05-20 00:00:00'),
(11, '45213435546', 1, '1478', '3354-1', '2013-04-22 00:00:00'),
(12, '33545436475', 3, '1348', '2544-2', '2014-03-20 00:00:00'),
(13, '55369554335', 1, '1348', '1657-x', '2008-02-22 00:00:00'),
(14, '12547854711', 2, '1478', '2154-2', '2013-01-20 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoconta`
--

CREATE TABLE `tipoconta` (
  `idTipo` int(11) NOT NULL,
  `descricao` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipoconta`
--

INSERT INTO `tipoconta` (`idTipo`, `descricao`) VALUES
(1, 'Conta Corrente'),
(2, 'Poupança'),
(3, 'CDB'),
(4, 'RDB'),
(5, 'Fundos de Investimentos'),
(6, 'Tesouro Direto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `senha`) VALUES
(1, 'admin@admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`idConta`),
  ADD KEY `idTipoConta` (`idTipoConta`);

--
-- Indexes for table `tipoconta`
--
ALTER TABLE `tipoconta`
  ADD PRIMARY KEY (`idTipo`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conta`
--
ALTER TABLE `conta`
  MODIFY `idConta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tipoconta`
--
ALTER TABLE `tipoconta`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
