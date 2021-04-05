-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2020 at 12:52 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id13129340_restoran_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `k_pesan`
--

CREATE TABLE `k_pesan` (
  `id` int(11) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `address` varchar(30) NOT NULL,
  `kesan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_pesan`
--

INSERT INTO `k_pesan` (`id`, `fullname`, `gender`, `address`, `kesan`) VALUES
(5, 'masakannya enak :v', 'Laki-Laki', 'Jimbabwe', 'JOSS'),
(6, 'Wira OK', 'Laki-Laki', 'Pati', 'Bagus'),
(7, '', 'Laki-Laki', 'Laki-Laki', ''),
(8, 'OK', 'Laki-Laki', 'Laki-Laki', '1'),
(9, 'gg', 'Laki-Laki', 'gv', 'fv'),
(10, 'aaa', 'Laki-Laki', 'aa', 'aa'),
(11, 'gg', 'Laki-Laki', 'hhh', 'gh'),
(12, 'okehgg', 'Laki-Laki', 'gv', 'vv'),
(13, 'aaa', 'Laki-Laki', 'aa', 'aa'),
(14, 'John', 'Laki-Laki', 'aa', 'aa'),
(15, 'gg', 'Laki-Laki', 'gg', 'gg'),
(16, 'aa', 'Laki-Laki', 'jshs', 'bss'),
(17, 'Sarah', 'Laki-Laki', 'Pati', '123'),
(18, 'aaa', 'Laki-Laki', 'aa', 'aa'),
(19, 'tfhfjh', 'Laki-Laki', 'tg', 'fgvkg'),
(20, 'dhxjxhhdh', 'Laki-Laki', 'yk', 'gj'),
(26, 'dzz', 'Laki-Laki', 'dd', 'dd'),
(30, 'bagus', 'Laki-Laki', 'bagus', 'bagus');

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `no` int(11) NOT NULL,
  `nama_makanan` varchar(30) NOT NULL,
  `asal_makanan` varchar(30) NOT NULL,
  `harga_makanan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`no`, `nama_makanan`, `asal_makanan`, `harga_makanan`) VALUES
(3, 'Nasi Gandul', 'Pati', '696900'),
(4, 'fsy123', 'ds', 'GG s'),
(6, 'yi123', 'fh', 'fy'),
(10, 'Soto Kemiri', 'Pati, Jateng', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `minuman`
--

CREATE TABLE `minuman` (
  `no` int(10) NOT NULL,
  `nama_minuman` varchar(30) NOT NULL,
  `perusahaan` varchar(30) NOT NULL,
  `netto` varchar(10) NOT NULL,
  `sedotan` varchar(10) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `nama_pemesan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minuman`
--

INSERT INTO `minuman` (`no`, `nama_minuman`, `perusahaan`, `netto`, `sedotan`, `tempat`, `nama_pemesan`) VALUES
(4, 'aqua', 'aaa', 'aaa', 'aaa', 'semarang', 'wira'),
(8, 'rdd222', 'dc', 'xx', 'Yes', 'Gelas', 'snsma');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `address` varchar(100) NOT NULL,
  `telp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `password`, `gender`, `address`, `telp`) VALUES
(4, 'aaa', 'aaa', 'aaa', 'aaa', 'Laki-Laki', 'aaa', 'aaa'),
(5, 'www', 'www', 'www3', 'www', 'Laki-Laki', 'www', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `k_pesan`
--
ALTER TABLE `k_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `k_pesan`
--
ALTER TABLE `k_pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `minuman`
--
ALTER TABLE `minuman`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
