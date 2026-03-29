-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2026 at 06:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socmed_canilloc`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `aid` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `password` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`aid`, `email`, `firstname`, `lastname`, `password`) VALUES
(1, 'karess@ol', 'karess', 'sheen', '12345'),
(3, 'karess@on', 'Sheen', 'Canillo', '111'),
(13, 'lloyd@ol', 'Lloyd', 'Ruiz', '$2y$10$LwxW/1NBMrbRGqjBMl0nyeC23/jKKMIRvlhJIi4rPHutfg/FbwZ.G'),
(14, 'karess@gmail', 'Karess Sheen', 'Canillo', '$2y$10$jDrl07jHS7T3IfPjhm.vo./iDBNYXrALoLeAsIZSqLP1MRXwJ63Gm');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `post_text` text NOT NULL,
  `post_date` date NOT NULL,
  `post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`pid`, `aid`, `post_text`, `post_date`, `post`) VALUES
(5, 1, 'hi', '2026-03-29', 0),
(10, 1, 'hello', '2026-03-29', 0),
(12, 1, 'I am a coffee lover\r\n', '2026-03-29', 0),
(13, 14, 'I&#039;m in london', '2026-03-30', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `aid` (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `account` (`aid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
