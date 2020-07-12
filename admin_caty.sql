-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2020 at 05:19 AM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_caty`
--

-- --------------------------------------------------------

--
-- Table structure for table `cty_kriteria`
--

CREATE TABLE `cty_kriteria` (
  `kd_kriteria` varchar(3) NOT NULL,
  `nama_kriteria` varchar(20) NOT NULL,
  `nilai_kriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cty_kriteria`
--

INSERT INTO `cty_kriteria` (`kd_kriteria`, `nama_kriteria`, `nilai_kriteria`) VALUES
('C1', 'Jurusan', 2.5),
('C2', 'Pengalaman', 3),
('C3', 'Psikotes', 1.5),
('C4', 'Wawancara', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cty_nilai_pelamar`
--

CREATE TABLE `cty_nilai_pelamar` (
  `id` int(11) NOT NULL,
  `id_pelamar` int(11) NOT NULL,
  `jurusan` int(2) NOT NULL,
  `pengalaman` int(2) NOT NULL,
  `psikotes` int(2) NOT NULL,
  `wawancara` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cty_nilai_pelamar`
--

INSERT INTO `cty_nilai_pelamar` (`id`, `id_pelamar`, `jurusan`, `pengalaman`, `psikotes`, `wawancara`) VALUES
(1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cty_pelamar`
--

CREATE TABLE `cty_pelamar` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `no_telp` varchar(16) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `umur` int(3) NOT NULL,
  `pend_terakhir` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `tipe_pelamar` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL,
  `insert_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cty_pelamar`
--

INSERT INTO `cty_pelamar` (`id`, `nama`, `alamat`, `email`, `no_telp`, `tanggal_lahir`, `jenis_kelamin`, `umur`, `pend_terakhir`, `jurusan`, `tipe_pelamar`, `status`, `insert_at`) VALUES
(1, 'Catellya Faralisha', 'jalan kusuma timur raya', 'catellyafrs@gmail.com', '081315656535', '1999-03-14', 'Pria', 22, 'S2', 'Psikolog', 'Berpengalaman', 'Menikah', '2020-06-08 18:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `cty_user`
--

CREATE TABLE `cty_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `msisdn` varchar(15) NOT NULL,
  `password` varchar(65) NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cty_user`
--

INSERT INTO `cty_user` (`id`, `name`, `email`, `msisdn`, `password`, `last_login`) VALUES
(1, 'Catellya Faralisha', 'cty@gmail.com', '081315656535', '$2y$10$B29B5WKQAb56epIi.xuqwOGaw9OUHoS/7Yu0DZJh4cYHq.wQ1Y/We', '2020-03-15 11:26:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cty_kriteria`
--
ALTER TABLE `cty_kriteria`
  ADD PRIMARY KEY (`kd_kriteria`),
  ADD UNIQUE KEY `kd_kriteria` (`kd_kriteria`),
  ADD UNIQUE KEY `kd_kriteria_2` (`kd_kriteria`);

--
-- Indexes for table `cty_nilai_pelamar`
--
ALTER TABLE `cty_nilai_pelamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cty_pelamar`
--
ALTER TABLE `cty_pelamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cty_user`
--
ALTER TABLE `cty_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cty_nilai_pelamar`
--
ALTER TABLE `cty_nilai_pelamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cty_pelamar`
--
ALTER TABLE `cty_pelamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cty_user`
--
ALTER TABLE `cty_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
