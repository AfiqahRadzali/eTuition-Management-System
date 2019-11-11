-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 16, 2019 at 03:52 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etuisyen`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `no_telefon` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `content`, `no_telefon`) VALUES
(36, 'AFIQAH', '');

-- --------------------------------------------------------

--
-- Table structure for table `matapelajaran`
--

CREATE TABLE `matapelajaran` (
  `id` int(11) NOT NULL,
  `id_pengajar` varchar(20) NOT NULL,
  `kod_matapelajaran` varchar(34) DEFAULT NULL,
  `nama_matapelajaran` varchar(200) DEFAULT NULL,
  `kod_peperiksaan` varchar(10) DEFAULT NULL,
  `tahun_tingkatan` varchar(100) DEFAULT NULL,
  `day` varchar(20) NOT NULL,
  `room` varchar(20) NOT NULL,
  `yuran` decimal(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matapelajaran`
--

INSERT INTO `matapelajaran` (`id`, `id_pengajar`, `kod_matapelajaran`, `nama_matapelajaran`, `kod_peperiksaan`, `tahun_tingkatan`, `day`, `room`, `yuran`) VALUES
(169, ' INS_167', 'BAHASA MELAYU', 'BAHASA MELAYU', 'UPSR', 'Year5', 'MONDAY', 'ROOM 1', '50.00'),
(170, ' INS_352', 'ENGLISH', 'ENGLISH', 'UPSR', 'Year5', 'TUESDAY', 'ROOM 1', '50.00'),
(171, ' INS_102', 'SCIENCE', 'SCIENCE', 'UPSR', 'Year5', 'WEDNESDAY', 'ROOM 1', '50.00'),
(172, ' INS_286', 'MATHEMATICS', 'MATHEMATICS', 'UPSR', 'Year5', 'THURSDAY', 'ROOM 1', '50.00'),
(173, ' INS_212', 'BAHASA MELAYU', 'BAHASA MELAYU', 'PT3', 'Form3', 'TUESDAY', 'ROOM 2', '50.00'),
(174, ' INS_266', 'ENGLISH', 'ENGLISH', 'PT3', 'Form3', 'MONDAY', 'ROOM 2', '50.00'),
(175, ' INS_257', 'SCIENCE', 'SCIENCE', 'PT3', 'Form3', 'THURSDAY', 'ROOM 2', '50.00'),
(176, ' INS_278', 'MATHEMATICS', 'MATHEMATICS', 'PT3', 'Form3', 'WEDNESDAY', 'ROOM 2', '50.00'),
(177, ' INS_281', 'GEOGRAPHY', 'GEOGRAPHY', 'PT3', 'Form3', 'FRIDAY', 'ROOM 1', '50.00'),
(178, ' INS_791', 'SEJARAH', 'SEJARAH', 'PT3', 'Form3', 'SATURDAY', 'ROOM 1', '50.00'),
(179, ' INS_261', 'BAHASA MELAYU', 'BAHASA MELAYU', 'SPM', 'Form5', 'THURSDAY', 'ROOM 3', '50.00'),
(180, ' INS_145', 'ENGLISH', 'ENGLISH', 'SPM', 'Form5', 'FRIDAY', 'ROOM 2', '50.00'),
(181, ' INS_157', 'MATHEMATICS', 'MATHEMATICS', 'SPM', 'Form5', 'TUESDAY', 'ROOM 3', '50.00'),
(182, ' INS_320', 'SEJARAH', 'SEJARAH', 'SPM', 'Form5', 'SATURDAY', 'ROOM 2', '50.00'),
(183, ' INS_827', 'SCIENCE', 'SCIENCE', 'SPM', 'Form5', 'MONDAY', 'ROOM 1', '50.00'),
(184, ' INS_162', 'BIOLOGY', 'BIOLOGY', 'SPM', 'Form5', 'MONDAY', 'ROOM 3', '60.00'),
(185, ' INS_112', 'PHYSICS', 'PHYSICS', 'SPM', 'Form5', 'SUNDAY', 'ROOM 1', '60.00'),
(186, ' INS_151', 'CHEMISTRY', 'CHEMISTRY', 'SPM', 'Form5', 'WEDNESDAY', 'ROOM 3', '60.00');

-- --------------------------------------------------------

