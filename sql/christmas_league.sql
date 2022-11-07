-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 03:51 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `christmas_league`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `jersey_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `team`, `last_name`, `first_name`, `jersey_number`) VALUES
(1, 1, 'Bardillon', 'Romeo Jr', 1),
(2, 1, 'Pascua', 'Jayp', 4),
(3, 1, 'Comia', 'Aldwin', 7),
(4, 1, 'Charles', 'Ivan', 10),
(5, 1, 'Bautista', 'Ivan', 26),
(6, 1, 'Beato', 'Ejhay', 14),
(7, 1, 'Evangelista', 'Cyrus Karl', 9),
(8, 1, 'Esturas', 'Rafael', 11),
(9, 1, 'Teraytay', 'Jay Lou', 13),
(10, 1, 'Ambas', 'Cyrus', 12),
(11, 1, 'Sagrado', 'Jimboy', 22),
(12, 1, 'Pili', 'RJ', 23),
(13, 1, 'Gomez', 'Gerald', 30),
(14, 1, 'San Juan', 'Jayjay', 44),
(15, 1, 'Rebullido', 'Mico', 77),
(16, 2, 'Lualhati', 'Feisty_Uno', 1),
(17, 2, 'Moralidad', 'RJ', 11),
(18, 2, 'Dime', 'Jaypee', 15),
(19, 2, 'Togonon', 'Joefrey', 17),
(20, 2, 'Acosta', 'Julius', 18),
(21, 2, 'Teraytay', 'Julius', 20),
(22, 2, 'Espinosa', 'Juan Carlo', 21),
(23, 2, 'Ramos', 'Romy', 22),
(24, 2, 'Lualhati', 'Kenneth', 24),
(25, 2, 'Balong', 'Denver', 26),
(26, 2, 'Dime', 'Xaveir John', 27),
(27, 2, 'Barashari', 'Regieson', 28),
(28, 2, 'Consignado', 'Mark', 29),
(29, 2, 'Mendoza', 'Jay-Ar', 99),
(30, 3, 'Sesante', 'Raffy', 0),
(31, 3, 'Balabadan', 'Joehamir', 1),
(32, 3, 'Beldad', 'Roy', 5),
(33, 3, 'Dizon', 'Glenn', 6),
(34, 3, 'Monicit', 'Arnel', 8),
(35, 3, 'Ramos', '', 10),
(36, 3, 'Beldad', 'Robert', 11),
(37, 3, 'Dumayas', 'Nikko', 12),
(38, 3, 'Logo', 'Jaff', 17),
(39, 3, 'Prejoles', '', 22),
(40, 3, 'Da Silva', 'Rafa', 23),
(41, 3, 'Molabola', 'Johren', 26),
(42, 3, 'Perez', 'Gerald', 28),
(43, 4, 'Marabe', 'Kurt', 2),
(44, 4, 'Bebe', 'Jimaico', 4),
(45, 4, 'Prejoles', 'MJ', 6),
(46, 4, 'Narvaez', 'Yow', 9),
(47, 4, 'Beldad', 'Rob', 10),
(48, 4, 'Lucido', 'Jovencio', 11),
(49, 4, 'Caraig', 'Garrent', 12),
(50, 4, 'Enseñado', 'Aaron', 18),
(51, 4, 'Ceneta', 'Jake', 19),
(52, 4, 'Erfe', 'Jezrel', 22),
(53, 4, 'Mago', 'Bradly', 28),
(54, 4, 'Bebe', '', 34),
(55, 4, 'Magpantay', 'Alfredo', 99);

-- --------------------------------------------------------

--
-- Table structure for table `player_stats`
--

CREATE TABLE `player_stats` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `game_number` int(11) NOT NULL,
  `stat_type` enum('PTS','REBS','ASTS','STLS','BLKS','FLS') NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player_stats`
--

