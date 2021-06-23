-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 03:24 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peminjaman`
--

-- --------------------------------------------------------

--
-- Table structure for table `pinjambuku`
--

CREATE TABLE `pinjambuku` (
  `id_peminjam` int(11) NOT NULL,
  `judul` text NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `hp` text NOT NULL,
  `tgl_pinjam` datetime NOT NULL,
  `tgl_kembali` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjambuku`
--

INSERT INTO `pinjambuku` (`id_peminjam`, `judul`, `nama`, `alamat`, `hp`, `tgl_pinjam`, `tgl_kembali`, `id`, `IsDeleted`) VALUES
(2, 'Garis Waktu', 'Andhika Wisnu', 'Perum Trias Estate, Cibitung', '081906672203', '2021-01-01 22:38:32', '2021-01-13 20:49:34', 5, b'1'),
(3, 'Jika Kita Tak Pernah Jatuh Cinta', 'Syifa Sabrina', 'Tebet Barat', '08111495004', '2021-01-01 22:39:54', NULL, 3, b'0'),
(4, 'The Maze Runner', 'Yum Thurfah', 'Jl Hibrida X, Bengkulu', '081230491950', '2021-01-01 22:40:45', NULL, 4, b'0'),
(7, 'Matematika Diskrit Revisi Ketujuh', 'Anggita', 'Citra Villa', '082298388282', '2021-01-13 20:52:08', NULL, 13, b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pinjambuku`
--
ALTER TABLE `pinjambuku`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pinjambuku`
--
ALTER TABLE `pinjambuku`
  MODIFY `id_peminjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
