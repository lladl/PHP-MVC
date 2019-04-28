-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 04:29 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `email`, `jurusan`) VALUES
(1, 'Bima Sakti Nugroho', '2016230155', 'bima.27kd@yahoo.com', 'Tehnik Informatika'),
(2, 'Gidod Blazensky', '2016230122', 'fakku@yahoo.com', 'Tehnik Informatika'),
(3, 'Han Willsky Unlimitedd', '2016230122', 'HandsUpShaggy@yahoo.com', 'Tehnik Informatika'),
(4, 'Alva The Boner', '2016230144', 'alvagazebo@gmail.com', 'Tehnik Informatika'),
(6, 'Sahat D Marpaungkz Alwys Rancidxx', '2016230199', 'sahatfuckmulu@yahoo.com', 'Tehnik Informatika'),
(8, 'Kitinkz Brookz wannabe', '2016239522', 'kitinkbrooklyn@yahoo.com', 'Tehnik Informatika'),
(13, 'Danz 12$Division of Whiteberd ', '2016230145', 'danzgameExplain@yahoo.com', 'Tehnik Informatika'),
(14, 'Berto\'s The Lair Of Awakening', '2016230254', 'bertodanakkosan@yahoo.com', 'Tehnik Informatika'),
(19, 'FAKKUYTTT31333', '222222333', 'bima.27kd@yahoo.com333', 'Tehnik Elektro');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
