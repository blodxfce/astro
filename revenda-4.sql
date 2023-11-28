-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2023 at 11:01 PM
-- Server version: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `revenda-4`
--

-- --------------------------------------------------------

--
-- Table structure for table `ogp_addons`
--

CREATE TABLE `ogp_addons` (
  `addon_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL,
  `url` varchar(200) NOT NULL,
  `path` varchar(80) NOT NULL,
  `addon_type` varchar(7) NOT NULL,
  `home_cfg_id` varchar(7) NOT NULL,
  `post_script` longtext NOT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_adminExternalLinks`
--

CREATE TABLE `ogp_adminExternalLinks` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL,
  `url` varchar(200) NOT NULL,
  `user_id` varchar(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_adminlte_serverstats`
--

CREATE TABLE `ogp_adminlte_serverstats` (
  `home_id` int(4) NOT NULL,
  `users_online` int(4) NOT NULL,
  `current_stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_adminlte_settings`
--

CREATE TABLE `ogp_adminlte_settings` (
  `id` int(20) NOT NULL,
  `user` int(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_adminlte_settings`
--

INSERT INTO `ogp_adminlte_settings` (`id`, `user`, `name`, `value`) VALUES
(1, 1, 'theme', 's:4:\"dark\";'),
(3, 1, 'dashboard_columns', 'a:4:{i:0;a:3:{s:4:\"item\";s:5:\"item6\";s:7:\"section\";s:7:\"column4\";s:9:\"collapsed\";i:0;}i:1;a:3:{s:4:\"item\";s:5:\"item7\";s:7:\"section\";s:7:\"column5\";s:9:\"collapsed\";i:0;}i:2;a:3:{s:4:\"item\";s:5:\"item8\";s:7:\"section\";s:7:\"column6\";s:9:\"collapsed\";i:0;}i:3;a:3:{s:4:\"item\";s:5:\"item9\";s:7:\"section\";s:7:\"column4\";s:9:\"collapsed\";i:0;}}'),
(4, 2, 'theme', 's:4:\"dark\";'),
(5, 5, 'theme', 's:4:\"dark\";'),
(6, -1, 'themeServerstatsNum', 's:1:\"6\";'),
(7, -1, 'themeNavWidth', 's:3:\"262\";'),
(8, 10, 'theme', 's:4:\"dark\";'),
(9, 13, 'theme', 's:4:\"dark\";'),
(10, 16, 'theme', 's:4:\"dark\";'),
(11, 18, 'theme', 's:4:\"dark\";');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_api_tokens`
--

CREATE TABLE `ogp_api_tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ogp_api_tokens`
--

INSERT INTO `ogp_api_tokens` (`user_id`, `token`) VALUES
(1, '1a106f72d8217d0dbe14a5f6d75b2e9e49792689e6e3c08464323fd6ae6847cd'),
(2, 'b4d3dd83b8ecd4ccf08005daddc543d3f9a850e220122029a2647df57e6e0f4b'),
(3, '76907f4a1df1474d4f787f65786830a78ec34f7fa74b1a8e0829d09903b5f8bf'),
(5, 'de38de9d9bf8dc2ce1ce08f143f8147db810dd97b97181d219e92300b9e683b8'),
(8, 'adefd1fdd14e60ba8e79973c60ce0525a640937ff4e0a62ddffc78b53be1db18'),
(10, '4f83c315b1c1825764dd936b3bc4c0caba0d770925ee26aaac14d39d636fd9ba'),
(11, '9ed2e370a7cd2161eaa2b7718d4d780e54a97d863ac16f7db55671036904b32c'),
(13, '598b84950ee6251cb3dec0f2043f3acfc36006455c73b5a2cc4e3f6c4345ea9f'),
(16, '3a6514f3d8cd8887392d86b949b0c41e03a4dd05fe4513fa2def01ac061e08ec'),
(17, '88147236f067450ec7fcccb7a75e867feadea0ecce1c4fc8150fe6a69ec48581'),
(18, '9fa1c288e35ccb1c436762eb56ef208f68d7cb6bdcae7e40162e54d61e8dfb8f');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_arrange_ports`
--

CREATE TABLE `ogp_arrange_ports` (
  `range_id` int(11) NOT NULL,
  `ip_id` int(11) NOT NULL,
  `home_cfg_id` int(11) NOT NULL,
  `start_port` smallint(11) UNSIGNED NOT NULL,
  `end_port` smallint(11) UNSIGNED NOT NULL,
  `port_increment` smallint(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Remote servers and IPs';

--
-- Dumping data for table `ogp_arrange_ports`
--

INSERT INTO `ogp_arrange_ports` (`range_id`, `ip_id`, `home_cfg_id`, `start_port`, `end_port`, `port_increment`) VALUES
(1, 1, 0, 7100, 7115, 1),
(2, 1, 146, 23045, 23055, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ogp_ban_list`
--

CREATE TABLE `ogp_ban_list` (
  `client_ip` varchar(255) NOT NULL,
  `logging_attempts` int(11) NOT NULL DEFAULT 0,
  `banned_until` varchar(16) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ogp_ban_list`
--

INSERT INTO `ogp_ban_list` (`client_ip`, `logging_attempts`, `banned_until`) VALUES
('179.66.71.16', 6, '1700715924');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_config_homes`
--

CREATE TABLE `ogp_config_homes` (
  `home_cfg_id` int(20) NOT NULL,
  `game_key` varchar(64) NOT NULL,
  `game_name` varchar(255) NOT NULL,
  `home_cfg_file` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_config_homes`
--

INSERT INTO `ogp_config_homes` (`home_cfg_id`, `game_key`, `game_name`, `home_cfg_file`) VALUES
(145, 'multitheftauto_linux32', 'Multi Theft Auto', 'multitheftauto_linux32.xml'),
(146, 'multitheftauto_linux64', 'Multi Theft Auto', 'multitheftauto_linux64.xml'),
(185, 'sanandreasmp_linux32', 'San Andreas Multiplayer', 'sanandreasmp_linux32.xml');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_config_mods`
--

CREATE TABLE `ogp_config_mods` (
  `mod_cfg_id` int(50) NOT NULL,
  `home_cfg_id` varchar(50) NOT NULL,
  `mod_key` varchar(100) NOT NULL COMMENT 'mod short name - used by the game server for startup commands - ex cstrike',
  `mod_name` varchar(255) NOT NULL COMMENT 'Mod value is user defined string - like Counter-Strike',
  `def_precmd` text DEFAULT NULL,
  `def_postcmd` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_config_mods`
--

INSERT INTO `ogp_config_mods` (`mod_cfg_id`, `home_cfg_id`, `mod_key`, `mod_name`, `def_precmd`, `def_postcmd`) VALUES
(1, '1', '7daystodie-alpha', 'none', NULL, NULL),
(2, '2', '7daystodie-alpha', 'none', NULL, NULL),
(3, '3', '7daystodie1', 'Stable', NULL, NULL),
(4, '3', '7daystodie2', 'Unstable build', NULL, NULL),
(5, '4', '7daystodie1', 'Stable', NULL, NULL),
(6, '4', '7daystodie2', 'Unstable build', NULL, NULL),
(7, '5', '7daystodie1', 'Stable', NULL, NULL),
(8, '5', '7daystodie2', 'Unstable build', NULL, NULL),
(9, '6', 'default', 'None', NULL, NULL),
(10, '7', 'smashball', 'none', NULL, NULL),
(11, '8', 'synergy', 'none', NULL, NULL),
(12, '9', 'default', 'None', NULL, NULL),
(13, '10', 'default', 'None', NULL, NULL),
(14, '11', 'ageofchivalry', 'none', NULL, NULL),
(15, '12', 'default', 'None', NULL, NULL),
(16, '13', 'default', 'None', NULL, NULL),
(17, '14', 'arma2', 'none', NULL, NULL),
(18, '15', 'arma2', 'none', NULL, NULL),
(19, '16', 'arma2co', 'none', NULL, NULL),
(20, '17', 'arma2co', 'none', NULL, NULL),
(21, '18', 'arma2oa', 'none', NULL, NULL),
(22, '19', 'arma2oa', 'none', NULL, NULL),
(23, '20', 'Arma3', 'none', NULL, NULL),
(24, '21', 'Arma3', 'none', NULL, NULL),
(25, '22', 'Arma3', 'none', NULL, NULL),
(26, '23', 'arma3alpha', 'none', NULL, NULL),
(27, '24', 'assettocorsa', 'None', NULL, NULL),
(28, '25', 'assettocorsa', 'None', NULL, NULL),
(29, '26', 'default', 'None', NULL, NULL),
(30, '27', 'default', 'None', NULL, NULL),
(31, '28', 'avorion', 'none', NULL, NULL),
(32, '29', 'default', 'None', NULL, NULL),
(33, '30', 'bf2', 'Battlefield 2', NULL, NULL),
(34, '30', 'xpack', 'Special Forces', NULL, NULL),
(35, '30', 'fh2', 'Forgotten Hope 2', NULL, NULL),
(36, '31', 'bf2', 'Battlefield 2', NULL, NULL),
(37, '31', 'xpack', 'Special Forces', NULL, NULL),
(38, '31', 'fh2', 'Forgotten Hope 2', NULL, NULL),
(39, '32', 'bfbc2', 'none', NULL, NULL),
(40, '33', 'b3', 'None', NULL, NULL),
(41, '34', 'b3', 'None', NULL, NULL),
(42, '35', '1', 'none', NULL, NULL),
(43, '36', 'brainbread2', 'none', NULL, NULL),
(44, '37', 'brainbread2', 'none', NULL, NULL),
(45, '38', 'default', 'None', NULL, NULL),
(46, '39', 'default', 'None', NULL, NULL),
(47, '40', 'default', 'None', NULL, NULL),
(48, '41', 'default', 'None', NULL, NULL),
(49, '42', 'default', 'None', NULL, NULL),
(50, '43', 'default', 'None', NULL, NULL),
(51, '44', 'default', 'None', NULL, NULL),
(52, '45', 'default', 'None', NULL, NULL),
(53, '46', 'default', 'None', NULL, NULL),
(54, '47', 'default', 'None', NULL, NULL),
(55, '48', 'default', 'None', NULL, NULL),
(56, '49', 'default', 'None', NULL, NULL),
(57, '50', 'default', 'None', NULL, NULL),
(58, '51', 'default', 'None', NULL, NULL),
(59, '52', 'default', 'None', NULL, NULL),
(60, '53', 'default', 'none', NULL, NULL),
(61, '54', 'colonysurvival', 'none', NULL, NULL),
(62, '55', 'default', 'None', NULL, NULL),
(63, '56', 'cstrike', 'none', NULL, NULL),
(64, '57', 'cstrike', 'none', NULL, NULL),
(65, '58', 'default', 'None', NULL, NULL),
(66, '59', 'default', 'None', NULL, NULL),
(67, '60', 'csgo', 'none', NULL, NULL),
(68, '61', 'csgo', 'none', NULL, NULL),
(69, '62', 'cspromod', 'none', NULL, NULL),
(70, '63', 'cspromod', 'none', NULL, NULL),
(71, '64', 'cstrike', 'none', NULL, NULL),
(72, '65', 'cstrike', 'none', NULL, NULL),
(73, '66', 'czero', 'none', NULL, NULL),
(74, '67', 'czero', 'none', NULL, NULL),
(75, '68', 'dayzmod', 'none', NULL, NULL),
(76, '69', 'dayzmod', 'none', NULL, NULL),
(77, '70', 'dayzmod', 'none', NULL, NULL),
(78, '71', 'default', 'None', NULL, NULL),
(79, '72', 'dmc', 'none', NULL, NULL),
(80, '73', 'dmc', 'none', NULL, NULL),
(81, '74', 'dod', 'none', NULL, NULL),
(82, '75', 'dod', 'none', NULL, NULL),
(83, '76', 'dod', 'none', NULL, NULL),
(84, '77', 'dod', 'none', NULL, NULL),
(85, '78', 'doi', 'none', NULL, NULL),
(86, '79', 'doi', 'none', NULL, NULL),
(87, '80', 'dontstarvetogether', 'none', NULL, NULL),
(88, '81', 'dystopia', 'none', NULL, NULL),
(89, '82', 'default', 'None', NULL, NULL),
(90, '83', 'empyriongs1', 'Stable', NULL, NULL),
(91, '83', 'empyriongs2', 'Unstable Test Branch', NULL, NULL),
(92, '84', 'esmod', 'none', NULL, NULL),
(93, '85', 'feedthebeast', 'none', NULL, NULL),
(94, '86', 'feedthebeast', 'none', NULL, NULL),
(95, '87', 'fgms', 'None', NULL, NULL),
(96, '88', 'fof', 'none', NULL, NULL),
(97, '89', 'fof', 'none', NULL, NULL),
(98, '90', 'default', 'None', NULL, NULL),
(99, '91', 'default', 'None', NULL, NULL),
(100, '92', 'freecol', 'None', NULL, NULL),
(101, '93', 'freecol', 'None', NULL, NULL),
(102, '94', 'freecol', 'None', NULL, NULL),
(103, '95', 'freecol', 'None', NULL, NULL),
(104, '96', 'garrysmod', 'none', NULL, NULL),
(105, '97', 'garrysmod', 'none', NULL, NULL),
(106, '98', 'gearbox', 'none', NULL, NULL),
(107, '99', 'halo_ce', 'none', NULL, NULL),
(108, '100', 'hiddensource', 'none', NULL, NULL),
(109, '101', 'hl2mp', 'none', NULL, NULL),
(110, '102', 'hl2mp', 'none', NULL, NULL),
(111, '103', 'valve', 'none', NULL, NULL),
(112, '104', 'valve', 'none', NULL, NULL),
(113, '105', 'valve', 'none', NULL, NULL),
(114, '106', 'default', 'None', NULL, NULL),
(115, '107', 'default', 'None', NULL, NULL),
(116, '108', 'default', 'None', NULL, NULL),
(117, '109', 'default', 'None', NULL, NULL),
(118, '110', 'none', 'None', NULL, NULL),
(119, '111', 'insurgency', 'none', NULL, NULL),
(120, '112', 'insurgency', 'none', NULL, NULL),
(121, '113', 'insurgency', 'None', NULL, NULL),
(122, '114', 'sandstorm', 'none', NULL, NULL),
(123, '115', 'sandstorm', 'none', NULL, NULL),
(124, '116', 'ivmp', 'None', NULL, NULL),
(125, '117', 'ivmp', 'None', NULL, NULL),
(126, '118', 'jcmp', 'none', NULL, NULL),
(127, '119', 'jcmp', 'none', NULL, NULL),
(128, '120', 'base', 'BaseJK2', NULL, NULL),
(129, '120', 'DS-Online', 'DS-Online', NULL, NULL),
(130, '120', 'Movie_Battles', 'Movie_Battles', NULL, NULL),
(131, '120', 'Forcemod_2', 'Forcemod_2', NULL, NULL),
(132, '120', 'Jedi Enhancers', 'Jedi Enhancers', NULL, NULL),
(133, '120', 'JediMod', 'JediMod', NULL, NULL),
(134, '121', 'base', 'BaseJK3', NULL, NULL),
(135, '121', 'MBII', 'MovieBattles II', NULL, NULL),
(136, '121', 'lugormod', 'Lugormod', NULL, NULL),
(137, '121', 'forcemod', 'Force Mod', NULL, NULL),
(138, '121', 'ojpenhanced', 'OJP Enhanced', NULL, NULL),
(139, '121', 'ojpbasic', 'OJP Basic', NULL, NULL),
(140, '122', 'KFmod.KFGameType', 'none', NULL, NULL),
(141, '123', 'killingfloor2', 'none', NULL, NULL),
(142, '124', 'killingfloor2', 'none', NULL, NULL),
(143, '125', 'KFmod.KFGameType', 'none', NULL, NULL),
(144, '126', 'left4dead2', 'none', NULL, NULL),
(145, '127', 'left4dead2', 'none', NULL, NULL),
(146, '128', 'left4dead', 'none', NULL, NULL),
(147, '129', 'default', 'None', NULL, NULL),
(148, '130', 'm2o', 'None', NULL, NULL),
(149, '131', 'm2o', 'None', NULL, NULL),
(150, '132', 'default', 'None', NULL, NULL),
(151, '133', 'default', 'None', NULL, NULL),
(152, '134', 'default', 'None', NULL, NULL),
(153, '135', 'default', 'None', NULL, NULL),
(154, '136', 'MiscreatedDedicatedServer', 'none', NULL, NULL),
(155, '137', '1', 'Free-For-All', NULL, NULL),
(156, '137', '2', 'Team Death Match', NULL, NULL),
(157, '137', '3', 'Round Based Match', NULL, NULL),
(158, '137', '4', 'Objective', NULL, NULL),
(159, '138', '1', 'Free-For-All', NULL, NULL),
(160, '138', '2', 'Team Death Match', NULL, NULL),
(161, '138', '3', 'Round Based Match', NULL, NULL),
(162, '138', '4', 'Objective', NULL, NULL),
(163, '139', '1', 'Free-For-All', NULL, NULL),
(164, '139', '2', 'Team Death Match', NULL, NULL),
(165, '139', '3', 'Round Based Match', NULL, NULL),
(166, '139', '4', 'Objective', NULL, NULL),
(167, '140', '1', 'Free-For-All', NULL, NULL),
(168, '140', '2', 'Team Death Match', NULL, NULL),
(169, '140', '3', 'Round Based Match', NULL, NULL),
(170, '140', '4', 'Objective', NULL, NULL),
(171, '141', '1', 'Free-For-All', NULL, NULL),
(172, '141', '2', 'Team Death Match', NULL, NULL),
(173, '141', '3', 'Round Based Match', NULL, NULL),
(174, '141', '4', 'Objective', NULL, NULL),
(175, '142', '1', 'Free-For-All', NULL, NULL),
(176, '142', '2', 'Team Death Match', NULL, NULL),
(177, '142', '3', 'Round Based Match', NULL, NULL),
(178, '142', '4', 'Objective', NULL, NULL),
(179, '143', 'default', 'None', NULL, NULL),
(180, '144', 'mab_warband', 'none', NULL, NULL),
(181, '145', 'default', 'None', NULL, NULL),
(182, '146', 'default', 'None', NULL, NULL),
(183, '147', 'default', 'None', NULL, NULL),
(184, '148', 'default', 'None', NULL, NULL),
(185, '149', 'murmur', 'none', NULL, NULL),
(186, '150', 'murmur', 'none', NULL, NULL),
(187, '151', 'ns2', 'none', NULL, NULL),
(188, '152', 'nexuiz', 'none', NULL, NULL),
(189, '153', 'nexuiz', 'none', NULL, NULL),
(190, '154', 'nexuiz', 'none', NULL, NULL),
(191, '155', 'nightofthedead', 'none', NULL, NULL),
(192, '156', 'nmrih', 'none', NULL, NULL),
(193, '157', 'nmrih', 'none', NULL, NULL),
(194, '158', 'nucleardawn', 'none', NULL, NULL),
(195, '159', 'nucleardawn', 'none', NULL, NULL),
(196, '160', 'default', 'None', NULL, NULL),
(197, '161', 'openarena', 'none', NULL, NULL),
(198, '162', 'default', 'None', NULL, NULL),
(199, '163', 'default', 'None', NULL, NULL),
(200, '164', 'default', 'None', NULL, NULL),
(201, '165', 'default', 'None', NULL, NULL),
(202, '166', 'default', 'None', NULL, NULL),
(203, '167', 'default', 'None', NULL, NULL),
(204, '168', 'default', 'None', NULL, NULL),
(205, '169', 'pvkii', 'none', NULL, NULL),
(206, '170', 'quake3', 'none', NULL, NULL),
(207, '171', 'quake3', 'none', NULL, NULL),
(208, '172', 'quake4', 'none', NULL, NULL),
(209, '173', 'ragemp', 'none', NULL, NULL),
(210, '174', 'default', 'None', NULL, NULL),
(211, '175', 'default', 'None', NULL, NULL),
(212, '176', 'redorchestra2', 'none', NULL, NULL),
(213, '177', 'default', 'None', NULL, NULL),
(214, '178', 'ricochet', 'none', NULL, NULL),
(215, '179', 'risingstorm2', 'none', NULL, NULL),
(216, '180', 'ror', 'None', NULL, NULL),
(217, '181', 'ror', 'None', NULL, NULL),
(218, '182', 'rust', 'none', NULL, NULL),
(219, '183', 'default', 'None', NULL, NULL),
(220, '184', 'default', 'None', NULL, NULL),
(221, '185', 'default', 'None', NULL, NULL),
(222, '186', 'default', 'None', NULL, NULL),
(223, '187', 'serioussamhdfe', 'none', NULL, NULL),
(224, '188', 'serioussamhdse', 'none', NULL, NULL),
(225, '189', 'sms', 'none', NULL, NULL),
(226, '190', 'sms', 'none', NULL, NULL),
(227, '191', 'default', 'none', NULL, NULL),
(228, '192', 'default', 'none', NULL, NULL),
(229, '193', 'sinusbot', 'none', NULL, NULL),
(230, '194', 'smokingguns', 'none', NULL, NULL),
(231, '195', 'smokingguns', 'none', NULL, NULL),
(232, '196', 'default', 'None', NULL, NULL),
(233, '197', 'default', 'none', NULL, NULL),
(234, '198', 'space_engineers', 'none', NULL, NULL),
(235, '199', 'space_engineers', 'none', NULL, NULL),
(236, '200', 'spigot', 'none', NULL, NULL),
(237, '201', 'default', 'None', NULL, NULL),
(238, '202', 'default', 'None', NULL, NULL),
(239, '203', 'default', 'None', NULL, NULL),
(240, '204', 'default', 'None', NULL, NULL),
(241, '205', 'Stationeers', 'None', NULL, NULL),
(242, '206', 'ts2', 'none', NULL, NULL),
(243, '207', 'ts2', 'none', NULL, NULL),
(244, '208', 'default', 'None', NULL, NULL),
(245, '209', 'default', 'None', NULL, NULL),
(246, '210', 'default', 'None', NULL, NULL),
(247, '211', 'default', 'None', NULL, NULL),
(248, '212', 'default', 'None', NULL, NULL),
(249, '213', 'tf', 'none', NULL, NULL),
(250, '214', 'tf', 'none', NULL, NULL),
(251, '215', 'tf', 'none', NULL, NULL),
(252, '216', 'tfc', 'none', NULL, NULL),
(253, '217', 'tfc', 'none', NULL, NULL),
(254, '218', 'default', 'None', NULL, NULL),
(255, '219', 'tmn', 'None', NULL, NULL),
(256, '220', 'tmn', 'None', NULL, NULL),
(257, '221', 'tmnf', 'None', NULL, NULL),
(258, '222', 'tmnf', 'None', NULL, NULL),
(259, '223', 'ut', 'none', NULL, NULL),
(260, '224', 'default', 'None', NULL, NULL),
(261, '225', 'default', 'None', NULL, NULL),
(262, '226', 'default', 'None', NULL, NULL),
(263, '227', 'default', 'None', NULL, NULL),
(264, '228', '0', 'Free For All', NULL, NULL),
(265, '228', '3', 'Team Death Match', NULL, NULL),
(266, '228', '4', 'Team Survivor', NULL, NULL),
(267, '228', '5', 'Follow the leader', NULL, NULL),
(268, '228', '6', 'Capture and Hold', NULL, NULL),
(269, '228', '7', 'Capture the Flag', NULL, NULL),
(270, '228', '8', 'Bomb Mode', NULL, NULL),
(271, '229', '0', 'Free For All', NULL, NULL),
(272, '229', '3', 'Team Death Match', NULL, NULL),
(273, '229', '4', 'Team Survivor', NULL, NULL),
(274, '229', '5', 'Follow the leader', NULL, NULL),
(275, '229', '6', 'Capture and Hold', NULL, NULL),
(276, '229', '7', 'Capture the Flag', NULL, NULL),
(277, '229', '8', 'Bomb Mode', NULL, NULL),
(278, '230', '0', 'Free For All', NULL, NULL),
(279, '230', '3', 'Team Death Match', NULL, NULL),
(280, '230', '4', 'Team Survivor', NULL, NULL),
(281, '230', '5', 'Follow the leader', NULL, NULL),
(282, '230', '6', 'Capture and Hold', NULL, NULL),
(283, '230', '7', 'Capture the Flag', NULL, NULL),
(284, '230', '8', 'Bomb Mode', NULL, NULL),
(285, '231', 'UT2k4Assault.ASGameInfo', 'Assault', NULL, NULL),
(286, '231', 'XGame.xCTFGame', 'Capture The Flag', NULL, NULL),
(287, '231', 'XGame.xBombingRun', 'Bombing Run', NULL, NULL),
(288, '231', 'xGame.xDoubleDom', 'Double Domination', NULL, NULL),
(289, '231', 'XGame.xDeathMatch', 'Death Match', NULL, NULL),
(290, '231', 'SkaarjPack.Invasion', 'Invasion', NULL, NULL),
(291, '231', 'BonusPack.xLastManStandingGame', 'Last Man Standing', NULL, NULL),
(292, '231', 'BonusPack.xMutantGame', 'Mutant', NULL, NULL),
(293, '231', 'Onslaught.ONSOnslaughtGame', 'Onslaught', NULL, NULL),
(294, '231', 'XGame.xTeamGame', 'Team Death Match', NULL, NULL),
(295, '231', 'XGame.xVehicleCTFGame', 'Vehicle CTF', NULL, NULL),
(296, '232', 'UT2k4Assault.ASGameInfo', 'Assault', NULL, NULL),
(297, '232', 'XGame.xCTFGame', 'Capture The Flag', NULL, NULL),
(298, '232', 'XGame.xBombingRun', 'Bombing Run', NULL, NULL),
(299, '232', 'xGame.xDoubleDom', 'Double Domination', NULL, NULL),
(300, '232', 'XGame.xDeathMatch', 'Death Match', NULL, NULL),
(301, '232', 'SkaarjPack.Invasion', 'Invasion', NULL, NULL),
(302, '232', 'BonusPack.xLastManStandingGame', 'Last Man Standing', NULL, NULL),
(303, '232', 'BonusPack.xMutantGame', 'Mutant', NULL, NULL),
(304, '232', 'Onslaught.ONSOnslaughtGame', 'Onslaught', NULL, NULL),
(305, '232', 'XGame.xTeamGame', 'Team Death Match', NULL, NULL),
(306, '232', 'XGame.xVehicleCTFGame', 'Vehicle CTF', NULL, NULL),
(307, '233', 'UTGame.UTDeathmatch', 'DeathMatch', NULL, NULL),
(308, '233', 'UTGameContent.UTCTFGame_Content', 'Capture the Flag', NULL, NULL),
(309, '233', 'UTGameContent.UTOnslaughtGame_Content', 'Warfare', NULL, NULL),
(310, '233', 'UTGameContent.UTVehicleCTFGame_Content', 'Vehicle Capture The Flag', NULL, NULL),
(311, '233', 'UTGame.UTTeamGame', 'Team DeatMatch', NULL, NULL),
(312, '233', 'UTGame.UTDuelGame ', 'Duel', NULL, NULL),
(313, '234', 'UTGame.UTDeathmatch', 'DeathMatch', NULL, NULL),
(314, '234', 'UTGameContent.UTCTFGame_Content', 'Capture the Flag', NULL, NULL),
(315, '234', 'UTGameContent.UTOnslaughtGame_Content', 'Warfare', NULL, NULL),
(316, '234', 'UTGameContent.UTVehicleCTFGame_Content', 'Vehicle Capture The Flag', NULL, NULL),
(317, '234', 'UTGame.UTTeamGame', 'Team DeatMatch', NULL, NULL),
(318, '234', 'UTGame.UTDuelGame ', 'Duel', NULL, NULL),
(319, '235', '', 'none', NULL, NULL),
(320, '236', '', 'none', NULL, NULL),
(321, '237', 'vbox', 'none', NULL, NULL),
(322, '238', 'default', 'None', NULL, NULL),
(323, '239', 'default', 'None', NULL, NULL),
(324, '240', 'default', 'None', NULL, NULL),
(325, '241', 'default', 'None', NULL, NULL),
(326, '242', 'default', 'None', NULL, NULL),
(327, '243', 'default', 'None', NULL, NULL),
(328, '244', 'warsow', 'none', NULL, NULL),
(329, '245', 'warsow', 'none', NULL, NULL),
(330, '246', 'warsow', 'none', NULL, NULL),
(331, '247', 'warsow', 'none', NULL, NULL),
(332, '248', 'etmain', 'ET Main', NULL, NULL),
(333, '248', 'etpro', 'ET Pro', NULL, NULL),
(334, '248', 'tjmod', 'TJ Mod', NULL, NULL),
(335, '248', 'etjump', 'ET Jump', NULL, NULL),
(336, '248', 'jaymod', 'Jaymod', NULL, NULL),
(337, '248', 'nq', 'No Quarter', NULL, NULL),
(338, '249', 'osp', 'osp', NULL, NULL),
(339, '250', 'default', 'None', NULL, NULL),
(340, '251', 'default', 'None', NULL, NULL),
(341, '252', 'wurmu', 'none', NULL, NULL),
(342, '253', 'xonotic', 'none', NULL, NULL),
(343, '254', 'xonotic', 'none', NULL, NULL),
(344, '255', 'xonotic', 'none', NULL, NULL),
(345, '256', 'zps', 'none', NULL, NULL),
(346, '257', 'zps', 'none', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ogp_game_mods`
--

CREATE TABLE `ogp_game_mods` (
  `mod_id` int(50) NOT NULL,
  `home_id` int(255) NOT NULL,
  `mod_cfg_id` int(11) NOT NULL,
  `max_players` smallint(3) DEFAULT NULL,
  `extra_params` varchar(255) DEFAULT NULL,
  `cpu_affinity` varchar(64) DEFAULT NULL,
  `nice` smallint(3) DEFAULT 0,
  `precmd` text DEFAULT NULL,
  `postcmd` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='utf8mb4_general_ci';

--
-- Dumping data for table `ogp_game_mods`
--

INSERT INTO `ogp_game_mods` (`mod_id`, `home_id`, `mod_cfg_id`, `max_players`, `extra_params`, `cpu_affinity`, `nice`, `precmd`, `postcmd`) VALUES
(1, 1, 221, 220, '', 'NA', 0, NULL, NULL),
(2, 2, 182, 466, '', 'NA', 0, NULL, NULL),
(4, 4, 221, 50, '', 'NA', 0, NULL, NULL),
(5, 5, 221, 50, '', 'NA', 0, NULL, NULL),
(27, 21028, 221, 50, '', 'NA', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ogp_home_ip_ports`
--

CREATE TABLE `ogp_home_ip_ports` (
  `ip_id` int(11) NOT NULL,
  `port` int(11) NOT NULL,
  `home_id` int(11) NOT NULL,
  `force_mod_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_home_ip_ports`
--

INSERT INTO `ogp_home_ip_ports` (`ip_id`, `port`, `home_id`, `force_mod_id`) VALUES
(1, 3010, 21028, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ogp_logger`
--

CREATE TABLE `ogp_logger` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `date` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_logger`
--

INSERT INTO `ogp_logger` (`log_id`, `date`, `user_id`, `ip`, `message`) VALUES
(1, '14-11-2023 22:42:08', 1, '20.206.248.189', 'Logging in...'),
(2, '15-11-2023 00:01:26', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(3, '15-11-2023 00:03:55', 0, '20.206.248.189', 'Usuário e senha não conferem. ( 1 ) [ Usuário: adrian, Senha: ******** ]'),
(4, '15-11-2023 00:04:05', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(5, '15-11-2023 00:08:56', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(6, '15-11-2023 00:09:05', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:1]'),
(7, '15-11-2023 00:09:06', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:7620 para \"home\" com identificação 1.'),
(8, '15-11-2023 00:09:34', 1, '20.206.248.189', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.59:7620)'),
(9, '16-11-2023 12:19:09', 1, '20.64.96.247', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(10, '16-11-2023 20:57:20', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(11, '16-11-2023 21:01:07', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (Multi Theft Auto)'),
(12, '16-11-2023 21:01:17', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:27015 para \"home\" com identificação 2.'),
(13, '16-11-2023 21:01:28', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:182 HOME ID:2]'),
(14, '16-11-2023 21:01:54', 1, '20.206.248.189', 'Servidor iniciado com sucesso. (Multi Theft Auto 207.90.205.59:27015)'),
(15, '16-11-2023 21:02:04', 1, '20.206.248.189', 'O servidor \'Multi Theft Auto\' foi encerrado.(207.90.205.59:27015)'),
(16, '18-11-2023 17:16:24', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(17, '18-11-2023 17:36:18', 1, '20.206.248.189', 'O perfil do usuário <b>root</b> foi modificado com sucesso.'),
(18, '18-11-2023 18:00:00', 2, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(19, '18-11-2023 18:00:48', 2, '20.206.248.189', 'Servidor iniciado com sucesso. (bmrp 207.90.205.59:7621)'),
(20, '18-11-2023 18:01:02', 2, '20.206.248.189', 'O servidor \'bmrp\' foi encerrado.(207.90.205.59:7621)'),
(21, '18-11-2023 22:24:56', 3, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(22, '18-11-2023 22:25:24', 3, '20.206.248.189', 'Servidor iniciado com sucesso. (fee 207.90.205.59:7621)'),
(23, '20-11-2023 10:49:04', 0, '20.206.248.189', 'Usuário e senha não conferem. ( 1 ) [ Usuário: adrian, Senha: ******** ]'),
(24, '20-11-2023 10:49:13', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(25, '20-11-2023 11:40:09', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(26, '20-11-2023 11:40:53', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:5321 para \"home\" com identificação 1020.'),
(27, '20-11-2023 11:40:56', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:1020]'),
(28, '20-11-2023 11:42:24', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(29, '20-11-2023 12:52:01', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(30, '20-11-2023 12:52:07', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:5322 para \"home\" com identificação 5.'),
(31, '20-11-2023 12:57:26', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(32, '20-11-2023 12:57:36', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(33, '20-11-2023 12:57:39', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:5322 para \"home\" com identificação 5.'),
(34, '20-11-2023 13:11:39', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 1021.'),
(35, '20-11-2023 13:11:39', 1, '20.206.248.189', 'Excluido com sucesso /home/ogp_agent/OGP_User_Files/1021'),
(36, '20-11-2023 13:11:46', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 1020.'),
(37, '20-11-2023 13:11:46', 1, '20.206.248.189', 'Excluido com sucesso /home/ogp_agent/OGP_User_Files/1020'),
(38, '20-11-2023 13:12:24', 1, '20.206.248.189', 'Usuário adicionado com sucesso <em>cliente-01</em>.'),
(39, '20-11-2023 13:18:09', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(40, '20-11-2023 13:18:21', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1010 para \"home\" com identificação 1022.'),
(41, '20-11-2023 13:27:59', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1011 para \"home\" com identificação 1022.'),
(42, '20-11-2023 13:29:24', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(43, '20-11-2023 13:29:28', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1011 para \"home\" com identificação 1022.'),
(44, '20-11-2023 13:29:31', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1012 para \"home\" com identificação 1022.'),
(45, '20-11-2023 13:29:34', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1013 para \"home\" com identificação 1022.'),
(46, '20-11-2023 13:29:36', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1014 para \"home\" com identificação 1022.'),
(47, '20-11-2023 13:29:43', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1015 para \"home\" com identificação 1022.'),
(48, '20-11-2023 13:29:46', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1016 para \"home\" com identificação 1022.'),
(49, '20-11-2023 13:29:50', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1017 para \"home\" com identificação 1022.'),
(50, '20-11-2023 13:29:53', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1018 para \"home\" com identificação 1022.'),
(51, '20-11-2023 13:30:05', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1019 para \"home\" com identificação 1022.'),
(52, '20-11-2023 13:30:08', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1020 para \"home\" com identificação 1022.'),
(53, '20-11-2023 13:30:34', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(54, '20-11-2023 13:30:38', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(55, '20-11-2023 13:30:41', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(56, '20-11-2023 13:30:44', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(57, '20-11-2023 13:30:47', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(58, '20-11-2023 13:30:51', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(59, '20-11-2023 13:30:55', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(60, '20-11-2023 13:30:58', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(61, '20-11-2023 13:31:01', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(62, '20-11-2023 13:31:04', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(63, '20-11-2023 13:31:07', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(64, '20-11-2023 13:31:24', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(65, '20-11-2023 13:32:53', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(66, '20-11-2023 13:33:08', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 1022.'),
(67, '20-11-2023 13:33:08', 1, '20.206.248.189', 'Excluido com sucesso /home/ogp_agent/OGP_User_Files/1022'),
(68, '20-11-2023 13:42:01', 1, '20.206.248.189', 'O perfil do usuário <b>revenda</b> foi modificado com sucesso.'),
(69, '20-11-2023 13:42:09', 1, '20.206.248.189', 'Usuário excluído com sucesso <b>cliente-01</b>.'),
(70, '20-11-2023 13:50:22', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(71, '20-11-2023 13:51:58', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (Multi Theft Auto)'),
(72, '20-11-2023 13:52:58', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:182 HOME ID:1023]'),
(73, '20-11-2023 13:54:29', 1, '20.206.248.189', 'Mudado com sucesso o jogo de servidor. HOME ID:1023 - Alterar Tipo de Jogo:old home_cfg_id:146, new home_cfg_id:185'),
(74, '20-11-2023 13:54:38', 1, '20.206.248.189', 'Mudado com sucesso o jogo de servidor. HOME ID:1023 - Nome do servidor do jogo:San Andreas'),
(75, '20-11-2023 13:54:45', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:1010 para \"home\" com identificação 1023.'),
(76, '20-11-2023 13:54:56', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:1023]'),
(77, '20-11-2023 14:25:29', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 1024.'),
(78, '20-11-2023 14:25:30', 1, '20.206.248.189', 'Excluido com sucesso /home/ogp_agent/OGP_User_Files/1024'),
(79, '20-11-2023 14:32:12', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(80, '20-11-2023 14:32:19', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 1025.'),
(81, '20-11-2023 14:32:38', 1, '20.206.248.189', 'Mudado com sucesso o jogo de servidor. HOME ID:1025 - Alterar o proprietário principal:5'),
(82, '20-11-2023 14:33:48', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (Multi Theft Auto)'),
(83, '20-11-2023 14:37:34', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3011 para \"home\" com identificação 1026.'),
(84, '20-11-2023 14:37:46', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:182 HOME ID:1026]'),
(85, '20-11-2023 14:38:43', 1, '20.206.248.189', 'Servidor iniciado com sucesso. (Multi Theft Auto 207.90.205.59:3011)'),
(86, '20-11-2023 14:39:07', 1, '20.206.248.189', 'O servidor \'Multi Theft Auto\' foi encerrado.(207.90.205.59:3011)'),
(87, '20-11-2023 14:43:08', 1, '20.206.248.189', 'Servidor iniciado com sucesso. (Multi Theft Auto 207.90.205.59:3011)'),
(88, '20-11-2023 14:43:48', 1, '20.206.248.189', 'O servidor \'Multi Theft Auto\' foi reiniciado.(207.90.205.59:3011)'),
(89, '20-11-2023 14:43:56', 1, '20.206.248.189', 'O servidor \'Multi Theft Auto\' foi encerrado.(207.90.205.59:3011)'),
(90, '20-11-2023 14:44:29', 1, '20.206.248.189', 'Servidor iniciado com sucesso. (Multi Theft Auto 207.90.205.59:3011)'),
(91, '20-11-2023 14:44:59', 1, '20.206.248.189', 'O servidor \'Multi Theft Auto\' foi encerrado.(207.90.205.59:3011)'),
(92, '20-11-2023 14:47:04', 1, '20.206.248.189', 'Servidor iniciado com sucesso. (Multi Theft Auto 207.90.205.59:3011)'),
(93, '20-11-2023 14:48:29', 1, '20.206.248.189', 'O servidor \'Multi Theft Auto\' foi encerrado.(207.90.205.59:3011)'),
(94, '20-11-2023 14:48:41', 1, '20.206.248.189', 'Servidor iniciado com sucesso. (Multi Theft Auto 207.90.205.59:3011)'),
(95, '20-11-2023 14:49:06', 1, '20.206.248.189', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.59:3010)'),
(96, '20-11-2023 20:46:58', 1, '20.64.96.247', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(97, '20-11-2023 21:14:11', 1, '209.14.69.179', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(98, '20-11-2023 22:48:52', 1, '201.1.57.89', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(99, '20-11-2023 23:07:12', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(100, '20-11-2023 23:07:37', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 1028.'),
(101, '20-11-2023 23:07:37', 1, '20.206.248.189', 'Excluido com sucesso /home/ogp_agent/OGP_User_Files/1028'),
(102, '20-11-2023 23:07:50', 1, '20.206.248.189', 'Usuário excluído com sucesso <b>cliente-01</b>.'),
(103, '20-11-2023 23:40:09', 0, '20.206.248.189', 'Usuário e senha não conferem. ( 1 ) [ Usuário: , Senha: ******** ]'),
(104, '20-11-2023 23:42:45', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(105, '20-11-2023 23:52:13', 1, '20.206.248.189', 'Usuário adicionado com sucesso <em>cliente</em>.'),
(106, '20-11-2023 23:52:48', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(107, '20-11-2023 23:53:06', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 1029.'),
(108, '20-11-2023 23:53:22', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:1029]'),
(109, '20-11-2023 23:54:09', 1, '20.206.248.189', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.59:3010)'),
(110, '21-11-2023 10:10:07', 1, '209.14.71.174', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(111, '21-11-2023 17:31:24', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(112, '21-11-2023 18:26:00', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(113, '21-11-2023 18:26:09', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3011 para \"home\" com identificação 1030.'),
(114, '21-11-2023 18:26:17', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:1030]'),
(115, '21-11-2023 18:26:47', 1, '20.206.248.189', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.59:3011)'),
(116, '21-11-2023 18:59:00', 1, '20.206.248.189', '_server_stopped_San Andreas Multiplayer_(207.90.205.59:3010)'),
(117, '21-11-2023 18:59:00', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 1029.'),
(118, '21-11-2023 18:59:01', 1, '20.206.248.189', 'Excluido com sucesso /home/ogp_agent/OGP_User_Files/1029'),
(119, '21-11-2023 18:59:09', 1, '20.206.248.189', '_server_stopped_San Andreas Multiplayer_(207.90.205.59:3011)'),
(120, '21-11-2023 18:59:09', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 1030.'),
(121, '21-11-2023 18:59:09', 1, '20.206.248.189', 'Excluido com sucesso /home/ogp_agent/OGP_User_Files/1030'),
(122, '21-11-2023 19:09:45', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (Multi Theft Auto)'),
(123, '21-11-2023 19:19:51', 1, '20.206.248.189', 'Mudado com sucesso o jogo de servidor. HOME ID:21020 - Nome do servidor do jogo:	  San Andreas Multiplayer'),
(124, '21-11-2023 19:19:54', 1, '20.206.248.189', 'Mudado com sucesso o jogo de servidor. HOME ID:21020 - Alterar Tipo de Jogo:old home_cfg_id:145, new home_cfg_id:185'),
(125, '21-11-2023 19:19:59', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21020.'),
(126, '21-11-2023 19:20:09', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:21020]'),
(127, '21-11-2023 19:33:31', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 21020.'),
(128, '21-11-2023 19:33:31', 1, '20.206.248.189', 'Excluido com sucesso /home/ogp_agent/OGP_User_Files/21020'),
(129, '21-11-2023 19:33:49', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(130, '21-11-2023 19:33:56', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:21021]'),
(131, '21-11-2023 19:33:59', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21021.'),
(132, '21-11-2023 19:34:40', 1, '20.206.248.189', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.59:3010)'),
(133, '21-11-2023 19:35:02', 1, '20.206.248.189', 'Alterações salvas com sucesso. ( San Andreas Multiplayer - /revendas/21021/server.cfg )'),
(134, '21-11-2023 19:35:14', 1, '20.206.248.189', 'O servidor \'San Andreas Multiplayer\' foi reiniciado.(207.90.205.59:3010)'),
(135, '21-11-2023 19:35:24', 1, '20.206.248.189', 'O servidor \'San Andreas Multiplayer\' foi encerrado.(207.90.205.59:3010)'),
(136, '21-11-2023 19:36:16', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 21021.'),
(137, '21-11-2023 19:36:17', 1, '20.206.248.189', 'Excluido com sucesso /revendas/21021'),
(138, '21-11-2023 21:17:29', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(139, '21-11-2023 21:36:45', 1, '20.206.248.189', 'O perfil do usuário <b>revenda</b> foi modificado com sucesso.'),
(140, '21-11-2023 21:37:42', 1, '20.206.248.189', 'O perfil do usuário <b>revenda</b> foi modificado com sucesso.'),
(141, '21-11-2023 21:52:33', 0, '20.206.248.189', 'Usuário e senha não conferem. ( 1 ) [ Usuário: meupiloto2098@hotmail.com, Senha: ******** ]'),
(142, '21-11-2023 21:52:43', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(143, '21-11-2023 21:53:13', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(144, '21-11-2023 22:06:36', 0, '20.206.248.189', 'Usuário e senha não conferem. ( 1 ) [ Usuário: revendedor, Senha: ******** ]'),
(145, '21-11-2023 22:06:45', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(146, '21-11-2023 22:12:15', 1, '20.206.248.189', 'Usuário excluído com sucesso <b>cliente</b>.'),
(147, '21-11-2023 22:12:34', 1, '20.206.248.189', 'Usuário adicionado com sucesso <em>teste</em>.'),
(148, '21-11-2023 22:12:52', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(149, '21-11-2023 22:13:07', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21022.'),
(150, '21-11-2023 22:13:19', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:21022]'),
(151, '21-11-2023 22:43:07', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 21022.'),
(152, '21-11-2023 22:43:07', 1, '20.206.248.189', 'Excluido com sucesso /revendas/1/21022'),
(153, '21-11-2023 23:37:36', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(154, '22-11-2023 00:10:02', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(155, '22-11-2023 00:28:51', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(156, '22-11-2023 01:02:50', 1, '187.119.238.22', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(157, '22-11-2023 12:10:33', 1, '20.64.96.247', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(158, '22-11-2023 12:18:23', 1, '20.64.96.247', 'Usuário e senha não conferem. ( 1 ) [ Usuário: revenda, Senha: ******** ]'),
(159, '22-11-2023 12:18:45', 1, '20.64.96.247', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(160, '22-11-2023 14:00:42', 1, '20.64.96.247', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(161, '22-11-2023 14:01:13', 1, '20.64.96.247', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(162, '22-11-2023 14:01:21', 1, '20.64.96.247', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21023.'),
(163, '22-11-2023 14:01:41', 1, '20.64.96.247', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:21023]'),
(164, '22-11-2023 14:04:39', 1, '20.64.96.247', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(165, '22-11-2023 14:04:46', 1, '20.64.96.247', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21023.'),
(166, '22-11-2023 14:09:02', 1, '20.64.96.247', 'Atribuído com sucesso 207.90.205.59:3011 para \"home\" com identificação 21023.'),
(167, '22-11-2023 14:09:06', 1, '20.64.96.247', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(168, '22-11-2023 17:20:48', 1, '187.119.239.176', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(169, '22-11-2023 17:21:16', 1, '187.119.239.176', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.59:3011)'),
(170, '22-11-2023 17:30:44', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(171, '22-11-2023 17:38:35', 1, '20.206.248.189', 'O perfil do usuário <b>revenda</b> foi modificado com sucesso.'),
(172, '22-11-2023 17:39:30', 1, '20.206.248.189', 'O servidor \'San Andreas Multiplayer\' foi encerrado.(207.90.205.59:3011)'),
(173, '22-11-2023 17:39:44', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(174, '22-11-2023 17:39:50', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21023.'),
(175, '22-11-2023 17:40:58', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 21023.'),
(176, '22-11-2023 17:40:59', 1, '20.206.248.189', 'Excluido com sucesso /revendas/1/21023'),
(177, '22-11-2023 17:41:23', 1, '187.19.194.94', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(178, '22-11-2023 17:43:06', 1, '20.206.248.189', 'O perfil do usuário <b>revenda</b> foi modificado com sucesso.'),
(179, '22-11-2023 17:44:29', 1, '187.19.194.94', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(180, '22-11-2023 17:44:38', 1, '187.19.194.94', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21024.'),
(181, '22-11-2023 17:45:20', 1, '187.19.194.94', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.59:3010)'),
(182, '22-11-2023 17:46:31', 1, '187.19.194.94', '_server_stopped_San Andreas Multiplayer_(207.90.205.59:3010)'),
(183, '22-11-2023 17:46:31', 1, '187.19.194.94', 'Servidor de jogo excluído com sucesso com o ID 21024.'),
(184, '22-11-2023 17:46:32', 1, '187.19.194.94', 'Excluido com sucesso /home/ogp_agent/OGP_User_Files/21024'),
(185, '22-11-2023 17:46:50', 1, '187.19.194.94', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(186, '22-11-2023 17:47:55', 1, '187.19.194.94', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21025.'),
(187, '22-11-2023 17:48:14', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:21025]'),
(188, '22-11-2023 17:48:31', 1, '187.19.194.94', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.59:3010)'),
(189, '22-11-2023 17:50:46', 1, '187.19.194.94', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(190, '22-11-2023 17:51:04', 1, '187.19.194.94', 'Servidor de jogo excluído com sucesso com o ID 21026.'),
(191, '22-11-2023 17:55:35', 0, '187.19.194.94', 'Usuário e senha não conferem. ( 1 ) [ Usuário: revenda, Senha: ******** ]'),
(192, '22-11-2023 17:55:43', 1, '187.19.194.94', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(193, '22-11-2023 18:03:58', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(194, '22-11-2023 18:05:54', 1, '20.206.248.189', 'O servidor \'San Andreas Multiplayer\' foi encerrado.(207.90.205.59:3010)'),
(195, '22-11-2023 18:49:15', 1, '20.206.248.189', 'Usuário e senha não conferem. ( 1 ) [ Usuário: revenda, Senha: ******** ]'),
(196, '22-11-2023 18:49:21', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(197, '22-11-2023 18:50:00', 1, '20.206.248.189', 'O perfil do usuário <b>revenda</b> foi modificado com sucesso.'),
(198, '22-11-2023 19:48:29', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(199, '22-11-2023 19:48:49', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 21025.'),
(200, '22-11-2023 19:48:50', 1, '20.206.248.189', 'Excluido com sucesso /home/ogp_agent/OGP_User_Files/21025'),
(201, '22-11-2023 19:49:35', 1, '20.206.248.189', 'Usuário adicionado com sucesso <em>teste</em>.'),
(202, '22-11-2023 19:49:54', 1, '20.206.248.189', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(203, '22-11-2023 19:50:01', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21027.'),
(204, '22-11-2023 19:50:08', 1, '20.206.248.189', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:21027]'),
(205, '22-11-2023 19:50:25', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(206, '22-11-2023 19:50:40', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21027.'),
(207, '22-11-2023 19:51:25', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(208, '22-11-2023 19:51:49', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:7777 para \"home\" com identificação 21027.'),
(209, '22-11-2023 19:52:14', 1, '20.206.248.189', 'IP atribuído com sucesso: par de portas para Home. [unassigned]'),
(210, '22-11-2023 19:53:03', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21027.'),
(211, '22-11-2023 19:53:27', 10, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(212, '22-11-2023 19:54:02', 10, '20.206.248.189', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.59:3010)'),
(213, '22-11-2023 19:54:17', 10, '20.206.248.189', 'O servidor \'San Andreas Multiplayer\' foi encerrado.(207.90.205.59:3010)'),
(214, '22-11-2023 19:54:57', 10, '20.206.248.189', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.59:3010)'),
(215, '22-11-2023 19:55:18', 10, '20.206.248.189', 'O servidor \'San Andreas Multiplayer\' foi encerrado.(207.90.205.59:3010)'),
(216, '22-11-2023 19:56:53', 0, '20.206.248.189', 'Usuário e senha não conferem. ( 1 ) [ Usuário: teste, Senha: ******** ]'),
(217, '22-11-2023 19:58:05', 0, '20.206.248.189', 'Usuário e senha não conferem. ( 2 ) [ Usuário: teste, Senha: ******** ]'),
(218, '22-11-2023 19:59:10', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(219, '22-11-2023 21:11:33', 1, '20.206.248.189', 'Servidor de jogo excluído com sucesso com o ID 21027.'),
(220, '22-11-2023 21:11:33', 1, '20.206.248.189', 'Excluido com sucesso /home/ogp_agent/OGP_User_Files/21027'),
(221, '22-11-2023 21:11:41', 1, '20.206.248.189', 'Usuário excluído com sucesso <b>teste</b>.'),
(222, '22-11-2023 21:15:49', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(223, '22-11-2023 21:20:25', 1, '131.108.65.107', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(224, '22-11-2023 21:21:04', 1, '131.108.65.107', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(225, '22-11-2023 21:21:34', 1, '131.108.65.107', 'Usuário adicionado com sucesso <em>kaique-wlk</em>.'),
(226, '22-11-2023 21:22:34', 1, '131.108.65.107', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:21028]'),
(227, '22-11-2023 21:22:39', 1, '131.108.65.107', 'Mudado com sucesso o jogo de servidor. HOME ID:21028 - Alterar o proprietário principal:11'),
(228, '22-11-2023 21:23:51', 1, '131.108.65.107', 'O perfil do usuário <b>kaique-wlk</b> foi modificado com sucesso.'),
(229, '22-11-2023 21:36:15', 1, '20.206.248.189', 'Atribuído com sucesso 207.90.205.59:3010 para \"home\" com identificação 21028.'),
(230, '22-11-2023 22:10:14', 0, '179.66.71.16', 'Usuário e senha não conferem. ( 1 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(231, '22-11-2023 22:10:53', 0, '179.66.71.16', 'Usuário e senha não conferem. ( 2 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(232, '22-11-2023 22:11:15', 0, '179.66.71.16', 'Usuário e senha não conferem. ( 3 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(233, '22-11-2023 22:30:18', 1, '20.206.248.189', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(234, '22-11-2023 22:40:11', 0, '179.66.71.16', 'Usuário e senha não conferem. ( 4 ) [ Usuário: lucas-parceria, Senha: ******** ]'),
(235, '22-11-2023 23:03:14', 0, '179.66.71.16', 'Usuário e senha não conferem. ( 5 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(236, '22-11-2023 23:03:28', 0, '179.66.71.16', 'Usuário e senha não conferem. ( Banned until Wed, 22 Nov 2023 23:08:28 +0000 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(237, '22-11-2023 23:10:21', 0, '179.66.71.16', 'Usuário e senha não conferem. ( 1 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(238, '22-11-2023 23:11:33', 0, '179.66.71.16', 'Usuário e senha não conferem. ( 1 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(239, '22-11-2023 23:12:18', 0, '179.66.71.16', 'Usuário e senha não conferem. ( 2 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(240, '22-11-2023 23:13:17', 0, '179.66.71.16', 'Usuário e senha não conferem. ( 3 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(241, '23-11-2023 00:25:45', 0, '131.108.65.107', 'Usuário e senha não conferem. ( 1 ) [ Usuário: root, Senha: ******** ]'),
(242, '23-11-2023 00:51:26', 0, '179.66.71.16', 'Usuário e senha não conferem. ( 4 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(243, '23-11-2023 05:00:01', 0, '179.66.71.16', 'Usuário e senha não conferem. ( 5 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(244, '23-11-2023 05:00:24', 0, '179.66.71.16', 'Usuário e senha não conferem. ( Banned until Thu, 23 Nov 2023 05:05:24 +0000 ) [ Usuário: lucas-wlk, Senha: ******** ]'),
(245, '24-11-2023 09:50:57', 1, '177.25.201.139', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(246, '24-11-2023 22:53:28', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(247, '25-11-2023 12:40:08', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(248, '25-11-2023 13:50:01', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(249, '25-11-2023 13:51:12', 1, '191.235.125.64', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(250, '25-11-2023 13:51:16', 1, '191.235.125.64', 'Atribuído com sucesso 207.90.205.74:7100 para \"home\" com identificação 24010.'),
(251, '25-11-2023 13:51:21', 1, '191.235.125.64', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:24010]'),
(252, '25-11-2023 13:52:30', 1, '191.235.125.64', 'Servidor de jogo excluído com sucesso com o ID 24010.'),
(253, '25-11-2023 13:52:30', 1, '191.235.125.64', 'Excluido com sucesso /revendas/1/24010'),
(254, '25-11-2023 13:52:44', 1, '191.235.125.64', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(255, '25-11-2023 13:52:46', 1, '191.235.125.64', 'Atribuído com sucesso 207.90.205.74:7100 para \"home\" com identificação 24011.'),
(256, '25-11-2023 13:52:49', 1, '191.235.125.64', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:24011]'),
(257, '25-11-2023 13:53:11', 1, '191.235.125.64', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.74:7100)'),
(258, '25-11-2023 13:53:23', 1, '191.235.125.64', 'O servidor \'San Andreas Multiplayer\' foi encerrado.(207.90.205.74:7100)'),
(259, '25-11-2023 14:06:40', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(260, '25-11-2023 14:07:05', 1, '191.235.125.64', 'Servidor de jogo excluído com sucesso com o ID 24011.'),
(261, '25-11-2023 14:07:05', 1, '191.235.125.64', 'Excluido com sucesso /revendas/4/24011'),
(262, '25-11-2023 22:38:34', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(263, '25-11-2023 22:38:47', 1, '191.235.125.64', '_server_stopped_San Andreas Multiplayer_(207.90.205.74:7100)'),
(264, '25-11-2023 22:38:47', 1, '191.235.125.64', 'Servidor de jogo excluído com sucesso com o ID 24013.'),
(265, '25-11-2023 22:38:47', 1, '191.235.125.64', 'Excluido com sucesso /revendas/4/24013'),
(266, '25-11-2023 22:38:57', 1, '191.235.125.64', 'Usuário excluído com sucesso <b>cliente-01</b>.'),
(267, '25-11-2023 22:52:02', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(268, '25-11-2023 22:53:26', 1, '191.235.125.64', 'Usuário adicionado com sucesso <em>cliente-01</em>.'),
(269, '25-11-2023 22:53:51', 1, '191.235.125.64', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(270, '25-11-2023 22:54:17', 1, '191.235.125.64', 'Atribuído com sucesso 207.90.205.74:7100 para \"home\" com identificação 24014.'),
(271, '25-11-2023 22:54:30', 1, '191.235.125.64', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:24014]'),
(272, '25-11-2023 22:55:13', 1, '191.235.125.64', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.74:7100)'),
(273, '26-11-2023 16:00:57', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(274, '26-11-2023 16:04:18', 1, '191.235.125.64', 'O perfil do usuário <b>revenda</b> foi modificado com sucesso.'),
(275, '26-11-2023 16:12:02', 1, '191.235.125.64', 'Envio completo.: /revendas/4/24014/revenda.sql'),
(276, '26-11-2023 16:30:41', 1, '191.235.125.64', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(277, '26-11-2023 16:31:18', 1, '191.235.125.64', '_server_stopped_San Andreas Multiplayer_(207.90.205.74:7100)'),
(278, '26-11-2023 16:31:18', 1, '191.235.125.64', 'Servidor de jogo excluído com sucesso com o ID 24014.'),
(279, '26-11-2023 16:31:18', 1, '191.235.125.64', 'Excluido com sucesso /revendas/4/24014'),
(280, '26-11-2023 16:31:24', 1, '191.235.125.64', 'Servidor de jogo excluído com sucesso com o ID 24015.'),
(281, '26-11-2023 16:31:24', 1, '191.235.125.64', 'Excluido com sucesso /revendas/4/24015'),
(282, '26-11-2023 16:41:26', 1, '191.235.125.64', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(283, '26-11-2023 16:42:05', 1, '191.235.125.64', 'Atribuído com sucesso 207.90.205.74:7100 para \"home\" com identificação 24016.'),
(284, '26-11-2023 16:42:07', 1, '191.235.125.64', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:24016]'),
(285, '26-11-2023 16:42:41', 1, '191.235.125.64', 'Alterações salvas com sucesso. ( San Andreas Multiplayer - /revendas/4/24016/server.cfg )'),
(286, '26-11-2023 16:42:51', 1, '191.235.125.64', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.74:7100)'),
(287, '26-11-2023 16:48:06', 1, '191.235.125.64', '_server_stopped_San Andreas Multiplayer_(207.90.205.74:7100)'),
(288, '26-11-2023 16:48:06', 1, '191.235.125.64', 'Servidor de jogo excluído com sucesso com o ID 24016.'),
(289, '26-11-2023 16:48:06', 1, '191.235.125.64', 'Excluido com sucesso /revendas/4/24016'),
(290, '26-11-2023 16:48:22', 1, '191.235.125.64', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(291, '26-11-2023 16:48:41', 1, '191.235.125.64', 'Servidor de jogo excluído com sucesso com o ID 24017.'),
(292, '26-11-2023 16:48:41', 1, '191.235.125.64', 'Excluido com sucesso /revendas/4/24017'),
(293, '26-11-2023 16:49:09', 1, '191.235.125.64', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(294, '26-11-2023 16:49:24', 1, '191.235.125.64', 'O perfil do usuário <b>revenda</b> foi modificado com sucesso.'),
(295, '26-11-2023 20:21:28', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(296, '26-11-2023 20:21:43', 1, '191.235.125.64', 'Servidor de jogo excluído com sucesso com o ID 10024010.'),
(297, '26-11-2023 20:21:44', 1, '191.235.125.64', 'Excluido com sucesso /revendas/4/10024010'),
(298, '26-11-2023 20:21:50', 1, '191.235.125.64', 'Usuário excluído com sucesso <b>cliente-01</b>.'),
(299, '26-11-2023 20:23:47', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(300, '26-11-2023 20:25:41', 1, '191.235.125.64', 'Usuário adicionado com sucesso <em>cliente-01</em>.'),
(301, '26-11-2023 20:26:24', 1, '191.235.125.64', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(302, '26-11-2023 20:26:46', 1, '191.235.125.64', 'Atribuído com sucesso 207.90.205.74:7100 para \"home\" com identificação 10024011.'),
(303, '26-11-2023 20:27:04', 1, '191.235.125.64', 'Mudado com sucesso o jogo de servidor. HOME ID:10024011 - Senha de FTP:ut9j8gjg5454'),
(304, '26-11-2023 20:27:23', 1, '191.235.125.64', 'Informações de mod modificadas com êxito. [MOD CFG ID:221 HOME ID:10024011]'),
(305, '26-11-2023 20:27:53', 16, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(306, '26-11-2023 20:28:54', 16, '191.235.125.64', 'Alterações salvas com sucesso. ( San Andreas Multiplayer - /revendas/4/10024011/server.cfg )'),
(307, '26-11-2023 20:29:05', 16, '191.235.125.64', 'Servidor iniciado com sucesso. (San Andreas Multiplayer 207.90.205.74:7100)'),
(308, '26-11-2023 20:33:15', 16, '191.235.125.64', 'O servidor \'San Andreas Multiplayer\' foi encerrado.(207.90.205.74:7100)'),
(309, '26-11-2023 20:33:29', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(310, '26-11-2023 20:33:40', 1, '191.235.125.64', 'Servidor de jogo excluído com sucesso com o ID 10024011.'),
(311, '26-11-2023 20:33:40', 1, '191.235.125.64', 'Excluido com sucesso /revendas/4/10024011'),
(312, '26-11-2023 22:36:41', 0, '191.235.125.64', 'Usuário e senha não conferem. ( 1 ) [ Usuário: cliente-01, Senha: ******** ]'),
(313, '26-11-2023 22:36:48', 16, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(314, '26-11-2023 22:40:53', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(315, '26-11-2023 22:45:40', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(316, '26-11-2023 22:51:11', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(317, '26-11-2023 22:53:50', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(318, '26-11-2023 23:10:54', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(319, '26-11-2023 23:40:27', 0, '191.235.125.64', 'Usuário e senha não conferem. ( 1 ) [ Usuário: revenda, Senha: ******** ]'),
(320, '26-11-2023 23:40:40', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(321, '26-11-2023 23:43:33', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(322, '26-11-2023 23:54:13', 1, '179.246.213.154', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(323, '26-11-2023 23:55:42', 1, '199.71.214.225', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(324, '27-11-2023 08:44:32', 1, '177.189.35.38', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(325, '27-11-2023 11:52:52', 1, '177.25.196.108', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(326, '27-11-2023 13:52:45', 1, '177.25.206.159', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(327, '27-11-2023 17:59:00', 1, '191.235.125.64', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(328, '27-11-2023 18:34:09', 1, '191.235.125.64', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(329, '27-11-2023 18:34:39', 1, '191.235.125.64', 'Usuário excluído com sucesso <b>cliente-01</b>.'),
(330, '27-11-2023 19:51:17', 1, '177.25.204.1', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(331, '27-11-2023 19:51:32', 1, '177.25.204.1', 'Servidor de jogo excluído com sucesso com o ID 10024012.'),
(332, '27-11-2023 19:51:32', 1, '177.25.204.1', 'Excluido com sucesso /revendas/4/10024012'),
(333, '27-11-2023 19:54:43', 1, '177.25.204.1', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(334, '27-11-2023 19:57:26', 1, '177.25.204.1', 'Usuário adicionado com sucesso <em>cliente-01</em>.'),
(335, '27-11-2023 22:54:09', 18, '191.234.195.158', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(336, '27-11-2023 23:00:55', 18, '191.234.195.158', 'Atribuído com sucesso 207.90.205.74:23045 para \"home\" com identificação 10024014.'),
(337, '27-11-2023 23:01:01', 18, '191.234.195.158', 'Informações de mod modificadas com êxito. [MOD CFG ID:182 HOME ID:10024014]'),
(338, '27-11-2023 23:04:25', 18, '191.234.195.158', 'Servidor iniciado com sucesso. (Multi Theft Auto 207.90.205.74:23045)'),
(339, '27-11-2023 23:05:33', 18, '191.234.195.158', 'O servidor \'Multi Theft Auto\' foi encerrado.(207.90.205.74:23045)'),
(340, '27-11-2023 23:05:53', 18, '191.234.195.158', 'Servidor iniciado com sucesso. (Multi Theft Auto 207.90.205.74:23045)'),
(341, '27-11-2023 23:06:41', 18, '191.234.195.158', 'O servidor \'Multi Theft Auto\' foi encerrado.(207.90.205.74:23045)'),
(342, '27-11-2023 23:12:11', 18, '191.234.195.158', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(343, '27-11-2023 23:12:37', 18, '191.234.195.158', 'Servidor de jogo excluído com sucesso com o ID 10024015.'),
(344, '27-11-2023 23:12:37', 18, '191.234.195.158', 'Excluido com sucesso /revendas/4/10024015'),
(345, '27-11-2023 23:39:36', 18, '191.234.195.158', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(346, '27-11-2023 23:50:57', 18, '191.234.195.158', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (Multi Theft Auto)'),
(347, '27-11-2023 23:51:13', 18, '191.234.195.158', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(348, '27-11-2023 23:51:27', 18, '191.234.195.158', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(349, '27-11-2023 23:54:24', 18, '191.234.195.158', 'Servidor de jogo excluído com sucesso com o ID 10024017.'),
(350, '27-11-2023 23:54:24', 18, '191.234.195.158', 'Excluido com sucesso /revendas/4/10024017'),
(351, '27-11-2023 23:54:34', 18, '191.234.195.158', 'Servidor de jogo excluído com sucesso com o ID 10024016.'),
(352, '27-11-2023 23:54:34', 18, '191.234.195.158', 'Excluido com sucesso /revendas/4/10024016'),
(353, '27-11-2023 23:55:19', 18, '191.234.195.158', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(354, '27-11-2023 23:55:39', 18, '191.234.195.158', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(355, '27-11-2023 23:57:41', 18, '191.234.195.158', 'Servidor de jogo excluído com sucesso com o ID 10024018.'),
(356, '27-11-2023 23:57:41', 18, '191.234.195.158', 'Excluido com sucesso /revendas/4/10024018'),
(357, '27-11-2023 23:59:10', 18, '191.234.195.158', 'O servidor de jogos foi adicionado com sucesso. Redirecionando para a página de edição doméstica. (San Andreas Multiplayer)'),
(358, '27-11-2023 23:59:24', 18, '191.234.195.158', 'Servidor de jogo excluído com sucesso com o ID 10024021.'),
(359, '27-11-2023 23:59:25', 18, '191.234.195.158', 'Excluido com sucesso /revendas/4/10024021'),
(360, '28-11-2023 00:07:10', 18, '191.234.195.158', 'Servidor de jogo excluído com sucesso com o ID 10024019.'),
(361, '28-11-2023 00:07:10', 18, '191.234.195.158', 'Excluido com sucesso /revendas/4/10024019'),
(362, '28-11-2023 00:07:17', 18, '191.234.195.158', 'Servidor de jogo excluído com sucesso com o ID 10024020.'),
(363, '28-11-2023 00:07:17', 18, '191.234.195.158', 'Excluido com sucesso /revendas/4/10024020'),
(364, '28-11-2023 10:35:13', 1, '179.246.209.90', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(365, '28-11-2023 19:35:33', 18, '191.234.195.158', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(366, '28-11-2023 19:38:53', 18, '191.234.195.158', 'Servidor iniciado com sucesso. (Multi Theft Auto 207.90.205.74:23045)'),
(367, '28-11-2023 19:41:15', 0, '131.108.65.106', 'Usuário e senha não conferem. ( 1 ) [ Usuário: root, Senha: ******** ]'),
(368, '28-11-2023 19:41:53', 0, '131.108.65.106', 'Usuário e senha não conferem. ( 2 ) [ Usuário: revenda, Senha: ******** ]'),
(369, '28-11-2023 19:42:16', 0, '131.108.65.106', 'Usuário e senha não conferem. ( 3 ) [ Usuário: revenda, Senha: ******** ]'),
(370, '28-11-2023 19:42:24', 0, '131.108.65.106', 'Usuário e senha não conferem. ( 4 ) [ Usuário: revenda, Senha: ******** ]'),
(371, '28-11-2023 19:42:49', 0, '131.108.65.106', 'Usuário e senha não conferem. ( 5 ) [ Usuário: revenda, Senha: ******** ]'),
(372, '28-11-2023 19:42:58', 0, '131.108.65.106', 'Usuário e senha não conferem. ( Banned until Tue, 28 Nov 2023 19:47:58 +0000 ) [ Usuário: tes, Senha: ******** ]'),
(373, '28-11-2023 19:43:07', 18, '191.234.195.158', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(374, '28-11-2023 19:44:09', 0, '131.108.65.106', 'Usuário e senha não conferem. ( 1 ) [ Usuário: tes, Senha: ******** ]'),
(375, '28-11-2023 19:44:20', 18, '131.108.65.106', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(376, '28-11-2023 23:00:15', 18, '191.234.195.158', '<center>Login efetuado com sucesso, Redirecionando aguarde...</center>...'),
(377, '28-11-2023 23:00:56', 18, '191.234.195.158', '_server_stopped_Multi Theft Auto_(207.90.205.74:23045)'),
(378, '28-11-2023 23:00:56', 18, '191.234.195.158', 'Servidor de jogo excluído com sucesso com o ID 10024014.'),
(379, '28-11-2023 23:00:57', 18, '191.234.195.158', 'Excluido com sucesso /revendas/4/10024014'),
(380, '28-11-2023 23:01:08', 18, '191.234.195.158', 'Usuário excluído com sucesso <b>revenda</b>.');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_master_server_homes`
--

CREATE TABLE `ogp_master_server_homes` (
  `home_id` int(11) NOT NULL,
  `home_cfg_id` int(11) NOT NULL,
  `remote_server_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_modules`
--

CREATE TABLE `ogp_modules` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '0',
  `db_version` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_modules`
--

INSERT INTO `ogp_modules` (`id`, `title`, `folder`, `version`, `db_version`) VALUES
(1, 'Module manager', 'modulemanager', '1.1', 2),
(4, 'Administration', 'administration', '1.1', 1),
(5, 'Config games', 'config_games', '1.0', 0),
(6, 'Dashboard', 'dashboard', '1.0', 0),
(8, 'ftp', 'ftp', '1.41', 1),
(9, 'Game manager', 'gamemanager', '1.33', 10),
(10, 'Lite File Manager', 'litefm', '1.11', 1),
(14, 'Server manager', 'server', '1.6.1', 7),
(15, 'Settings', 'settings', '1.1', 1),
(18, 'User admin', 'user_admin', '1.1', 7),
(19, 'User games', 'user_games', '1.3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ogp_module_access_rights`
--

CREATE TABLE `ogp_module_access_rights` (
  `module_id` int(11) NOT NULL COMMENT 'This references to modules.id',
  `flag` char(1) NOT NULL,
  `description` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_module_access_rights`
--

INSERT INTO `ogp_module_access_rights` (`module_id`, `flag`, `description`) VALUES
(8, 't', 'allow_ftp'),
(9, 'u', 'allow_updates'),
(9, 'p', 'allow_parameter_usage'),
(9, 'e', 'allow_extra_params'),
(9, 'c', 'allow_custom_fields'),
(10, 'f', 'allow_file_management');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_module_menus`
--

CREATE TABLE `ogp_module_menus` (
  `module_id` int(11) NOT NULL COMMENT 'This references to modules.id',
  `subpage` varchar(64) NOT NULL DEFAULT '',
  `group` varchar(32) NOT NULL,
  `menu_name` varchar(128) NOT NULL,
  `pos` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_module_menus`
--

INSERT INTO `ogp_module_menus` (`module_id`, `subpage`, `group`, `menu_name`, `pos`) VALUES
(6, 'dashboard', 'user', 'Dashboard', 0),
(9, 'game_monitor', 'user', 'Game Monitor', 2),
(14, '', 'admin', 'Servers', 0),
(15, '', 'admin', 'Panel Settings', 0),
(18, '', 'admin', 'User Admin', 0),
(19, '', 'admin', 'Game Servers', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ogp_mysql_databases`
--

CREATE TABLE `ogp_mysql_databases` (
  `db_id` int(11) NOT NULL,
  `mysql_server_id` int(11) NOT NULL,
  `home_id` int(11) NOT NULL,
  `db_user` varchar(50) NOT NULL,
  `db_passwd` varchar(50) NOT NULL,
  `db_name` varchar(50) NOT NULL,
  `enabled` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_mysql_servers`
--

CREATE TABLE `ogp_mysql_servers` (
  `mysql_server_id` int(11) NOT NULL,
  `remote_server_id` int(11) NOT NULL,
  `mysql_name` varchar(100) NOT NULL,
  `mysql_ip` varchar(255) NOT NULL,
  `mysql_port` int(11) NOT NULL,
  `mysql_root_passwd` varchar(32) DEFAULT NULL,
  `privilegies_str` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_rcon_presets`
--

CREATE TABLE `ogp_rcon_presets` (
  `preset_id` int(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `command` varchar(100) NOT NULL,
  `home_cfg_id` int(50) NOT NULL,
  `mod_cfg_id` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_remote_servers`
--

CREATE TABLE `ogp_remote_servers` (
  `remote_server_id` int(11) NOT NULL,
  `remote_server_name` varchar(100) NOT NULL,
  `ogp_user` varchar(100) NOT NULL,
  `agent_ip` varchar(128) NOT NULL,
  `agent_port` int(11) NOT NULL,
  `ftp_port` int(11) NOT NULL,
  `encryption_key` varchar(50) NOT NULL,
  `timeout` int(11) NOT NULL,
  `use_nat` int(11) NOT NULL,
  `ftp_ip` varchar(128) NOT NULL,
  `firewall_settings` longtext DEFAULT NULL,
  `display_public_ip` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Remote servers and IPs';

--
-- Dumping data for table `ogp_remote_servers`
--

INSERT INTO `ogp_remote_servers` (`remote_server_id`, `remote_server_name`, `ogp_user`, `agent_ip`, `agent_port`, `ftp_port`, `encryption_key`, `timeout`, `use_nat`, `ftp_ip`, `firewall_settings`, `display_public_ip`) VALUES
(1, 'US-02-WLK', 'ogp_agent', '207.90.205.74', 12679, 21, 'Fu53x62w', 5, 0, '207.90.205.74', NULL, '207.90.205.74');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_remote_server_ips`
--

CREATE TABLE `ogp_remote_server_ips` (
  `ip_id` int(11) NOT NULL,
  `remote_server_id` int(11) NOT NULL,
  `ip` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_remote_server_ips`
--

INSERT INTO `ogp_remote_server_ips` (`ip_id`, `remote_server_id`, `ip`) VALUES
(1, 1, '207.90.205.74');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_server_homes`
--

CREATE TABLE `ogp_server_homes` (
  `home_id` int(11) NOT NULL,
  `remote_server_id` int(11) NOT NULL,
  `user_id_main` int(11) NOT NULL,
  `home_path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `home_cfg_id` int(50) NOT NULL,
  `home_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `control_password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ftp_password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_param` longtext DEFAULT NULL,
  `ftp_login` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ftp_status` int(11) NOT NULL DEFAULT 0,
  `custom_fields` longtext DEFAULT NULL,
  `server_expiration_date` varchar(21) NOT NULL DEFAULT 'X',
  `home_user_order` int(11) NOT NULL DEFAULT 99999
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_settings`
--

CREATE TABLE `ogp_settings` (
  `setting` varchar(63) NOT NULL,
  `value` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_settings`
--

INSERT INTO `ogp_settings` (`setting`, `value`) VALUES
('title', 'Open Game Panel'),
('slogan', 'De Código Aberto!'),
('ogp_version', '3aefaf0e9455f932e363957306b7b2efe466c880'),
('version_type', 'SVN'),
('theme', 'AdminLTE'),
('welcome_title', '0'),
('welcome_title_message', '<h0>Bem Vindo! <b style=\'font-size:12px; font-weight:normal;\'>Você pode alterar essa mensagem em \'<a href=\'?m=settings&p=themes\'>Definições de tema</a>\' no menu de \'<a href=\'?m=administration&p=main\'>Administração</a>\'.</b></h0>'),
('page_auto_refresh', '1'),
('logo_link', ''),
('bg_wrapper', ''),
('custom_tab', '0'),
('custom_tab_name', ''),
('custom_tab_link', ''),
('custom_tab_sub', ''),
('custom_tab_sub_name', ''),
('custom_tab_sub_link', ''),
('custom_tab_sub_name2', ''),
('custom_tab_sub_link2', ''),
('custom_tab_sub_name3', ''),
('custom_tab_sub_link3', ''),
('custom_tab_sub_name4', ''),
('custom_tab_sub_link4', ''),
('custom_tab_target_blank', ''),
('panel_name', 'Loja Astro'),
('header_code', ''),
('maintenance_mode', '0'),
('maintenance_title', ''),
('maintenance_message', ''),
('panel_language', 'Portuguese(Brazil)'),
('time_zone', 'America/Sao_Paulo'),
('smtp_server', ''),
('smtp_port', ''),
('smtp_login', ''),
('smtp_passw', '988112077'),
('smtp_ssl', '0'),
('smtp_tls', '0'),
('panel_email_address', ''),
('remote_query', '0'),
('feed_enable', '0'),
('feed_url', ''),
('query_cache_life', '30'),
('query_num_servers_stop', '15'),
('steam_user', ''),
('steam_pass', ''),
('steam_guard', ''),
('editable_email', '1'),
('old_dashboard_behavior', '0'),
('rsync_available', '1'),
('support_widget_title', ''),
('support_widget_content', ''),
('support_widget_link', ''),
('check_expiry_by', 'once_logged_in'),
('recaptcha_site_key', ''),
('recaptcha_secret_key', ''),
('recaptcha_use_login', ''),
('login_attempts_before_banned', '6'),
('custom_github_update_username', 'root'),
('custom_github_update_branch_name', ''),
('show_server_id_game_monitor', '0'),
('default_game_server_home_path_prefix', '/revendas/4/'),
('use_authorized_hosts', '0'),
('allow_setting_cpu_affinity', '0'),
('regex_invalid_file_name_chars', '/[\\\\^\\\\$\\\\*\\\\+\\\\?\\\\(\\\\)\\\\[\\\\{\\\\\\\\\\\\|\\\\]!@#%&=~`,\\\\\\\'<>\\\"}\\\\s]/i'),
('login_ban_time', '');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_status_cache`
--

CREATE TABLE `ogp_status_cache` (
  `date_timestamp` char(16) NOT NULL,
  `ip_id` char(3) NOT NULL,
  `port` char(6) NOT NULL,
  `server_status_cache` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_status_cache`
--

INSERT INTO `ogp_status_cache` (`date_timestamp`, `ip_id`, `port`, `server_status_cache`) VALUES
('1700485087', '1', '7620', '{\"b\":{\"type\":\"samp\",\"ip\":\"207.90.205.59\",\"c_port\":7620,\"q_port\":7620,\"s_port\":0,\"status\":1},\"s\":{\"game\":\"samp\",\"name\":\"San Andreas Multiplayer\",\"map\":\"-\",\"players\":0,\"playersmax\":220,\"password\":0},\"e\":{\"gamemode\":\"Grand Larceny\"},\"p\":[],\"t\":[],\"link\":\"<a href=\'samp:\\/\\/207.90.205.59:7620\'>207.90.205.59:7620<\\/a>\",\"status\":\"ONLINE WITH PASSWORD\"}'),
('1700168521', '1', '27015', '{\"b\":{\"type\":\"mta\",\"ip\":\"207.90.205.59\",\"c_port\":27015,\"q_port\":27138,\"s_port\":0,\"status\":0},\"s\":{\"game\":\"\",\"name\":\"\",\"map\":\"\",\"players\":0,\"playersmax\":0,\"password\":\"\"},\"e\":[],\"p\":[],\"t\":[],\"link\":\"<a href=\'mtasa:\\/\\/207.90.205.59:27015\'>207.90.205.59:27015<\\/a>\"}'),
('1700485085', '1', '7621', '{\"b\":{\"type\":\"samp\",\"ip\":\"207.90.205.59\",\"c_port\":7621,\"q_port\":7621,\"s_port\":0,\"status\":1},\"s\":{\"game\":\"samp\",\"name\":\"fee\",\"map\":\"-\",\"players\":0,\"playersmax\":50,\"password\":0},\"e\":{\"gamemode\":\"Grand Larceny\"},\"p\":[],\"t\":[],\"link\":\"<a href=\'samp:\\/\\/207.90.205.59:7621\'>207.90.205.59:7621<\\/a>\",\"status\":\"ONLINE WITH PASSWORD\"}'),
('1700490272', '1', '1010', '{\"b\":{\"type\":\"samp\",\"ip\":\"207.90.205.59\",\"c_port\":1010,\"q_port\":1010,\"s_port\":0,\"status\":0},\"s\":{\"game\":\"\",\"name\":\"\",\"map\":\"\",\"players\":0,\"playersmax\":0,\"password\":\"\"},\"e\":[],\"p\":[],\"t\":[],\"link\":\"<a href=\'samp:\\/\\/207.90.205.59:1010\'>207.90.205.59:1010<\\/a>\"}'),
('1700674761', '1', '3011', '{\"b\":{\"type\":\"samp\",\"ip\":\"207.90.205.59\",\"c_port\":3011,\"q_port\":3011,\"s_port\":0,\"status\":1},\"s\":{\"game\":\"samp\",\"name\":\"San Andreas Multiplayer\",\"map\":\"-\",\"players\":0,\"playersmax\":5,\"password\":0},\"e\":{\"gamemode\":\"Ventura\'s DM~MG\"},\"p\":[],\"t\":[],\"link\":\"<a href=\'samp:\\/\\/207.90.205.59:3011\'>207.90.205.59:3011<\\/a>\",\"status\":\"ONLINE WITH PASSWORD\"}');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_ts3_homes`
--

CREATE TABLE `ogp_ts3_homes` (
  `ts3_id` int(50) NOT NULL,
  `rserver_id` int(50) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `pwd` varchar(40) NOT NULL,
  `vserver_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `port` int(11) DEFAULT 10011
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_update_blacklist`
--

CREATE TABLE `ogp_update_blacklist` (
  `file_path` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_users`
--

CREATE TABLE `ogp_users` (
  `user_id` int(11) NOT NULL,
  `users_login` varchar(128) NOT NULL,
  `users_passwd` varchar(128) NOT NULL,
  `users_lang` varchar(20) NOT NULL DEFAULT 'English',
  `users_role` varchar(30) NOT NULL DEFAULT 'user',
  `users_group` varchar(100) DEFAULT NULL,
  `users_fname` varchar(128) DEFAULT NULL,
  `users_lname` varchar(128) DEFAULT NULL,
  `users_email` varchar(128) DEFAULT NULL,
  `users_phone` varchar(12) DEFAULT NULL,
  `users_city` varchar(128) DEFAULT NULL,
  `users_province` varchar(128) DEFAULT NULL,
  `users_country` varchar(128) DEFAULT NULL,
  `users_comment` text DEFAULT NULL,
  `users_theme` varchar(128) DEFAULT NULL,
  `user_expires` varchar(30) NOT NULL DEFAULT 'X',
  `users_parent` int(11) DEFAULT NULL,
  `users_page_limit` int(11) DEFAULT 25,
  `user_receives_emails` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_users`
--

INSERT INTO `ogp_users` (`user_id`, `users_login`, `users_passwd`, `users_lang`, `users_role`, `users_group`, `users_fname`, `users_lname`, `users_email`, `users_phone`, `users_city`, `users_province`, `users_country`, `users_comment`, `users_theme`, `user_expires`, `users_parent`, `users_page_limit`, `user_receives_emails`) VALUES
(18, 'teste', '81dc9bdb52d04dc20036dbd8313ed055', 'Portuguese(Brazil)', 'admin', NULL, NULL, NULL, 'teste', NULL, NULL, NULL, NULL, NULL, NULL, 'X', NULL, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ogp_user_groups`
--

CREATE TABLE `ogp_user_groups` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_user_group_homes`
--

CREATE TABLE `ogp_user_group_homes` (
  `home_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_rights` varchar(63) DEFAULT NULL,
  `user_group_expiration_date` varchar(21) NOT NULL DEFAULT 'X'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_user_group_info`
--

CREATE TABLE `ogp_user_group_info` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(128) DEFAULT NULL,
  `main_user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_user_group_remote_servers`
--

CREATE TABLE `ogp_user_group_remote_servers` (
  `remote_server_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_rights` varchar(63) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_user_homes`
--

CREATE TABLE `ogp_user_homes` (
  `home_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access_rights` varchar(63) DEFAULT NULL,
  `user_expiration_date` varchar(21) NOT NULL DEFAULT 'X'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_user_homes`
--

INSERT INTO `ogp_user_homes` (`home_id`, `user_id`, `access_rights`, `user_expiration_date`) VALUES
(4, 3, 'ufpetc', 'X'),
(5, 3, 'ufpetc', 'X'),
(21028, 11, 'tupecf', 'X');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_user_role_info`
--

CREATE TABLE `ogp_user_role_info` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_whmcs`
--

CREATE TABLE `ogp_whmcs` (
  `serviceid` int(11) NOT NULL,
  `home_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_id` int(11) NOT NULL,
  `port` int(11) NOT NULL,
  `main` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ogp_widgets`
--

CREATE TABLE `ogp_widgets` (
  `id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `sort_no` int(11) NOT NULL,
  `collapsed` tinyint(4) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_widgets`
--

INSERT INTO `ogp_widgets` (`id`, `column_id`, `sort_no`, `collapsed`, `title`) VALUES
(1, 1, 1, 0, 'Game Monitor'),
(2, 2, 0, 0, 'Online Server'),
(3, 2, 1, 0, 'Currently Online'),
(4, 3, 0, 0, 'FTP'),
(5, 3, 1, 0, 'Support');

-- --------------------------------------------------------

--
-- Table structure for table `ogp_widgets_users`
--

CREATE TABLE `ogp_widgets_users` (
  `user_id` int(11) NOT NULL,
  `widget_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `sort_no` int(11) NOT NULL,
  `collapsed` tinyint(4) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogp_widgets_users`
--

INSERT INTO `ogp_widgets_users` (`user_id`, `widget_id`, `column_id`, `sort_no`, `collapsed`, `title`) VALUES
(3, 3, 2, 1, 0, 'Currently Online'),
(3, 2, 2, 0, 0, 'Online Server'),
(3, 1, 1, 1, 0, 'Game Monitor'),
(3, 4, 3, 0, 0, 'FTP'),
(3, 5, 3, 1, 0, 'Support'),
(11, 5, 3, 1, 0, 'Support'),
(11, 4, 3, 0, 0, 'FTP'),
(11, 3, 2, 1, 0, 'Currently Online'),
(11, 2, 2, 0, 0, 'Online Server'),
(11, 1, 1, 1, 0, 'Game Monitor'),
(18, 5, 3, 1, 0, 'Support'),
(18, 4, 3, 0, 0, 'FTP'),
(18, 3, 2, 1, 0, 'Currently Online'),
(18, 2, 2, 0, 0, 'Online Server'),
(18, 1, 1, 1, 0, 'Game Monitor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ogp_addons`
--
ALTER TABLE `ogp_addons`
  ADD PRIMARY KEY (`addon_id`);

--
-- Indexes for table `ogp_adminExternalLinks`
--
ALTER TABLE `ogp_adminExternalLinks`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `ogp_adminlte_settings`
--
ALTER TABLE `ogp_adminlte_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UniqueSetting` (`user`,`name`);

--
-- Indexes for table `ogp_api_tokens`
--
ALTER TABLE `ogp_api_tokens`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `ogp_arrange_ports`
--
ALTER TABLE `ogp_arrange_ports`
  ADD PRIMARY KEY (`range_id`),
  ADD UNIQUE KEY `ip_id` (`ip_id`,`home_cfg_id`);

--
-- Indexes for table `ogp_ban_list`
--
ALTER TABLE `ogp_ban_list`
  ADD PRIMARY KEY (`client_ip`);

--
-- Indexes for table `ogp_config_homes`
--
ALTER TABLE `ogp_config_homes`
  ADD PRIMARY KEY (`home_cfg_id`),
  ADD UNIQUE KEY `game_key` (`game_key`);

--
-- Indexes for table `ogp_config_mods`
--
ALTER TABLE `ogp_config_mods`
  ADD PRIMARY KEY (`mod_cfg_id`),
  ADD UNIQUE KEY `home_cfg_id` (`home_cfg_id`,`mod_key`);

--
-- Indexes for table `ogp_game_mods`
--
ALTER TABLE `ogp_game_mods`
  ADD PRIMARY KEY (`mod_id`),
  ADD UNIQUE KEY `home_id` (`home_id`,`mod_cfg_id`);

--
-- Indexes for table `ogp_home_ip_ports`
--
ALTER TABLE `ogp_home_ip_ports`
  ADD PRIMARY KEY (`ip_id`,`port`);

--
-- Indexes for table `ogp_logger`
--
ALTER TABLE `ogp_logger`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `ogp_master_server_homes`
--
ALTER TABLE `ogp_master_server_homes`
  ADD PRIMARY KEY (`remote_server_id`,`home_cfg_id`);

--
-- Indexes for table `ogp_modules`
--
ALTER TABLE `ogp_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `folder` (`folder`);

--
-- Indexes for table `ogp_module_access_rights`
--
ALTER TABLE `ogp_module_access_rights`
  ADD UNIQUE KEY `flag` (`flag`);

--
-- Indexes for table `ogp_module_menus`
--
ALTER TABLE `ogp_module_menus`
  ADD PRIMARY KEY (`module_id`,`subpage`,`group`);

--
-- Indexes for table `ogp_mysql_databases`
--
ALTER TABLE `ogp_mysql_databases`
  ADD PRIMARY KEY (`db_id`),
  ADD UNIQUE KEY `mysql_server_id` (`mysql_server_id`,`db_name`),
  ADD UNIQUE KEY `mysql_server_id_2` (`mysql_server_id`,`db_user`);

--
-- Indexes for table `ogp_mysql_servers`
--
ALTER TABLE `ogp_mysql_servers`
  ADD PRIMARY KEY (`mysql_server_id`);

--
-- Indexes for table `ogp_rcon_presets`
--
ALTER TABLE `ogp_rcon_presets`
  ADD PRIMARY KEY (`preset_id`);

--
-- Indexes for table `ogp_remote_servers`
--
ALTER TABLE `ogp_remote_servers`
  ADD PRIMARY KEY (`remote_server_id`),
  ADD UNIQUE KEY `agent_ip` (`agent_ip`,`agent_port`);

--
-- Indexes for table `ogp_remote_server_ips`
--
ALTER TABLE `ogp_remote_server_ips`
  ADD PRIMARY KEY (`ip_id`);

--
-- Indexes for table `ogp_server_homes`
--
ALTER TABLE `ogp_server_homes`
  ADD PRIMARY KEY (`home_id`);

--
-- Indexes for table `ogp_settings`
--
ALTER TABLE `ogp_settings`
  ADD PRIMARY KEY (`setting`);

--
-- Indexes for table `ogp_ts3_homes`
--
ALTER TABLE `ogp_ts3_homes`
  ADD PRIMARY KEY (`ts3_id`),
  ADD UNIQUE KEY `rserver_id` (`rserver_id`,`vserver_id`,`user_id`);

--
-- Indexes for table `ogp_update_blacklist`
--
ALTER TABLE `ogp_update_blacklist`
  ADD UNIQUE KEY `file_path` (`file_path`),
  ADD UNIQUE KEY `file_path_2` (`file_path`);

--
-- Indexes for table `ogp_users`
--
ALTER TABLE `ogp_users`
  ADD PRIMARY KEY (`users_login`),
  ADD UNIQUE KEY `id` (`user_id`),
  ADD UNIQUE KEY `email` (`users_email`);

--
-- Indexes for table `ogp_user_groups`
--
ALTER TABLE `ogp_user_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `ogp_user_group_homes`
--
ALTER TABLE `ogp_user_group_homes`
  ADD PRIMARY KEY (`home_id`,`group_id`);

--
-- Indexes for table `ogp_user_group_info`
--
ALTER TABLE `ogp_user_group_info`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `ogp_user_group_remote_servers`
--
ALTER TABLE `ogp_user_group_remote_servers`
  ADD PRIMARY KEY (`remote_server_id`,`group_id`);

--
-- Indexes for table `ogp_user_homes`
--
ALTER TABLE `ogp_user_homes`
  ADD PRIMARY KEY (`user_id`,`home_id`);

--
-- Indexes for table `ogp_user_role_info`
--
ALTER TABLE `ogp_user_role_info`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `ogp_whmcs`
--
ALTER TABLE `ogp_whmcs`
  ADD UNIQUE KEY `serviceid` (`serviceid`);

--
-- Indexes for table `ogp_widgets`
--
ALTER TABLE `ogp_widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ogp_addons`
--
ALTER TABLE `ogp_addons`
  MODIFY `addon_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ogp_adminExternalLinks`
--
ALTER TABLE `ogp_adminExternalLinks`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ogp_adminlte_settings`
--
ALTER TABLE `ogp_adminlte_settings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ogp_arrange_ports`
--
ALTER TABLE `ogp_arrange_ports`
  MODIFY `range_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ogp_config_homes`
--
ALTER TABLE `ogp_config_homes`
  MODIFY `home_cfg_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `ogp_config_mods`
--
ALTER TABLE `ogp_config_mods`
  MODIFY `mod_cfg_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `ogp_game_mods`
--
ALTER TABLE `ogp_game_mods`
  MODIFY `mod_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `ogp_logger`
--
ALTER TABLE `ogp_logger`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `ogp_modules`
--
ALTER TABLE `ogp_modules`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ogp_mysql_databases`
--
ALTER TABLE `ogp_mysql_databases`
  MODIFY `db_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ogp_mysql_servers`
--
ALTER TABLE `ogp_mysql_servers`
  MODIFY `mysql_server_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ogp_rcon_presets`
--
ALTER TABLE `ogp_rcon_presets`
  MODIFY `preset_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ogp_remote_servers`
--
ALTER TABLE `ogp_remote_servers`
  MODIFY `remote_server_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ogp_remote_server_ips`
--
ALTER TABLE `ogp_remote_server_ips`
  MODIFY `ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ogp_server_homes`
--
ALTER TABLE `ogp_server_homes`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10024022;

--
-- AUTO_INCREMENT for table `ogp_ts3_homes`
--
ALTER TABLE `ogp_ts3_homes`
  MODIFY `ts3_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ogp_users`
--
ALTER TABLE `ogp_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ogp_user_group_info`
--
ALTER TABLE `ogp_user_group_info`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ogp_user_role_info`
--
ALTER TABLE `ogp_user_role_info`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ogp_widgets`
--
ALTER TABLE `ogp_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
