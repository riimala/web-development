-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 07:13 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vero`
--

-- --------------------------------------------------------

--
-- Table structure for table `hankinnat`
--

CREATE TABLE `hankinnat` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PVM` date DEFAULT current_timestamp(),
  `Laji` varchar(100) DEFAULT NULL,
  `Hankinta` varchar(200) DEFAULT NULL,
  `Liike` varchar(200) DEFAULT NULL,
  `Hinta` double DEFAULT NULL,
  `ALV` double DEFAULT NULL,
  `MyyntiVero` double NOT NULL,
  `Tilitys` double DEFAULT NULL,
  `Oma` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'Ei'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hankinnat`
--

INSERT INTO `hankinnat` (`ID`, `PVM`, `Laji`, `Hankinta`, `Liike`, `Hinta`, `ALV`, `MyyntiVero`, `Tilitys`, `Oma`) VALUES
(1, '2021-02-18', 'Kotitalousvähennys', 'Käytetty yrityskäytössä ollut tietokone (alv 0)', 'Data Group Oy Tuusula', 100, 40, 0, NULL, 'Kyllä'),
(26, '2021-03-11', 'Kotitalousvähennys', 'Tervolan kiinteistövero erääntyy 16.8.2021', 'OmaVero', 11.72, 0, 0, NULL, 'Kyllä'),
(43, '2021-02-19', 'Puukauppa', '', '', 10500, 2520, 3150, 11025, 'Ei');

-- --------------------------------------------------------

--
-- Table structure for table `matkakulut`
--

CREATE TABLE `matkakulut` (
  `ID` int(11) NOT NULL,
  `Matka` varchar(400) CHARACTER SET latin1 NOT NULL,
  `Alku` date NOT NULL,
  `Loppu` date NOT NULL DEFAULT current_timestamp(),
  `Syy` varchar(200) CHARACTER SET latin1 NOT NULL,
  `Pituus` int(11) NOT NULL,
  `Vähennys` double NOT NULL,
  `Kirjattu` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'Ei'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matkakulut`
--

INSERT INTO `matkakulut` (`ID`, `Matka`, `Alku`, `Loppu`, `Syy`, `Pituus`, `Vähennys`, `Kirjattu`) VALUES
(22, 'Tuusula - Tervola -Tuusula', '2021-05-26', '2021-05-30', 'Metsänhoito', 1500, 660, 'Ei');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hankinnat`
--
ALTER TABLE `hankinnat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `matkakulut`
--
ALTER TABLE `matkakulut`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hankinnat`
--
ALTER TABLE `hankinnat`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `matkakulut`
--
ALTER TABLE `matkakulut`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
