-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 04:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myapotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_obat`
--

CREATE TABLE `data_obat` (
  `id_obat` char(10) NOT NULL,
  `nama_obat` varchar(40) NOT NULL,
  `harga` char(15) NOT NULL,
  `stock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_obat`
--

INSERT INTO `data_obat` (`id_obat`, `nama_obat`, `harga`, `stock`) VALUES
('', 'paracetamol', '5000', 20);

-- --------------------------------------------------------

--
-- Table structure for table `data_pelanggan`
--

CREATE TABLE `data_pelanggan` (
  `id_pelanggan` char(10) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_pelanggan`
--

INSERT INTO `data_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `alamat`) VALUES
('', 'awi', 'laki-laki', 'bukulasa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_obat`
--
ALTER TABLE `data_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  ADD CONSTRAINT `data_pelanggan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `data_obat` (`id_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
