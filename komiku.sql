-- phpMyAdmin SQL Dump
-- version 4.0.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2013 at 09:52 AM
-- Server version: 5.5.33
-- PHP Version: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `komiku`
--

-- --------------------------------------------------------

--
-- Table structure for table `databuku`
--

CREATE TABLE IF NOT EXISTS `databuku` (
  `id_buku` varchar(11) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `volume` int(11) NOT NULL,
  `persediaan` int(11) NOT NULL,
  `harga_sewa` int(11) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datapengembalian`
--

CREATE TABLE IF NOT EXISTS `datapengembalian` (
  `no_trans` int(11) NOT NULL,
  `id_smartcard` int(11) NOT NULL,
  `tanggalpinjam` date NOT NULL,
  `tanggalkembali` date NOT NULL,
  `denda` int(11) NOT NULL,
  PRIMARY KEY (`no_trans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datapesan`
--

CREATE TABLE IF NOT EXISTS `datapesan` (
  `id_smartcard` int(11) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `volume` int(11) NOT NULL,
  PRIMARY KEY (`id_smartcard`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datauser`
--

CREATE TABLE IF NOT EXISTS `datauser` (
  `id_smartcard` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jeniskelamin` varchar(11) NOT NULL,
  `umur` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `saldo` int(11) NOT NULL,
  PRIMARY KEY (`id_smartcard`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `no_trans` int(11) NOT NULL,
  `id_smartcard` int(11) NOT NULL,
  `id_buku` varchar(11) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `volume` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggalpinjam` date NOT NULL,
  `status` varchar(11) NOT NULL,
  PRIMARY KEY (`no_trans`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pinjamtemp`
--

CREATE TABLE IF NOT EXISTS `pinjamtemp` (
  `id_smartcard` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `volume` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_smartcard`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksisaldo`
--

CREATE TABLE IF NOT EXISTS `transaksisaldo` (
  `no_trans` int(11) NOT NULL,
  `id_smartcard` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
