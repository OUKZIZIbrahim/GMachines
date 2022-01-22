-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2022 at 08:01 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jdbc`
--

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `id` int(11) NOT NULL,
  `reference` varchar(20) NOT NULL,
  `dateAchat` date NOT NULL,
  `prix` double NOT NULL,
  `marque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`id`, `reference`, `dateAchat`, `prix`, `marque`) VALUES
(23, 'r77', '2022-01-01', 5400, 10),
(32, 'eeee', '2022-01-21', 4569, 7),
(33, 'r1', '2022-01-08', 4444, 4),
(37, '999', '2022-01-20', 156.5, 15),
(38, '6666', '2022-02-03', 5555, 15),
(41, '54gg', '2022-01-01', 75876, 15),
(43, 'ttt', '2022-01-12', 78965, 19),
(44, 'rttg', '2022-01-01', 555, 4);

-- --------------------------------------------------------

--
-- Table structure for table `marque`
--

CREATE TABLE `marque` (
  `id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marque`
--

INSERT INTO `marque` (`id`, `code`, `libelle`) VALUES
(4, 'asus', 'Asus'),
(5, 'alien ware', 'Alien Ware'),
(7, 'msi', 'MSI'),
(10, 'Acer', 'Acer'),
(13, '9846', 'bbbb'),
(15, 'razer', 'razer'),
(18, 'kkkk111', 'kkkk111'),
(19, 'legion', 'legion');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `username`, `mdp`) VALUES
(6, 'ii', 'ii', 'iii', 'iii'),
(7, 'oo', 'oo', 'oo', 'oo123456'),
(8, 'ppp', 'ppp', 'ppp', 'ppp1834'),
(9, 'link', 'mario', 'link89@gmail.com', 'mario1834'),
(10, 'mario', 'link', 'mario.link89@gmail.com', 'mario1834'),
(11, 'bbbb', 'bbb', 'bbb', 'bbbb'),
(12, 'ouk', 'ibra', 'ibra', 'ibra1834'),
(13, 'ouk', 'ouk', 'ouk', 'ouk1834'),
(14, 'jack', 'bizarius', 'jack77@gmail.com', 'jack1834'),
(15, 'oukziz', 'ibrahim', 'ibrahim.oukziz@gmail.com', 'ibrahim1834'),
(16, 'guts', 'guts', 'guts@gmail.com', 'guts1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marque` (`marque`);

--
-- Indexes for table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `marque`
--
ALTER TABLE `marque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