INSERT INTO `player_stats` (`id`, `player_id`, `team_id`, `game_number`, `stat_type`, `count`) VALUES
(1, 1, 1, 1, 'PTS', 25),
(2, 1, 1, 1, 'REBS', 27),
(3, 1, 1, 1, 'ASTS', 3),
(4, 1, 1, 1, 'STLS', 1),
(5, 1, 1, 1, 'BLKS', 2),
(6, 1, 1, 1, 'FLS', 1),
(7, 2, 1, 1, 'PTS', 0),
(8, 2, 1, 1, 'REBS', 1),
(9, 2, 1, 1, 'ASTS', 1),
(10, 2, 1, 1, 'STLS', 0),
(11, 2, 1, 1, 'BLKS', 0),
(12, 2, 1, 1, 'FLS', 0),
(13, 3, 1, 1, 'PTS', 8),
(14, 3, 1, 1, 'REBS', 3),
(15, 3, 1, 1, 'ASTS', 1),
(16, 3, 1, 1, 'STLS', 0),
(17, 3, 1, 1, 'BLKS', 0),
(18, 3, 1, 1, 'FLS', 0),
(19, 4, 1, 1, 'PTS', 2),
(20, 4, 1, 1, 'REBS', 1),
(21, 4, 1, 1, 'ASTS', 0),
(22, 4, 1, 1, 'STLS', 0),
(23, 4, 1, 1, 'BLKS', 0),
(24, 4, 1, 1, 'FLS', 0),
(25, 7, 1, 1, 'PTS', 5),
(26, 7, 1, 1, 'REBS', 5),
(27, 7, 1, 1, 'ASTS', 3),
(28, 7, 1, 1, 'STLS', 2),
(29, 7, 1, 1, 'BLKS', 0),
(30, 7, 1, 1, 'FLS', 0),
(31, 8, 1, 1, 'PTS', 1),
(32, 8, 1, 1, 'REBS', 4),
(33, 8, 1, 1, 'ASTS', 1),
(34, 8, 1, 1, 'STLS', 1),
(35, 8, 1, 1, 'BLKS', 0),
(36, 8, 1, 1, 'FLS', 0),
(37, 10, 1, 1, 'PTS', 0),
(38, 10, 1, 1, 'REBS', 1),
(39, 10, 1, 1, 'ASTS', 0),
(40, 10, 1, 1, 'STLS', 1),
(41, 10, 1, 1, 'BLKS', 0),
(42, 10, 1, 1, 'FLS', 0),
(43, 9, 1, 1, 'PTS', 5),
(44, 9, 1, 1, 'REBS', 0),
(45, 9, 1, 1, 'ASTS', 0),
(46, 9, 1, 1, 'STLS', 0),
(47, 9, 1, 1, 'BLKS', 0),
(48, 9, 1, 1, 'FLS', 0),
(49, 5, 1, 1, 'PTS', 2),
(50, 5, 1, 1, 'REBS', 1),
(51, 5, 1, 1, 'ASTS', 0),
(52, 5, 1, 1, 'STLS', 1),
(53, 5, 1, 1, 'BLKS', 1),
(54, 5, 1, 1, 'FLS', 0),
(55, 6, 1, 1, 'PTS', 3),
(56, 6, 1, 1, 'REBS', 0),
(57, 6, 1, 1, 'ASTS', 0),
(58, 6, 1, 1, 'STLS', 0),
(59, 6, 1, 1, 'BLKS', 0),
(60, 6, 1, 1, 'FLS', 0),
(61, 11, 1, 1, 'PTS', 4),
(62, 11, 1, 1, 'REBS', 3),
(63, 11, 1, 1, 'ASTS', 0),
(64, 11, 1, 1, 'STLS', 2),
(65, 11, 1, 1, 'BLKS', 0),
(66, 11, 1, 1, 'FLS', 0),
(67, 12, 1, 1, 'PTS', 5),
(68, 12, 1, 1, 'REBS', 7),
(69, 12, 1, 1, 'ASTS', 0),
(70, 12, 1, 1, 'STLS', 0),
(71, 12, 1, 1, 'BLKS', 0),
(72, 12, 1, 1, 'FLS', 0),
(73, 13, 1, 1, 'PTS', 0),
(74, 13, 1, 1, 'REBS', 3),
(75, 13, 1, 1, 'ASTS', 0),
(76, 13, 1, 1, 'STLS', 0),
(77, 13, 1, 1, 'BLKS', 0),
(78, 13, 1, 1, 'FLS', 0),
(85, 15, 1, 1, 'PTS', 0),
(86, 15, 1, 1, 'REBS', 3),
(87, 15, 1, 1, 'ASTS', 0),
(88, 15, 1, 1, 'STLS', 0),
(89, 15, 1, 1, 'BLKS', 0),
(90, 15, 1, 1, 'FLS', 0),
(91, 43, 4, 1, 'PTS', 5),
(92, 43, 4, 1, 'REBS', 12),
(93, 43, 4, 1, 'ASTS', 0),
(94, 43, 4, 1, 'STLS', 2),
(95, 43, 4, 1, 'BLKS', 0),
(96, 43, 4, 1, 'FLS', 0),
(97, 44, 4, 1, 'PTS', 21),
(98, 44, 4, 1, 'REBS', 5),
(99, 44, 4, 1, 'ASTS', 3),
(100, 44, 4, 1, 'STLS', 2),
(101, 44, 4, 1, 'BLKS', 1),
(102, 44, 4, 1, 'FLS', 0),
(103, 45, 4, 1, 'PTS', 0),
(104, 45, 4, 1, 'REBS', 0),
(105, 45, 4, 1, 'ASTS', 1),
(106, 45, 4, 1, 'STLS', 2),
(107, 45, 4, 1, 'BLKS', 0),
(108, 45, 4, 1, 'FLS', 0),
(109, 46, 4, 1, 'PTS', 1),
(110, 46, 4, 1, 'REBS', 4),
(111, 46, 4, 1, 'ASTS', 1),
(112, 46, 4, 1, 'STLS', 3),
(113, 46, 4, 1, 'BLKS', 0),
(114, 46, 4, 1, 'FLS', 0),
(115, 47, 4, 1, 'PTS', 9),
(116, 47, 4, 1, 'REBS', 12),
(117, 47, 4, 1, 'ASTS', 0),
(118, 47, 4, 1, 'STLS', 0),
(119, 47, 4, 1, 'BLKS', 1),
(120, 47, 4, 1, 'FLS', 0),
(121, 48, 4, 1, 'PTS', 2),
(122, 48, 4, 1, 'REBS', 4),
(123, 48, 4, 1, 'ASTS', 0),
(124, 48, 4, 1, 'STLS', 0),
(125, 48, 4, 1, 'BLKS', 0),
(126, 48, 4, 1, 'FLS', 0),
(127, 49, 4, 1, 'PTS', 6),
(128, 49, 4, 1, 'REBS', 2),
(129, 49, 4, 1, 'ASTS', 0),
(130, 49, 4, 1, 'STLS', 2),
(131, 49, 4, 1, 'BLKS', 0),
(132, 49, 4, 1, 'FLS', 0),
(133, 50, 4, 1, 'PTS', 0),
(134, 50, 4, 1, 'REBS', 2),
(135, 50, 4, 1, 'ASTS', 0),
(136, 50, 4, 1, 'STLS', 0),
(137, 50, 4, 1, 'BLKS', 0),
(138, 50, 4, 1, 'FLS', 0),
(139, 51, 4, 1, 'PTS', 2),
(140, 51, 4, 1, 'REBS', 0),
(141, 51, 4, 1, 'ASTS', 0),
(142, 51, 4, 1, 'STLS', 0),
(143, 51, 4, 1, 'BLKS', 0),
(144, 51, 4, 1, 'FLS', 0),
(145, 52, 4, 1, 'PTS', 2),
(146, 52, 4, 1, 'REBS', 2),
(147, 52, 4, 1, 'ASTS', 1),
(148, 52, 4, 1, 'STLS', 2),
(149, 52, 4, 1, 'BLKS', 0),
(150, 52, 4, 1, 'FLS', 0),
(151, 53, 4, 1, 'PTS', 0),
(152, 53, 4, 1, 'REBS', 2),
(153, 53, 4, 1, 'ASTS', 0),
(154, 53, 4, 1, 'STLS', 0),
(155, 53, 4, 1, 'BLKS', 0),
(156, 53, 4, 1, 'FLS', 0),
(157, 55, 4, 1, 'PTS', 2),
(158, 55, 4, 1, 'REBS', 1),
(159, 55, 4, 1, 'ASTS', 0),
(160, 55, 4, 1, 'STLS', 0),
(161, 55, 4, 1, 'BLKS', 0),
(162, 55, 4, 1, 'FLS', 0),
(175, 19, 2, 2, 'PTS', 31),
(176, 19, 2, 2, 'REBS', 13),
(177, 19, 2, 2, 'ASTS', 3),
(178, 19, 2, 2, 'STLS', 3),
(179, 19, 2, 2, 'BLKS', 1),
(180, 19, 2, 2, 'FLS', 0),
(181, 31, 3, 2, 'PTS', 4),
(182, 31, 3, 2, 'REBS', 1),
(183, 31, 3, 2, 'ASTS', 0),
(184, 31, 3, 2, 'STLS', 0),
(185, 31, 3, 2, 'BLKS', 0),
(186, 31, 3, 2, 'FLS', 0),
(187, 32, 3, 2, 'PTS', 11),
(188, 32, 3, 2, 'REBS', 6),
(189, 32, 3, 2, 'ASTS', 3),
(190, 32, 3, 2, 'STLS', 2),
(191, 32, 3, 2, 'BLKS', 0),
(192, 32, 3, 2, 'FLS', 0),
(193, 36, 3, 2, 'PTS', 20),
(194, 36, 3, 2, 'REBS', 8),
(195, 36, 3, 2, 'ASTS', 4),
(196, 36, 3, 2, 'STLS', 3),
(197, 36, 3, 2, 'BLKS', 0),
(198, 36, 3, 2, 'FLS', 0),
(199, 37, 3, 2, 'PTS', 0),
(200, 37, 3, 2, 'REBS', 4),
(201, 37, 3, 2, 'ASTS', 1),
(202, 37, 3, 2, 'STLS', 3),
(203, 37, 3, 2, 'BLKS', 1),
(204, 37, 3, 2, 'FLS', 0),
(205, 38, 3, 2, 'PTS', 10),
(206, 38, 3, 2, 'REBS', 5),
(207, 38, 3, 2, 'ASTS', 8),
(208, 38, 3, 2, 'STLS', 4),
(209, 38, 3, 2, 'BLKS', 0),
(210, 38, 3, 2, 'FLS', 0),
(211, 39, 3, 2, 'PTS', 9),
(212, 39, 3, 2, 'REBS', 2),
(213, 39, 3, 2, 'ASTS', 0),
(214, 39, 3, 2, 'STLS', 6),
(215, 39, 3, 2, 'BLKS', 0),
(216, 39, 3, 2, 'FLS', 0),
(217, 42, 3, 2, 'PTS', 4),
(218, 42, 3, 2, 'REBS', 12),
(219, 42, 3, 2, 'ASTS', 2),
(220, 42, 3, 2, 'STLS', 0),
(221, 42, 3, 2, 'BLKS', 0),
(222, 42, 3, 2, 'FLS', 0),
(223, 16, 2, 2, 'PTS', 2),
(224, 16, 2, 2, 'REBS', 2),
(225, 16, 2, 2, 'ASTS', 5),
(226, 16, 2, 2, 'STLS', 6),
(227, 16, 2, 2, 'BLKS', 0),
(228, 16, 2, 2, 'FLS', 0),
(229, 17, 2, 2, 'PTS', 0),
(230, 17, 2, 2, 'REBS', 6),
(231, 17, 2, 2, 'ASTS', 0),
(232, 17, 2, 2, 'STLS', 0),
(233, 17, 2, 2, 'BLKS', 0),
(234, 17, 2, 2, 'FLS', 0),
(235, 20, 2, 2, 'PTS', 12),
(236, 20, 2, 2, 'REBS', 9),
(237, 20, 2, 2, 'ASTS', 7),
(238, 20, 2, 2, 'STLS', 5),
(239, 20, 2, 2, 'BLKS', 0),
(240, 20, 2, 2, 'FLS', 0),
(241, 22, 2, 2, 'PTS', 16),
(242, 22, 2, 2, 'REBS', 7),
(243, 22, 2, 2, 'ASTS', 1),
(244, 22, 2, 2, 'STLS', 5),
(245, 22, 2, 2, 'BLKS', 1),
(246, 22, 2, 2, 'FLS', 0),
(247, 23, 2, 2, 'PTS', 0),
(248, 23, 2, 2, 'REBS', 2),
(249, 23, 2, 2, 'ASTS', 0),
(250, 23, 2, 2, 'STLS', 0),
(251, 23, 2, 2, 'BLKS', 0),
(252, 23, 2, 2, 'FLS', 0),
(253, 24, 2, 2, 'PTS', 8),
(254, 24, 2, 2, 'REBS', 2),
(255, 24, 2, 2, 'ASTS', 3),
(256, 24, 2, 2, 'STLS', 2),
(257, 24, 2, 2, 'BLKS', 0),
(258, 24, 2, 2, 'FLS', 0),
(259, 25, 2, 2, 'PTS', 0),
(260, 25, 2, 2, 'REBS', 6),
(261, 25, 2, 2, 'ASTS', 0),
(262, 25, 2, 2, 'STLS', 0),
(263, 25, 2, 2, 'BLKS', 0),
(264, 25, 2, 2, 'FLS', 0),
(265, 27, 2, 2, 'PTS', 4),
(266, 27, 2, 2, 'REBS', 4),
(267, 27, 2, 2, 'ASTS', 1),
(268, 27, 2, 2, 'STLS', 0),
(269, 27, 2, 2, 'BLKS', 2),
(270, 27, 2, 2, 'FLS', 0),
(271, 28, 2, 2, 'PTS', 8),
(272, 28, 2, 2, 'REBS', 6),
(273, 28, 2, 2, 'ASTS', 2),
(274, 28, 2, 2, 'STLS', 0),
(275, 28, 2, 2, 'BLKS', 1),
(276, 28, 2, 2, 'FLS', 0),
(277, 29, 2, 2, 'PTS', 2),
(278, 29, 2, 2, 'REBS', 4),
(279, 29, 2, 2, 'ASTS', 3),
(280, 29, 2, 2, 'STLS', 0),
(281, 29, 2, 2, 'BLKS', 0),
(282, 29, 2, 2, 'FLS', 0),
(283, 1, 1, 3, 'PTS', 22),
(284, 1, 1, 3, 'REBS', 26),
(285, 1, 1, 3, 'ASTS', 4),
(286, 1, 1, 3, 'STLS', 5),
(287, 1, 1, 3, 'BLKS', 2),
(288, 1, 1, 3, 'FLS', 0),
(289, 3, 1, 3, 'PTS', 12),
(290, 3, 1, 3, 'REBS', 1),
(291, 3, 1, 3, 'ASTS', 2),
(292, 3, 1, 3, 'STLS', 0),
(293, 3, 1, 3, 'BLKS', 0),
(294, 3, 1, 3, 'FLS', 0),
(295, 7, 1, 3, 'PTS', 11),
(296, 7, 1, 3, 'REBS', 2),
(297, 7, 1, 3, 'ASTS', 4),
(298, 7, 1, 3, 'STLS', 4),
(299, 7, 1, 3, 'BLKS', 0),
(300, 7, 1, 3, 'FLS', 0),
(301, 4, 1, 3, 'PTS', 0),
(302, 4, 1, 3, 'REBS', 0),
(303, 4, 1, 3, 'ASTS', 0),
(304, 4, 1, 3, 'STLS', 1),
(305, 4, 1, 3, 'BLKS', 0),
(306, 4, 1, 3, 'FLS', 0),
(307, 8, 1, 3, 'PTS', 2),
(308, 8, 1, 3, 'REBS', 1),
(309, 8, 1, 3, 'ASTS', 1),
(310, 8, 1, 3, 'STLS', 0),
(311, 8, 1, 3, 'BLKS', 0),
(312, 8, 1, 3, 'FLS', 0),
(313, 10, 1, 3, 'PTS', 4),
(314, 10, 1, 3, 'REBS', 1),
(315, 10, 1, 3, 'ASTS', 0),
(316, 10, 1, 3, 'STLS', 1),
(317, 10, 1, 3, 'BLKS', 0),
(318, 10, 1, 3, 'FLS', 0),
(319, 9, 1, 3, 'PTS', 0),
(320, 9, 1, 3, 'REBS', 1),
(321, 9, 1, 3, 'ASTS', 0),
(322, 9, 1, 3, 'STLS', 1),
(323, 9, 1, 3, 'BLKS', 1),
(324, 9, 1, 3, 'FLS', 0),
(325, 6, 1, 3, 'PTS', 10),
(326, 6, 1, 3, 'REBS', 4),
(327, 6, 1, 3, 'ASTS', 0),
(328, 6, 1, 3, 'STLS', 0),
(329, 6, 1, 3, 'BLKS', 0),
(330, 6, 1, 3, 'FLS', 0),
(331, 12, 1, 3, 'PTS', 6),
(332, 12, 1, 3, 'REBS', 7),
(333, 12, 1, 3, 'ASTS', 1),
(334, 12, 1, 3, 'STLS', 1),
(335, 12, 1, 3, 'BLKS', 0),
(336, 12, 1, 3, 'FLS', 0),
(337, 5, 1, 3, 'PTS', 0),
(338, 5, 1, 3, 'REBS', 4),
(339, 5, 1, 3, 'ASTS', 0),
(340, 5, 1, 3, 'STLS', 0),
(341, 5, 1, 3, 'BLKS', 0),
(342, 5, 1, 3, 'FLS', 0),
(343, 15, 1, 3, 'PTS', 0),
(344, 15, 1, 3, 'REBS', 2),
(345, 15, 1, 3, 'ASTS', 0),
(346, 15, 1, 3, 'STLS', 1),
(347, 15, 1, 3, 'BLKS', 0),
(348, 15, 1, 3, 'FLS', 0),
(349, 43, 4, 3, 'PTS', 4),
(350, 43, 4, 3, 'REBS', 7),
(351, 43, 4, 3, 'ASTS', 0),
(352, 43, 4, 3, 'STLS', 0),
(353, 43, 4, 3, 'BLKS', 1),
(354, 43, 4, 3, 'FLS', 0),
(355, 44, 4, 3, 'PTS', 21),
(356, 44, 4, 3, 'REBS', 3),
(357, 44, 4, 3, 'ASTS', 4),
(358, 44, 4, 3, 'STLS', 2),
(359, 44, 4, 3, 'BLKS', 0),
(360, 44, 4, 3, 'FLS', 0),
(361, 45, 4, 3, 'PTS', 3),
(362, 45, 4, 3, 'REBS', 0),
(363, 45, 4, 3, 'ASTS', 0),
(364, 45, 4, 3, 'STLS', 0),
(365, 45, 4, 3, 'BLKS', 0),
(366, 45, 4, 3, 'FLS', 0),
(367, 46, 4, 3, 'PTS', 4),
(368, 46, 4, 3, 'REBS', 5),
(369, 46, 4, 3, 'ASTS', 2),
(370, 46, 4, 3, 'STLS', 0),
(371, 46, 4, 3, 'BLKS', 0),
(372, 46, 4, 3, 'FLS', 0),
(373, 47, 4, 3, 'PTS', 8),
(374, 47, 4, 3, 'REBS', 8),
(375, 47, 4, 3, 'ASTS', 1),
(376, 47, 4, 3, 'STLS', 1),
(377, 47, 4, 3, 'BLKS', 1),
(378, 47, 4, 3, 'FLS', 0),
(379, 48, 4, 3, 'PTS', 2),
(380, 48, 4, 3, 'REBS', 5),
(381, 48, 4, 3, 'ASTS', 0),
(382, 48, 4, 3, 'STLS', 0),
(383, 48, 4, 3, 'BLKS', 0),
(384, 48, 4, 3, 'FLS', 0),
(385, 50, 4, 3, 'PTS', 2),
(386, 50, 4, 3, 'REBS', 1),
(387, 50, 4, 3, 'ASTS', 0),
(388, 50, 4, 3, 'STLS', 0),
(389, 50, 4, 3, 'BLKS', 0),
(390, 50, 4, 3, 'FLS', 0),
(391, 52, 4, 3, 'PTS', 9),
(392, 52, 4, 3, 'REBS', 4),
(393, 52, 4, 3, 'ASTS', 1),
(394, 52, 4, 3, 'STLS', 2),
(395, 52, 4, 3, 'BLKS', 0),
(396, 52, 4, 3, 'FLS', 0),
(397, 53, 4, 3, 'PTS', 2),
(398, 53, 4, 3, 'REBS', 2),
(399, 53, 4, 3, 'ASTS', 0),
(400, 53, 4, 3, 'STLS', 1),
(401, 53, 4, 3, 'BLKS', 1),
(402, 53, 4, 3, 'FLS', 0),
(403, 31, 3, 4, 'PTS', 1),
(404, 31, 3, 4, 'REBS', 5),
(405, 31, 3, 4, 'ASTS', 0),
(406, 31, 3, 4, 'STLS', 1),
(407, 31, 3, 4, 'BLKS', 0),
(408, 31, 3, 4, 'FLS', 0),
(409, 32, 3, 4, 'PTS', 2),
(410, 32, 3, 4, 'REBS', 2),
(411, 32, 3, 4, 'ASTS', 0),
(412, 32, 3, 4, 'STLS', 0),
(413, 32, 3, 4, 'BLKS', 0),
(414, 32, 3, 4, 'FLS', 0),
(415, 33, 3, 4, 'PTS', 13),
(416, 33, 3, 4, 'REBS', 7),
(417, 33, 3, 4, 'ASTS', 2),
(418, 33, 3, 4, 'STLS', 1),
(419, 33, 3, 4, 'BLKS', 1),
(420, 33, 3, 4, 'FLS', 0),
(421, 34, 3, 4, 'PTS', 0),
(422, 34, 3, 4, 'REBS', 5),
(423, 34, 3, 4, 'ASTS', 1),
(424, 34, 3, 4, 'STLS', 0),
(425, 34, 3, 4, 'BLKS', 0),
(426, 34, 3, 4, 'FLS', 0),
(427, 36, 3, 4, 'PTS', 8),
(428, 36, 3, 4, 'REBS', 3),
(429, 36, 3, 4, 'ASTS', 4),
(430, 36, 3, 4, 'STLS', 2),
(431, 36, 3, 4, 'BLKS', 0),
(432, 36, 3, 4, 'FLS', 0),
(433, 37, 3, 4, 'PTS', 0),
(434, 37, 3, 4, 'REBS', 4),
(435, 37, 3, 4, 'ASTS', 1),
(436, 37, 3, 4, 'STLS', 3),
(437, 37, 3, 4, 'BLKS', 0),
(438, 37, 3, 4, 'FLS', 0),
(439, 38, 3, 4, 'PTS', 13),
(440, 38, 3, 4, 'REBS', 4),
(441, 38, 3, 4, 'ASTS', 2),
(442, 38, 3, 4, 'STLS', 3),
(443, 38, 3, 4, 'BLKS', 0),
(444, 38, 3, 4, 'FLS', 0),
(445, 39, 3, 4, 'PTS', 7),
(446, 39, 3, 4, 'REBS', 1),
(447, 39, 3, 4, 'ASTS', 2),
(448, 39, 3, 4, 'STLS', 3),
(449, 39, 3, 4, 'BLKS', 0),
(450, 39, 3, 4, 'FLS', 0),
(451, 41, 3, 4, 'PTS', 0),
(452, 41, 3, 4, 'REBS', 2),
(453, 41, 3, 4, 'ASTS', 0),
(454, 41, 3, 4, 'STLS', 0),
(455, 41, 3, 4, 'BLKS', 0),
(456, 41, 3, 4, 'FLS', 0),
(457, 42, 3, 4, 'PTS', 7),
(458, 42, 3, 4, 'REBS', 8),
(459, 42, 3, 4, 'ASTS', 0),
(460, 42, 3, 4, 'STLS', 1),
(461, 42, 3, 4, 'BLKS', 0),
(462, 42, 3, 4, 'FLS', 0),
(463, 1, 1, 4, 'PTS', 21),
(464, 1, 1, 4, 'REBS', 17),
(465, 1, 1, 4, 'ASTS', 0),
(466, 1, 1, 4, 'STLS', 1),
(467, 1, 1, 4, 'BLKS', 4),
(468, 1, 1, 4, 'FLS', 0),
(469, 2, 1, 4, 'PTS', 2),
(470, 2, 1, 4, 'REBS', 10),
(471, 2, 1, 4, 'ASTS', 0),
(472, 2, 1, 4, 'STLS', 0),
(473, 2, 1, 4, 'BLKS', 3),
(474, 2, 1, 4, 'FLS', 0),
(475, 7, 1, 4, 'PTS', 17),
(476, 7, 1, 4, 'REBS', 3),
(477, 7, 1, 4, 'ASTS', 7),
(478, 7, 1, 4, 'STLS', 3),
(479, 7, 1, 4, 'BLKS', 0),
(480, 7, 1, 4, 'FLS', 0),
(481, 10, 1, 4, 'PTS', 6),
(482, 10, 1, 4, 'REBS', 4),
(483, 10, 1, 4, 'ASTS', 4),
(484, 10, 1, 4, 'STLS', 5),
(485, 10, 1, 4, 'BLKS', 0),
(486, 10, 1, 4, 'FLS', 0),
(487, 9, 1, 4, 'PTS', 6),
(488, 9, 1, 4, 'REBS', 3),
(489, 9, 1, 4, 'ASTS', 2),
(490, 9, 1, 4, 'STLS', 2),
(491, 9, 1, 4, 'BLKS', 0),
(492, 9, 1, 4, 'FLS', 0),
(493, 6, 1, 4, 'PTS', 2),
(494, 6, 1, 4, 'REBS', 1),
(495, 6, 1, 4, 'ASTS', 0),
(496, 6, 1, 4, 'STLS', 0),
(497, 6, 1, 4, 'BLKS', 0),
(498, 6, 1, 4, 'FLS', 0),
(499, 11, 1, 4, 'PTS', 4),
(500, 11, 1, 4, 'REBS', 6),
(501, 11, 1, 4, 'ASTS', 3),
(502, 11, 1, 4, 'STLS', 2),
(503, 11, 1, 4, 'BLKS', 0),
(504, 11, 1, 4, 'FLS', 0),
(505, 12, 1, 4, 'PTS', 0),
(506, 12, 1, 4, 'REBS', 5),
(507, 12, 1, 4, 'ASTS', 0),
(508, 12, 1, 4, 'STLS', 0),
(509, 12, 1, 4, 'BLKS', 0),
(510, 12, 1, 4, 'FLS', 0),
(511, 5, 1, 4, 'PTS', 1),
(512, 5, 1, 4, 'REBS', 5),
(513, 5, 1, 4, 'ASTS', 0),
(514, 5, 1, 4, 'STLS', 0),
(515, 5, 1, 4, 'BLKS', 0),
(516, 5, 1, 4, 'FLS', 0),
(517, 16, 2, 5, 'PTS', 2),
(518, 16, 2, 5, 'REBS', 1),
(519, 16, 2, 5, 'ASTS', 3),
(520, 16, 2, 5, 'STLS', 0),
(521, 16, 2, 5, 'BLKS', 0),
(522, 16, 2, 5, 'FLS', 0),
(523, 17, 2, 5, 'PTS', 0),
(524, 17, 2, 5, 'REBS', 3),
(525, 17, 2, 5, 'ASTS', 0),
(526, 17, 2, 5, 'STLS', 1),
(527, 17, 2, 5, 'BLKS', 0),
(528, 17, 2, 5, 'FLS', 0),
(529, 19, 2, 5, 'PTS', 21),
(530, 19, 2, 5, 'REBS', 5),
(531, 19, 2, 5, 'ASTS', 2),
(532, 19, 2, 5, 'STLS', 1),
(533, 19, 2, 5, 'BLKS', 0),
(534, 19, 2, 5, 'FLS', 0),
(535, 20, 2, 5, 'PTS', 6),
(536, 20, 2, 5, 'REBS', 8),
(537, 20, 2, 5, 'ASTS', 0),
(538, 20, 2, 5, 'STLS', 1),
(539, 20, 2, 5, 'BLKS', 1),
(540, 20, 2, 5, 'FLS', 0),
(541, 22, 2, 5, 'PTS', 9),
(542, 22, 2, 5, 'REBS', 7),
(543, 22, 2, 5, 'ASTS', 1),
(544, 22, 2, 5, 'STLS', 0),
(545, 22, 2, 5, 'BLKS', 0),
(546, 22, 2, 5, 'FLS', 0),
(547, 24, 2, 5, 'PTS', 5),
(548, 24, 2, 5, 'REBS', 3),
(549, 24, 2, 5, 'ASTS', 3),
(550, 24, 2, 5, 'STLS', 2),
(551, 24, 2, 5, 'BLKS', 0),
(552, 24, 2, 5, 'FLS', 0),
(553, 25, 2, 5, 'PTS', 6),
(554, 25, 2, 5, 'REBS', 4),
(555, 25, 2, 5, 'ASTS', 1),
(556, 25, 2, 5, 'STLS', 0),
(557, 25, 2, 5, 'BLKS', 3),
(558, 25, 2, 5, 'FLS', 0),
(559, 27, 2, 5, 'PTS', 6),
(560, 27, 2, 5, 'REBS', 9),
(561, 27, 2, 5, 'ASTS', 1),
(562, 27, 2, 5, 'STLS', 1),
(563, 27, 2, 5, 'BLKS', 0),
(564, 27, 2, 5, 'FLS', 0),
(565, 28, 2, 5, 'PTS', 2),
(566, 28, 2, 5, 'REBS', 5),
(567, 28, 2, 5, 'ASTS', 0),
(568, 28, 2, 5, 'STLS', 1),
(569, 28, 2, 5, 'BLKS', 0),
(570, 28, 2, 5, 'FLS', 0),
(571, 29, 2, 5, 'PTS', 8),
(572, 29, 2, 5, 'REBS', 0),
(573, 29, 2, 5, 'ASTS', 0),
(574, 29, 2, 5, 'STLS', 1),
(575, 29, 2, 5, 'BLKS', 0),
(576, 29, 2, 5, 'FLS', 0),
(577, 43, 4, 5, 'PTS', 10),
(578, 43, 4, 5, 'REBS', 8),
(579, 43, 4, 5, 'ASTS', 0),
(580, 43, 4, 5, 'STLS', 2),
(581, 43, 4, 5, 'BLKS', 1),
(582, 43, 4, 5, 'FLS', 0),
(583, 44, 4, 5, 'PTS', 21),
(584, 44, 4, 5, 'REBS', 6),
(585, 44, 4, 5, 'ASTS', 2),
(586, 44, 4, 5, 'STLS', 4),
(587, 44, 4, 5, 'BLKS', 0),
(588, 44, 4, 5, 'FLS', 0),
(589, 45, 4, 5, 'PTS', 0),
(590, 45, 4, 5, 'REBS', 0),
(591, 45, 4, 5, 'ASTS', 0),
(592, 45, 4, 5, 'STLS', 1),
(593, 45, 4, 5, 'BLKS', 0),
(594, 45, 4, 5, 'FLS', 0),
(595, 46, 4, 5, 'PTS', 0),
(596, 46, 4, 5, 'REBS', 2),
(597, 46, 4, 5, 'ASTS', 6),
(598, 46, 4, 5, 'STLS', 1),
(599, 46, 4, 5, 'BLKS', 1),
(600, 46, 4, 5, 'FLS', 0),
(601, 47, 4, 5, 'PTS', 5),
(602, 47, 4, 5, 'REBS', 3),
(603, 47, 4, 5, 'ASTS', 0),
(604, 47, 4, 5, 'STLS', 0),
(605, 47, 4, 5, 'BLKS', 0),
(606, 47, 4, 5, 'FLS', 0),
(607, 49, 4, 5, 'PTS', 14),
(608, 49, 4, 5, 'REBS', 5),
(609, 49, 4, 5, 'ASTS', 0),
(610, 49, 4, 5, 'STLS', 0),
(611, 49, 4, 5, 'BLKS', 0),
(612, 49, 4, 5, 'FLS', 0),
(613, 50, 4, 5, 'PTS', 0),
(614, 50, 4, 5, 'REBS', 1),
(615, 50, 4, 5, 'ASTS', 0),
(616, 50, 4, 5, 'STLS', 0),
(617, 50, 4, 5, 'BLKS', 0),
(618, 50, 4, 5, 'FLS', 0),
(619, 52, 4, 5, 'PTS', 8),
(620, 52, 4, 5, 'REBS', 5),
(621, 52, 4, 5, 'ASTS', 3),
(622, 52, 4, 5, 'STLS', 3),
(623, 52, 4, 5, 'BLKS', 0),
(624, 52, 4, 5, 'FLS', 0),
(625, 53, 4, 5, 'PTS', 2),
(626, 53, 4, 5, 'REBS', 2),
(627, 53, 4, 5, 'ASTS', 0),
(628, 53, 4, 5, 'STLS', 1),
(629, 53, 4, 5, 'BLKS', 1),
(630, 53, 4, 5, 'FLS', 0),
(631, 55, 4, 5, 'PTS', 0),
(632, 55, 4, 5, 'REBS', 1),
(633, 55, 4, 5, 'ASTS', 0),
(634, 55, 4, 5, 'STLS', 0),
(635, 55, 4, 5, 'BLKS', 0),
(636, 55, 4, 5, 'FLS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `game_number` int(11) NOT NULL,
  `date` date NOT NULL,
  `team1_score` int(200) NOT NULL,
  `team2_score` int(200) NOT NULL,
  `winner_id` int(11) NOT NULL,
  `losser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `game_number`, `date`, `team1_score`, `team2_score`, `winner_id`, `losser_id`) VALUES
(1, 1, '2022-10-23', 50, 60, 1, 4),
(2, 2, '2022-11-05', 0, 0, 0, 0),
(3, 3, '2022-11-05', 0, 0, 0, 0),
(4, 4, '2022-11-06', 0, 0, 0, 0),
(5, 5, '2022-11-06', 0, 0, 0, 0),
(6, 6, '2022-11-12', 0, 0, 0, 0),
(7, 7, '2022-11-13', 0, 0, 0, 0),
(8, 8, '2022-11-19', 0, 0, 0, 0),
(9, 9, '2022-11-20', 0, 0, 0, 0),
(10, 10, '2022-11-26', 0, 0, 0, 0),
(11, 11, '2022-11-27', 0, 0, 0, 0),
(12, 12, '2022-12-03', 0, 0, 0, 0),
(13, 13, '2022-12-04', 0, 0, 0, 0),
(14, 14, '2022-12-04', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `team1` varchar(128) NOT NULL,
  `team2` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `date`, `team1`, `team2`) VALUES
(1, '2022-10-23', 'Blue Sharks', 'Green Dragonfish'),
(2, '2022-11-05', 'Purple Betta', 'Red Barracuda'),
(3, '2022-11-05', 'Green Dragonfish', 'Blue Sharks'),
(4, '2022-11-06', 'Green Dragonfish', 'Purple Betta'),
(5, '2022-11-06', 'Red Barracuda', 'Blue Sharks'),
(6, '2022-11-12', 'Green Dragonfish', 'Purple Betta'),
(7, '2022-11-13', 'Blue Sharks', 'Red Barracuda'),
(8, '2022-11-19', 'Red Barracuda', 'Green Dragonfish'),
(9, '2022-11-20', 'Purple Betta', 'Blue Sharks'),
(10, '2022-11-26', 'Red Barracuda', 'Purple Betta'),
(11, '2022-11-27', 'Green Dragonfish', 'Red Barracuda'),
(12, '2022-12-03', 'Blue Sharks', 'Purple Betta'),
(13, '2022-12-04', 'TBA', 'TBA'),
(14, '2022-12-04', 'TBA', 'TBA');

-- --------------------------------------------------------

--
-- Table structure for table `standings`
--

CREATE TABLE `standings` (
  `id` int(11) NOT NULL,
  `img_loc` varchar(128) NOT NULL,
  `teams` varchar(128) NOT NULL,
  `win` int(11) NOT NULL,
  `loss` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `standings`
--

INSERT INTO `standings` (`id`, `img_loc`, `teams`, `win`, `loss`) VALUES
(1, 'green.png', 'Dragonfish', 1, 0),
(2, 'blue.png', 'Sharks', 0, 1),
(3, 'purple.png', 'Betta', 0, 0),
(4, 'red.png', 'Barracuda', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `team_name` varchar(128) NOT NULL,
  `color` varchar(128) NOT NULL,
  `img_loc` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team_name`, `color`, `img_loc`) VALUES
(1, 'Dragonfish', 'Green', 'green.png'),
(2, 'Barracuda', 'Red', 'red.png'),
(3, 'Betta', 'Purple', 'purple.png'),
(4, 'Sharks', 'Blue', 'blue.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standings`
--
ALTER TABLE `standings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `player_stats`
--
ALTER TABLE `player_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `standings`
--
ALTER TABLE `standings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
