-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2015 at 03:56 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `konseling`
--

-- --------------------------------------------------------

--
-- Table structure for table `forum_a`
--

CREATE TABLE IF NOT EXISTS `forum_a` (
  `q_id` int(11) NOT NULL,
  `ans_username` varchar(45) NOT NULL,
  `answer` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_a`
--

INSERT INTO `forum_a` (`q_id`, `ans_username`, `answer`, `timestamp`) VALUES
(1, 'a', 'gatau deh ya :(', '2013-01-14 19:13:16'),
(2, 'b', 'aaaaauah', '2013-01-14 19:37:53'),
(1, 'a', 'aayayayaya', '2013-01-14 19:39:05'),
(1, 'a', 'aaaaaaaaaaaa', '2013-01-14 19:45:28'),
(1, 'a', 'aaaaaaaaaaaaaaaaaaaaa', '2013-01-14 19:45:34'),
(2, 'a', 'lol', '2013-01-14 22:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `forum_q`
--

CREATE TABLE IF NOT EXISTS `forum_q` (
`id` int(8) NOT NULL,
  `nama_topik` varchar(45) NOT NULL,
  `username` varchar(35) NOT NULL,
  `question` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `replies` int(8) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_q`
--

INSERT INTO `forum_q` (`id`, `nama_topik`, `username`, `question`, `timestamp`, `replies`) VALUES
(1, 'Aku g4l4u loch', 'a', '4ku gal4u nich, b4ntu1n d0nkz!', '2013-01-14 19:00:52', 0),
(2, 'aku jug4', 'b', 'aku juga loch', '2013-01-14 19:02:36', NULL),
(3, 'rrrr', 'a', 'rrrr', '2013-01-14 19:34:34', NULL),
(4, 'akuaaaa galau', 'a', 'aaaaa', '2013-01-14 19:35:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `konselor`
--

CREATE TABLE IF NOT EXISTS `konselor` (
`id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `bidang` varchar(35) DEFAULT NULL,
  `foto` varchar(35) DEFAULT NULL,
  `ym` varchar(35) DEFAULT NULL,
  `Jadual` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konselor`
--

INSERT INTO `konselor` (`id`, `username`, `password`, `nama`, `email`, `bidang`, `foto`, `ym`, `Jadual`) VALUES
(0, '0', '0', '0', '0', 'pribadi', '0', 'sinta.wati9110', NULL),
(1, 'a', 'a', 'saya', 'saya@gmail.com', 'akademik', 'ganteng.jpg', 'henryjahja', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(8) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tgl_lahir` varchar(20) DEFAULT NULL,
  `fakultas` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `foto` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `email`, `tgl_lahir`, `fakultas`, `status`, `foto`) VALUES
(1, 'a', 'a', 'Henry Jahja x', 'henryjahja@gmail.com', '1991-03-19', 'Psikologi Binatang', 'Admin', '1.jpg'),
(2, 'b', 'b', 'Annisa Dewanti', 'nnisadhe@gmail.com', '2013-01-08', 'Ilmu Komputer', 'user', 'foto.jpg'),
(3, 'x', 'x', 'Handsome', 'handsome@whatever.com', '2013-01-01', 'Fisioterapi', 'user', 'tampan.jpg'),
(5, 'c', 'c', 'c', 'nnisadhe@gmail.com', '1991-09-30', 'Ilmu Komputer', 'user', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forum_q`
--
ALTER TABLE `forum_q`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `konselor`
--
ALTER TABLE `konselor`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forum_q`
--
ALTER TABLE `forum_q`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `konselor`
--
ALTER TABLE `konselor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
