-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 10:44 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_ahmad`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_mhs`
--

CREATE TABLE `data_mhs` (
  `id` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_mhs`
--

INSERT INTO `data_mhs` (`id`, `nim`, `nama_mahasiswa`, `prodi`, `jk`, `alamat`, `hp`) VALUES
(1, '161240000576', 'Ahmad Maghfur', 'Teknik Informatika', 'L', 'Jakarta', '089758659455'),
(2, '161240000567', 'Anisa', 'Teknik Informatika', 'P', 'Jepara', '089123456700'),
(3, '161240000568', 'fani', 'Teknik Informatika', 'P', 'Jepara', '085847596753'),
(4, '161240000569', 'Zainal', 'Teknik Informatika', 'L', 'Kudus', '085867979705'),
(5, '161240000598', 'M Syahrul', 'Teknik Informatika', 'L', 'Jepara', '081864737306');

--
-- Triggers `data_mhs`
--
DELIMITER $$
CREATE TRIGGER `ubah_hp` BEFORE UPDATE ON `data_mhs` FOR EACH ROW BEGIN INSERT INTO tbl_ubah_hp
SET nim = old.nim,
hp_baru = new.hp,
hp_lama = old.hp,
tgl_ubah = now();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `lihat_db`
-- (See below for the actual view)
--
CREATE TABLE `lihat_db` (
`id` int(11)
,`nim` varchar(20)
,`nama_mahasiswa` varchar(100)
,`prodi` varchar(50)
,`jk` varchar(10)
,`alamat` varchar(150)
,`hp` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ubah_hp`
--

CREATE TABLE `tbl_ubah_hp` (
  `id` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `hp_lama` varchar(30) NOT NULL,
  `hp_baru` varchar(30) NOT NULL,
  `tgl_ubah` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ubah_hp`
--

INSERT INTO `tbl_ubah_hp` (`id`, `nim`, `hp_lama`, `hp_baru`, `tgl_ubah`) VALUES
(1, '161240000566', '089630225482', '089758659456', '2019-11-10 15:07:52'),
(2, '161240000567', '089123456782', '089123456700', '2019-11-10 14:19:43'),
(3, '161240000568', '089123456783', '085847596753', '2019-11-10 14:20:52'),
(4, '161240000569', '089123456784', '085867979705', '2019-11-10 14:21:24'),
(5, '161240000598', '089123456785', '081864737306', '2019-11-10 14:21:46'),
(6, '161240000566', '089758659456', '089758659455', '2019-11-12 16:28:14'),
(7, '161240000567', '089123456700', '089123456700', '2019-11-12 16:28:49'),
(8, '161240000568', '085847596753', '085847596753', '2019-11-12 16:29:12'),
(9, '161240000569', '085867979705', '085867979705', '2019-11-12 16:29:43'),
(10, '161240000598', '081864737306', '081864737306', '2019-11-12 16:30:29');

-- --------------------------------------------------------

--
-- Structure for view `lihat_db`
--
DROP TABLE IF EXISTS `lihat_db`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lihat_db`  AS  (select `data_mhs`.`id` AS `id`,`data_mhs`.`nim` AS `nim`,`data_mhs`.`nama_mahasiswa` AS `nama_mahasiswa`,`data_mhs`.`prodi` AS `prodi`,`data_mhs`.`jk` AS `jk`,`data_mhs`.`alamat` AS `alamat`,`data_mhs`.`hp` AS `hp` from `data_mhs`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_mhs`
--
ALTER TABLE `data_mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ubah_hp`
--
ALTER TABLE `tbl_ubah_hp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_mhs`
--
ALTER TABLE `data_mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_ubah_hp`
--
ALTER TABLE `tbl_ubah_hp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
