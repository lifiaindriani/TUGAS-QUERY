-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2020 at 07:20 pm
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_baju`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_barang`
--

CREATE TABLE IF NOT EXISTS `t_barang` (
  `id_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `harga_barang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_barang`
--

INSERT INTO `t_barang` (`id_barang`, `nama_barang`, `kategori`, `harga_barang`) VALUES
('121', 'Kaos Panjang', 'KK', 100000),
('122', 'Kaos Pendek', 'KL', 150000),
('123', 'piyama', 'KD', 200000),
('124', 'Kemeja', 'KDL', 155000),
('125', 'Blouse Biasa', 'KBK', 250000),
('126', 'Ruffled Blouse', 'LTH', 300000),
('127', 'Laced Blouse', 'KCL', 450000),
('128', 'Jeans', 'KO', 350000),
('129', 'Celana Training', 'KP', 150000),
('130', 'Skinny Jeans', 'KS', 120000),
('131', 'Ripped Jeans', 'STR', 200000),
('132', 'Celana Panjang', 'WL', 300000),
('133', 'HotPants Biasa', 'KB', 350000),
('134', 'Jeans Hotpants', 'KSF', 430000),
('135', 'Celana Kulot', 'KR', 250000),
('136', 'Jeans Pensil', 'TWS', 150000),
('137', 'Sweeter', 'JRS', 120000),
('138', 'Kebaya', 'KRY', 500000),
('139', 'Mess dress', 'KV', 340000),
('140', 'Frilly Dress', 'KK01', 430000),
('141', 'Pattern Dress', 'KL01', 200000),
('142', 'Strippes Dress', 'KD01', 250000),
('143', 'Long Dress', 'KDL01', 130000),
('144', 'Gamis Muslimah', 'KBK01', 400000),
('145', 'Maxi Skirt', 'LTH01', 300000),
('146', 'Mini Skirt', 'KCL01', 350000),
('147', 'Jeand Skirt', 'KO01', 150000),
('148', 'Long Skrit', 'KP01', 200000),
('149', 'Jaket Panjang', 'KS01', 120000),
('150', 'Jaket Levis', 'STR01', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `t_kategori`
--

CREATE TABLE IF NOT EXISTS `t_kategori` (
  `id_kategori` varchar(20) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kategori`
--

INSERT INTO `t_kategori` (`id_kategori`, `nama_kategori`) VALUES
('KK', 'kain Katun'),
('KL', 'Kain Linen'),
('KD', 'Kain Denim'),
('KDL', 'Kain Dill'),
('KBK', 'Kain Baby Kanvas'),
('LTH', 'Leather'),
('KCL', 'Kain Lycra'),
('KO', 'Kain Organza'),
('KP', 'Kain Polyster'),
('KS', 'Kain Suede'),
('STR', 'Sutera'),
('WL', 'Wool'),
('KB', 'Kain brokat'),
('KSF', 'Kain Sifon'),
('KR', 'Kain Rajut'),
('TWS', 'Twiscone'),
('JRS', 'Jersey'),
('KRY', 'Kain Rayon'),
('KV', 'Kain Viscone'),
('KK01', 'kain Katun 01'),
('KL01', 'Kain Linen 01'),
('KD01', 'Kain Denim 01'),
('KDL01', 'Kain Dill 01'),
('KBK01', 'Kain Baby Kanvas 01'),
('LTH01', 'Leather 01'),
('KCL01', 'Kain Lycra 01'),
('KO01', 'Kain Organza 01'),
('KP01', 'Kain Polyster 01'),
('KS01', 'Kain Suede 01'),
('STR01', 'Sutera 01');

-- --------------------------------------------------------

--
-- Table structure for table `t_transaksi`
--

CREATE TABLE IF NOT EXISTS `t_transaksi` (
  `id_transaksi` varchar(20) NOT NULL,
  `no_transaksi` int(20) NOT NULL,
  `id_user` int(20) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `id_barang` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `harga` int(20) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_transaksi`
--

INSERT INTO `t_transaksi` (`id_transaksi`, `no_transaksi`, `id_user`, `tanggal_transaksi`, `id_barang`, `qty`, `harga`, `total`) VALUES
('KK', 113, 1, '2019-01-01', 128, 6, 100000, 600000),
('KL', 114, 2, '2019-01-02', 129, 7, 150000, 1050000),
('KD', 115, 3, '2019-01-03', 130, 8, 200000, 1600000),
('KDL', 116, 4, '2019-01-04', 131, 1, 155000, 155000),
('KBK', 115, 5, '2019-01-05', 132, 2, 250000, 500000),
('LTH', 118, 6, '2019-01-06', 133, 3, 300000, 900000),
('KCL', 140, 7, '2019-01-07', 134, 4, 450000, 1800000),
('KO', 120, 8, '2019-01-08', 135, 5, 350000, 1750000),
('KP', 121, 9, '2019-01-09', 136, 6, 150000, 900000),
('KS', 140, 10, '2019-01-10', 137, 4, 120000, 480000),
('STR', 122, 11, '2019-01-11', 138, 3, 200000, 600000),
('WL', 122, 12, '2019-01-12', 139, 3, 300000, 900000),
('KB', 125, 13, '2019-01-13', 140, 3, 350000, 1050000),
('KSF', 126, 14, '2019-01-14', 141, 3, 430000, 1290000),
('KR', 127, 15, '2019-01-15', 142, 7, 250000, 1750000),
('TWS', 128, 15, '2019-01-16', 143, 6, 150000, 900000),
('JRS', 129, 15, '2019-01-17', 144, 5, 120000, 600000),
('KRY', 130, 15, '2019-01-18', 145, 5, 500000, 2500000),
('KV', 140, 15, '2019-01-19', 146, 5, 340000, 1700000),
('KK01', 140, 15, '2019-01-20', 147, 5, 430000, 2150000),
('KL01', 140, 15, '2019-01-21', 148, 6, 200000, 1200000),
('KD01', 140, 15, '2019-01-22', 149, 7, 250000, 1750000),
('KDL01', 135, 15, '2019-01-23', 150, 8, 130000, 1040000),
('KBK01', 136, 24, '2019-01-24', 151, 9, 400000, 3600000),
('LTH01', 137, 25, '2019-01-25', 152, 10, 300000, 3000000),
('KCL01', 138, 26, '2019-01-26', 153, 10, 350000, 3500000),
('KO01', 140, 27, '2019-01-27', 154, 9, 150000, 1350000),
('KP01', 140, 28, '2019-01-28', 155, 8, 200000, 1600000),
('KS01', 141, 29, '2019-01-29', 156, 11, 120000, 1320000),
('STR01', 140, 30, '2019-01-30', 157, 12, 150000, 1800000);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `id_user` varchar(20) NOT NULL,
  `nama_user` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama_user`) VALUES
('1', 'Lifia'),
('2', 'Siva'),
('3', 'Fera'),
('4', 'Maya'),
('5', 'Peni'),
('6', 'Feni'),
('7', 'Ola'),
('8', 'Indri'),
('9', 'Nina'),
('10', 'Lisna'),
('11', 'Afda'),
('12', 'Puji'),
('13', 'Ima'),
('14', 'Mia'),
('15', 'Sarwani'),
('16', 'Hilmun'),
('17', 'sobir'),
('18', 'Agus'),
('19', 'Feri'),
('20', 'Ferdi'),
('21', 'Nisa'),
('22', 'Ani'),
('23', 'Lusy'),
('24', 'Putri'),
('25', 'Okta'),
('26', 'Rizky'),
('27', 'Vita'),
('28', 'Andre'),
('29', 'Putra'),
('30', 'Ricky');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