--
-- Table structure for table `pelajar`
--

CREATE TABLE `pelajar` (
  `id` int(11) NOT NULL,
  `id_pelajar` varchar(25) DEFAULT NULL,
  `katalaluan` varchar(25) DEFAULT NULL,
  `no_ic` varchar(12) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tahun_tingkatan` varchar(100) DEFAULT NULL,
  `kod_peperiksaan` varchar(100) DEFAULT NULL,
  `nama_sekolah` varbinary(150) DEFAULT NULL,
  `jantina` varchar(25) DEFAULT NULL,
  `nama_penjaga` varchar(200) DEFAULT NULL,
  `no_telefon` varchar(25) DEFAULT NULL,
  `pertalian` varchar(100) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `aras` varchar(25) DEFAULT NULL,
  `tahun_dftr` year(4) DEFAULT NULL,
  `bulan_dftr` smallint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajar`
--

INSERT INTO `pelajar` (`id`, `id_pelajar`, `katalaluan`, `no_ic`, `nama`, `alamat`, `tahun_tingkatan`, `kod_peperiksaan`, `nama_sekolah`, `jantina`, `nama_penjaga`, `no_telefon`, `pertalian`, `status`, `aras`, `tahun_dftr`, `bulan_dftr`) VALUES
(102, '041202135644', '041202135644', '041202135644', 'PUTERI ILYANA', '56, JALAN SUTERA 15,TAMAN MEGAH', 'Form3', 'PT3', 0x534d4b204b414a414e47204241524154, 'Perempuan', 'FATIMAH BINTI ZAHAR', '+60197357109', 'mother', 'Active', 'Student', 2019, 5),
(106, '041602145243', '041602145243', '041602145243', 'FITRI YAHYA BIN ABU BAKAR', '22, JLN MAWAR 7, TAMAN MAWAR', 'Form3', 'PT3', 0x534d4b2054414d414e205041534952205055544948, 'Lelaki', 'ABU BAKAR BUN SUKRI', NULL, 'father', 'Active', 'Student', 2019, 8),
(107, '041705016533', '041705016533', '041705016533', 'AHMAD EDHAM BIN SULAIMAN', '100 JLN MANGGA 13, TAMAN KOTA MASAI', 'Form3', 'PT3', 0x534d4b204b4f5441204d41534149, 'Lelaki', 'SAMSIAH BINTI AHMAD', NULL, 'mother', 'Active', 'Student', 2019, 6),
(108, '052405237246', '052405237246', '052405237246', 'NUR AMIRA BINTI YAHYA', '621, JLN BANDAR PUTERI JAYA 3/8 SEKSYEN 3,BANDAR PUTERI JAYA', 'Form3', 'PT3', 0x534d4b2054414e4a554e4720505554455249205245534f5254, 'Perempuan', 'LELAWATI BINTI HAIRI', NULL, 'mother', 'Active', 'Student', 2019, 5),
(109, '061406055156', '061406055156', '061406055156', 'NUR JANNAH BINTI ISMAIL', 'NO,14 JLN TSJ 16 TAMAN SRI JELOK', 'Form3', 'PT3', 0x534d4b20504153495220475544414e472032, 'Perempuan', 'ISMAIL BIN ISNIN', NULL, 'father', 'Active', 'Student', 2019, 8),
(110, '072702417127', '072702417127', '072702417127', 'SYED HAZIQ BIN OTHMAN', 'NO 30 JLN TSE 3 TAMAN SRI JELOK', 'Year5', 'UPSR', 0x534b20504153495220475544414e472031, 'Lelaki', 'OTHMAN BIN MOHD AZIZ', NULL, 'father', 'Active', 'Student', 2019, 7),
(111, '091810235317', '091810235317', '091810235317', 'AZFAR BIN AZIZ', 'LOT 8 LORONG 3/8 TAMAN SUTERA INDAH', 'Year5', 'UPSR', 0x534b2054414d414e2043454e44414e41, 'Lelaki', 'AZIZ BIN ABD MANAF', NULL, 'father', 'Active', 'Student', 2019, 6),
(112, '033108234321', '033108234321', '033108234321', 'ZAQUAN BIN FUAD', '12 JLN DELIMA 16 TAMAN KOTA MASAI', 'Form5', 'SPM', 0x534d4b204b4f5441204d41534149, 'Lelaki', 'FUAD BIN MOHD LATIFF', NULL, 'father', 'Active', 'Student', 2019, 7),
(113, '021212043246', '021212043246', '021212043246', 'NUR FATIIHA BINTI SUDERMAN', '14 JLN MAWAR 8 TAMAN MAWAR', 'Form5', 'SPM', 0x534d4b2054414d414e205041534952205055544948, 'Perempuan', 'SUDERMAN BIN ZAKARIA', NULL, 'father', 'Active', 'Student', 2019, 8),
(122, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '062606035127', '062606035127', '062606035127', 'MUHD IRFAN BIN AMIN', 'N0 33, LHN TSJ 20 TAMAN SRI JELOK', 'Form3', 'PT3', 0x534d4b20504153495220475544414e47202031, 'Lelaki', 'SITI FATIMAH', '+60197357109', 'sister', 'Active', 'Student', 2019, 8);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran_subjek`
--

CREATE TABLE `pendaftaran_subjek` (
  `id` int(11) NOT NULL,
  `id_pengajar` varchar(20) DEFAULT NULL,
  `no_ic` varchar(22) DEFAULT NULL,
  `yuran` decimal(16,2) DEFAULT NULL,
  `nama_matapelajaran` varchar(100) DEFAULT NULL,
  `kod_peperiksaan` varchar(10) DEFAULT NULL,
  `tahun_tingkatan` varchar(100) DEFAULT NULL,
  `transaksikod` varchar(100) DEFAULT NULL,
  `tahun_dftr` year(4) DEFAULT NULL,
  `bulan_dftr` smallint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran_subjek`
--

INSERT INTO `pendaftaran_subjek` (`id`, `id_pengajar`, `no_ic`, `yuran`, `nama_matapelajaran`, `kod_peperiksaan`, `tahun_tingkatan`, `transaksikod`, `tahun_dftr`, `bulan_dftr`) VALUES
(99, ' INS_278', '041202135644', '50.00', 'MATHEMATICS', 'PT3', 'Form3', '6urn8t37', 2019, 5),
(100, ' INS_257', '041202135644', '50.00', 'SCIENCE', 'PT3', 'Form3', '6urn8t37', 2019, 5),
(104, ' INS_278', '041602145243', '50.00', 'MATHEMATICS', 'PT3', 'Form3', 'ma55w7iu', 2019, 8),
(105, ' INS_278', '041705016533', '50.00', 'MATHEMATICS', 'PT3', 'Form3', 'bm8qxz6q', 2019, 6),
(106, ' INS_257', '041705016533', '50.00', 'SCIENCE', 'PT3', 'Form3', 'bm8qxz6q', 2019, 6),
(107, ' INS_281', '041705016533', '45.00', 'GEOGRAPHY', 'PT3', 'Form3', 'bm8qxz6q', 2019, 6),
(108, ' INS_266', '052405237246', '50.00', 'ENGLISH', 'PT3', 'Form3', 'tvi66f7v', 2019, 5),
(109, ' INS_278', '052405237246', '50.00', 'MATHEMATICS', 'PT3', 'Form3', 'tvi66f7v', 2019, 5),
(110, ' INS_278', '061406055156', '50.00', 'MATHEMATICS', 'PT3', 'Form3', 'nkejnzvz', 2019, 8),
(111, ' INS_266', '061406055156', '50.00', 'ENGLISH', 'PT3', 'Form3', 'nkejnzvz', 2019, 8),
(112, ' INS_791', '061406055156', '45.00', 'SEJARAH', 'PT3', 'Form3', 'nkejnzvz', 2019, 8),
(113, ' INS_352', '072702417127', '50.00', 'ENGLISH', 'UPSR', 'Year5', 's270ha8a', 2019, 7),
(114, ' INS_286', '072702417127', '50.00', 'MATHEMATICS', 'UPSR', 'Year5', 's270ha8a', 2019, 7),
(115, ' INS_102', '072702417127', '50.00', 'SCIENCE', 'UPSR', 'Year5', 's270ha8a', 2019, 7),
(116, ' INS_286', '091810235317', '50.00', 'MATHEMATICS', 'UPSR', 'Year5', 'kw36a23o', 2019, 6),
(117, ' INS_167', '091810235317', '45.00', 'BAHASA MELAYU', 'UPSR', 'Year5', 'kw36a23o', 2019, 6),
(118, ' INS_162', '033108234321', '60.00', 'BIOLOGY', 'SPM', 'Form5', 'niygwo5n', 2019, 7),
(119, ' INS_320', '033108234321', '50.00', 'SEJARAH', 'SPM', 'Form5', 'niygwo5n', 2019, 7),
(120, ' INS_151', '033108234321', '60.00', 'CHEMISTRY', 'SPM', 'Form5', 'niygwo5n', 2019, 7),
(121, ' INS_827', '021212043246', '50.00', 'SCIENCE', 'SPM', 'Form5', '0uupp7on', 2019, 8),
(122, ' INS_320', '021212043246', '50.00', 'SEJARAH', 'SPM', 'Form5', '0uupp7on', 2019, 8),
(123, ' INS_157', '021212043246', '50.00', 'MATHEMATICS', 'SPM', 'Form5', '0uupp7on', 2019, 8),
(124, ' INS_212', '041202135644', '50.00', 'BAHASA MELAYU', 'PT3', 'Form3', '6urn8t37', 2019, 8),
(125, ' INS_278', '062606035127', '50.00', 'MATHEMATICS', 'PT3', 'Form3', 'nfmv5f5j', 2019, 8),
(126, ' INS_257', '062606035127', '50.00', 'SCIENCE', 'PT3', 'Form3', 'nfmv5f5j', 2019, 8);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran_yuran`
--

CREATE TABLE `pendaftaran_yuran` (
  `id` int(11) NOT NULL,
  `no_ic` varchar(22) DEFAULT NULL,
  `no_resit` varchar(25) DEFAULT NULL,
  `jumlah_yuran` decimal(65,2) DEFAULT NULL,
  `tarikh_bayar` varchar(25) DEFAULT NULL,
  `transaksikod` varchar(100) DEFAULT NULL,
  `kod_peperiksaan` varchar(10) DEFAULT NULL,
  `tahun_tingkatan` varchar(100) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran_yuran`
--

INSERT INTO `pendaftaran_yuran` (`id`, `no_ic`, `no_resit`, `jumlah_yuran`, `tarikh_bayar`, `transaksikod`, `kod_peperiksaan`, `tahun_tingkatan`, `status`) VALUES
(49, '041202135644', 'tyu157', '100.00', '08/2019', '6urn8t37', 'PT3', 'Form3', 'Active'),
(53, '041602145243', 'tyu277', '50.00', '08/2019', 'ma55w7iu', 'PT3', 'Form3', 'Active'),
(55, '041705016533', 'tyu137', '145.00', '08/2019', 'bm8qxz6q', 'PT3', 'Form3', 'Active'),
(57, '052405237246', 'tyu129', '100.00', '08/2019', 'tvi66f7v', 'PT3', 'Form3', 'Active'),
(59, '061406055156', 'tyu102', '145.00', '08/2019', 'nkejnzvz', 'PT3', 'Form3', 'Active'),
(61, '072702417127', 'tyu693', '150.00', '08/2019', 's270ha8a', 'UPSR', 'Year5', 'Active'),
(63, '091810235317', 'tyu168', '95.00', '08/2019', 'kw36a23o', 'UPSR', 'Year5', 'Active'),
(65, '033108234321', 'tyu223', '170.00', '08/2019', 'niygwo5n', 'SPM', 'Form5', 'Active'),
(67, '021212043246', 'tyu199', '150.00', '08/2019', '0uupp7on', 'SPM', 'Form5', 'Active'),
(68, '041202135644', 'tyu176', '100.00', '07/2019', '6urn8t37', 'PT3', 'Form3', 'Active'),
(69, '041202135644', 'tyu231', '100.00', '06/2019', '6urn8t37', 'PT3', 'Form3', 'Active'),
(70, '041202135644', 'tyu202', '100.00', '05/2019', '6urn8t37', 'PT3', 'Form3', 'Active'),
(71, '041705016533', 'tyu931', '145.00', '07/2019', 'bm8qxz6q', 'PT3', 'Form3', 'Active'),
(72, '041705016533', 'tyu287', '145.00', '06/2019', 'bm8qxz6q', 'PT3', 'Form3', 'Active'),
(73, '052405237246', 'tyu855', '100.00', '05/2019', 'tvi66f7v', 'PT3', 'Form3', 'Active'),
(74, '052405237246', 'tyu122', '100.00', '06/2019', 'tvi66f7v', 'PT3', 'Form3', 'Active'),
(75, '052405237246', 'tyu233', '100.00', '07/2019', 'tvi66f7v', 'PT3', 'Form3', 'Active'),
(76, '072702417127', 'tyu204', '150.00', '07/2019', 's270ha8a', 'UPSR', 'Year5', 'Active'),
(77, '033108234321', 'tyu309', '170.00', '07/2019', 'niygwo5n', 'SPM', 'Form5', 'Active'),
(78, '091810235317', 'tyu688', '95.00', '06/2019', 'kw36a23o', 'UPSR', 'Year5', 'Active'),
(79, '091810235317', 'tyu294', '95.00', '07/2019', 'kw36a23o', 'UPSR', 'Year5', 'Active'),
(80, '062606035127', 'tyu142', '50.00', '08/2019', 'nfmv5f5j', '', 'Form3', 'Active'),
(81, '062606035127', 'tyu313', '100.00', '04/2019', 'nfmv5f5j', 'PT3', 'Form3', 'Active'),
(82, '062606035127', 'tyu665', '100.00', '08/2019', 'nfmv5f5j', 'PT3', 'Form3', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `id` int(11) NOT NULL,
  `id_pengajar` varchar(25) NOT NULL,
  `katalaluan` varchar(25) DEFAULT NULL,
  `no_ic` int(12) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jantina` varchar(25) DEFAULT NULL,
  `no_telefon` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `aras` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`id`, `id_pengajar`, `katalaluan`, `no_ic`, `nama`, `alamat`, `jantina`, `no_telefon`, `status`, `aras`) VALUES
(6, 'INS_167', 'abc123', 98765678, 'AHMAD HAMDAN BIN RABU', 'KOTA TINGGI', 'Male', '0176654326', 'Active', 'Instructor'),
(8, 'INS_352', 'abc123', 2147483647, 'FATIMAH ZAHRA BINTI ZAINAL', 'NO9, JALAN PETALING 5\r\nTAMAN SUKMA INDAH\r\n81700, PASIR GUDANG\r\nJOHOR', 'Female', '0145567892', 'Active', 'Instructor'),
(28, 'INS_102', 'abc123', 2147483647, 'AZURAN A/P SUPRAM', 'NO 16 JALAM SEMERBAK 10 TAMAN INDAH', 'Female', '+60145567289', 'Active', 'Instructor'),
(29, 'INS_286', 'abc123', 2147483647, 'HAIKAL AJMAIN BIN AHMAD', 'NO 17 JALAN SEMERBAH 10 TAMAN PETALING', 'Male', '+60167786543', 'Active', 'Instructor'),
(30, 'INS_212', 'abc123', 2147483647, 'INTAN HERMNANIKA BINTI MUSTAFA', 'TAMAN SETIA INDAH', 'Female', '+60176685643', 'Active', 'Instructor'),
(31, 'INS_266', 'abc123', 2147483647, 'HASAAN BIN AHMAD', 'TAMAN KOTA MASAI', 'Male', '+60176654327', 'Active', 'Instructor'),
(32, 'INS_257', 'abc123', 2147483647, 'INDAH RUHAILA BINTI AZMAN', 'TAMAN SETIA INDAH', 'Female', '+60167789456', 'Active', 'Instructor'),
(42, 'INS_278', 'abc123', 2147483647, 'NOR ANISA BINTI KAMAL', 'TAMAN AMPANGAN', 'Female', '+6012345689', 'Active', 'Instructor'),
(43, 'INS_281', 'abc123', 2147483647, 'EZRINA NATASYA BINTA YAHYA', 'TAMAN SETIA INDAH', 'Female', '+6014564378', 'Active', 'Instructor'),
(44, 'INS_791', 'abc123', 2147483647, 'KAMAL ADLI BIN YUNUS', 'TAMAN KOTA MASAI', 'Male', '+6012564378', 'Active', 'Instructor'),
(45, 'INS_261', 'abc123', 2147483647, 'ABDUL RASHID BIN ZULKIFLI', 'TAMAN PASIR PUTIH', 'Male', '+6014342367', 'Active', 'Instructor'),
(46, 'INS_145', 'abc123', 2147483647, 'YAHYA BIN SUKARTO', 'TAMAN KOTA PUTERI', 'Male', '+60132341567', 'Active', 'Instructor'),
(47, 'INS_157', 'abc123', 2147483647, 'ZAKIYAH HERDAWATI BINTI AKMAL', 'TAMAN BUKIT BARU', 'Female', '+60198876543', 'Active', 'Instructor'),
(48, 'INS_320', 'abc123', 2147483647, 'ZHEN FUH TAN', 'TAMAN SETIA INDAH', 'Male', '+60179987654', 'Active', 'Instructor'),
(49, 'INS_827', 'abc123', 2147483647, 'TIAN WEI YAP', 'TAMAN KOTA MASAI', 'Female', '+6012349087', 'Active', 'Instructor'),
(50, 'INS_162', 'abc123', 2147483647, 'HATTA MUSTAFA BIN HATTA HISYAM', 'TAMAN BUKIT BARU', 'Male', '+6016785432', 'Active', 'Instructor'),
(51, 'INS_112', 'abc123', 2147483647, 'NUR SYAZWANI BINTI RADZALI', 'TAMAN KOTA MASAI', 'Female', '+60134569087', 'Active', 'Instructor'),
(52, 'INS_151', 'abc123', 2147483647, 'MUHD SYAHMI BIN HARIS', 'TAMAN BUKIT INDAH', 'Male', '+60165437892', 'Active', 'Instructor');

-- --------------------------------------------------------

--
-- Table structure for table `pentadbir`
--

CREATE TABLE `pentadbir` (
  `id` int(11) NOT NULL,
  `id_pentadbir` varchar(25) NOT NULL,
  `katalaluan` varchar(25) DEFAULT NULL,
  `no_ic` varchar(12) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jantina` varchar(25) DEFAULT NULL,
  `no_telefon` varchar(25) DEFAULT NULL,
  `aras` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pentadbir`
--

INSERT INTO `pentadbir` (`id`, `id_pentadbir`, `katalaluan`, `no_ic`, `nama`, `alamat`, `jantina`, `no_telefon`, `aras`) VALUES
(1, 'ADMIN', '123', '970626015720', 'NUR AFIQAH BINTI RADZALI', 'KELANTAN', 'Female', '+60197357108', 'Admin'),
(2, 'admin1', '1234', '970614035626', 'ANNA SARSAYATI BINTI MARZUKI', 'Melaka', 'Female', '0176654321', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `peperiksaan`
--

CREATE TABLE `peperiksaan` (
  `id` int(11) NOT NULL,
  `kod_peperiksaan` varchar(10) DEFAULT NULL,
  `nama_peperiksaan` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peperiksaan`
--

INSERT INTO `peperiksaan` (`id`, `kod_peperiksaan`, `nama_peperiksaan`) VALUES
(1, 'UPSR', 'UJIAN PENILAIAN SEKOLAH RENDAH'),
(2, 'PT3', 'PENTAKSIRAN TINGKATAN 3'),
(3, 'SPM', 'SIJIL PELAJARAN MALAYSIA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_pengajar` (`id_pengajar`);

--
-- Indexes for table `pelajar`
--
ALTER TABLE `pelajar`
  ADD PRIMARY KEY (`id`,`no_ic`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_pelajar` (`id_pelajar`);

--
-- Indexes for table `pendaftaran_subjek`
--
ALTER TABLE `pendaftaran_subjek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftaran_yuran`
--
ALTER TABLE `pendaftaran_yuran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id`,`id_pengajar`,`no_ic`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `pentadbir`
--
ALTER TABLE `pentadbir`
  ADD PRIMARY KEY (`id`,`id_pentadbir`,`no_ic`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `peperiksaan`
--
ALTER TABLE `peperiksaan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `pelajar`
--
ALTER TABLE `pelajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `pendaftaran_subjek`
--
ALTER TABLE `pendaftaran_subjek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `pendaftaran_yuran`
--
ALTER TABLE `pendaftaran_yuran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `pentadbir`
--
ALTER TABLE `pentadbir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `peperiksaan`
--
ALTER TABLE `peperiksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
