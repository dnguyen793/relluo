-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 29, 2018 at 06:09 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reliable`
--

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `goal_id` int(50) UNSIGNED NOT NULL,
  `user_id` int(50) UNSIGNED NOT NULL,
  `goal` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `day` varchar(15) NOT NULL,
  `startdate` date NOT NULL,
  `finishdate` date NOT NULL,
  `timeframe` varchar(30) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `stats` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`goal_id`, `user_id`, `goal`, `category`, `day`, `startdate`, `finishdate`, `timeframe`, `status`, `stats`) VALUES
(245, 38, 'Sleeeeeep', 'Habit', '5', '2018-04-20', '2018-04-27', '2', 'active', 2),
(246, 37, 'Grab water', 'Other', '5', '2018-04-20', '2018-04-28', '1', 'active', 0),
(250, 39, '59 minutes  of yoga', 'fitness', '5', '2018-04-20', '2018-04-22', '1', 'active', 1),
(251, 37, 'Try to come in on monday', 'Habit', '5', '2018-04-20', '2018-04-27', '1', 'active', 0),
(252, 37, '<sql Injection> :d', 'Habit', '5', '2018-04-20', '2018-04-30', '1', 'active', 0),
(253, 38, 'Finish presentation', 'Other', '3', '2018-04-20', '2018-04-21', '3', 'Complete', 1),
(254, 38, 'what branch are we on', 'Fitness', '6', '2018-04-20', '2018-04-27', '1', 'active', 0),
(255, 38, ' fdsaf{} fsafasd fdsafsd', 'diet', '5', '2018-04-20', '2018-04-30', '3', 'active', 0),
(256, 43, 'Remember to eat', 'Diet', '0', '2018-04-20', '2018-04-26', '1', 'active', 0),
(257, 43, 'Remember to eat', 'Diet', '4', '2018-04-20', '2018-04-26', '1', 'active', 0),
(258, 43, 'Remember to eat', 'Diet', '5', '2018-04-20', '2018-04-26', '1', 'active', 0),
(259, 43, 'Remember to eat', 'Diet', '2', '2018-04-20', '2018-04-26', '1', 'active', 0),
(260, 43, 'Remember to eat', 'Diet', '3', '2018-04-20', '2018-04-26', '1', 'active', 0),
(261, 43, 'Remember to eat', 'Diet', '1', '2018-04-20', '2018-04-26', '1', 'active', 0),
(262, 43, 'Remember to eat', 'Diet', '6', '2018-04-20', '2018-04-26', '1', 'active', 0),
(263, 49, 'Hi', 'Fitness', '2', '2018-04-20', '2018-04-25', '2', 'active', 0),
(264, 48, 'casual drinking for celebratory purposes', 'Fitness', '0', '2018-04-20', '2099-12-01', '1', 'active', 0),
(265, 48, 'casual drinking for celebratory purposes', 'Fitness', '4', '2018-04-20', '2099-12-01', '1', 'active', 0),
(266, 48, 'casual drinking for celebratory purposes', 'Fitness', '2', '2018-04-20', '2099-12-01', '1', 'active', 0),
(267, 48, 'casual drinking for celebratory purposes', 'Fitness', '5', '2018-04-20', '2099-12-01', '1', 'active', 0),
(268, 48, 'casual drinking for celebratory purposes', 'Fitness', '1', '2018-04-20', '2099-12-01', '1', 'active', 0),
(269, 48, 'casual drinking for celebratory purposes', 'Fitness', '3', '2018-04-20', '2099-12-01', '1', 'active', 0),
(270, 48, 'casual drinking for celebratory purposes', 'Fitness', '6', '2018-04-20', '2099-12-01', '1', 'active', 0),
(271, 37, 'Teach my dog not to bark', 'Habit', '4', '2018-04-22', '2018-04-28', '2', 'Complete', 1),
(272, 50, 'Bed @ 11:00PM', 'Habit', '0', '2018-04-22', '2018-04-22', '3', 'Complete', 1),
(273, 50, 'Bed @ 11:00PM', 'Habit', '4', '2018-04-22', '2018-04-22', '3', 'active', 0),
(274, 50, 'Bed @ 11:00PM', 'Habit', '1', '2018-04-22', '2018-04-22', '3', 'active', 0),
(275, 50, 'Bed @ 11:00PM', 'Habit', '2', '2018-04-22', '2018-04-22', '3', 'active', 0),
(276, 50, 'Bed @ 11:00PM', 'Habit', '5', '2018-04-22', '2018-04-22', '3', 'active', 0),
(277, 50, 'Bed @ 11:00PM', 'Habit', '3', '2018-04-22', '2018-04-22', '3', 'active', 0),
(278, 50, 'Bed @ 11:00PM', 'Habit', '6', '2018-04-22', '2018-04-22', '3', 'active', 0),
(279, 37, 'Get better at coding', 'Fitness', '1', '2018-04-26', '2018-04-28', '1', 'active', 0),
(280, 37, 'Get better at coding', 'Fitness', '1', '2018-04-26', '2018-04-28', '2', 'active', 0),
(281, 51, 'Sweep the floors', 'Habit', '1', '2018-04-30', '2018-05-04', '3', 'active', 0),
(282, 51, 'Sweep the floors', 'Habit', '3', '2018-04-30', '2018-05-04', '3', 'active', 0),
(283, 51, 'Sweep the floors', 'Habit', '5', '2018-04-30', '2018-05-04', '3', 'active', 0),
(284, 51, 'Stretch', 'Fitness', '1', '2018-04-30', '2018-05-04', '1', 'active', 0),
(285, 51, 'Stretch', 'Fitness', '3', '2018-04-30', '2018-05-04', '1', 'active', 0),
(286, 51, 'Stretch', 'Fitness', '5', '2018-04-30', '2018-05-04', '1', 'active', 0),
(287, 51, 'Drink a gallon of water at lunch to help avoid soda during lunch time breaks', 'diet', '1', '2018-04-30', '2018-05-05', '2', 'active', 0),
(288, 51, 'Drink a gallon', 'diet', '3', '2018-04-30', '2018-05-05', '2', 'active', 0),
(289, 51, 'Drink a gallon', 'diet', '5', '2018-04-30', '2018-05-05', '2', 'active', 0),
(291, 52, '60 Minutes Of Yoga', 'fitness', '1', '2018-04-30', '2018-05-04', '3', 'active', 0),
(292, 52, 'Hot yoga for 60 mins', 'fitness', '1', '2018-04-30', '2018-05-04', '3', 'active', 0),
(293, 52, 'Read and/ or Listen to Motivational Material', 'habit', '1', '2018-04-30', '2018-05-04', '1', 'active', 0),
(294, 52, 'Read and/ or Listen to Motivational Material', 'habit', '0', '2018-04-30', '2018-05-04', '1', 'active', 0),
(295, 52, 'Read and/ or Listen to Motivational Material', 'habit', '2', '2018-04-30', '2018-05-04', '1', 'Complete', 1),
(296, 52, 'Read and/ or Listen to Motivational Material', 'habit', '2', '2018-04-30', '2018-05-04', '1', 'active', 0),
(297, 51, '60 Minutes Of Yoga', 'fitness', '2', '2018-04-30', '2018-05-04', '1', 'active', 0),
(298, 51, '60 Minutes Of Yoga', 'fitness', '4', '2018-04-30', '2018-05-04', '1', 'active', 0),
(299, 51, '60 Minutes Of Yoga', 'fitness', '3', '2018-04-30', '2018-05-04', '1', 'active', 0),
(300, 51, 'Make to-do list', 'habit', '2', '2018-04-30', '2018-05-05', '1', 'active', 0),
(301, 51, 'Make to-do list', 'habit', '3', '2018-04-30', '2018-05-05', '1', 'active', 0),
(302, 51, 'Eat variety of foods', 'diet', '5', '2018-04-30', '2018-05-04', '1', 'active', 0),
(303, 51, 'Make to-do list', 'Fitness', '4', '2018-04-30', '2018-04-30', '1', 'active', 0),
(304, 51, 'Make to-do list', 'Fitness', '5', '2018-04-30', '2018-04-30', '1', 'active', 0),
(305, 53, 'asdfasdf', 'habit', '2', '2018-05-01', '2018-05-10', '1', 'active', 0),
(306, 53, 'Make to-do list', 'habit', '2', '2018-05-01', '2018-05-10', '1', 'active', 0),
(309, 53, 'Practice more coding ', 'Habit', '2', '2018-05-02', '2018-05-24', '1', 'active', 0),
(310, 53, 'Get everything working', 'Habit', '4', '2018-05-03', '2018-05-03', '1', 'active', 0),
(311, 53, 'yoyoyoyoyo', 'Diet', '4', '2018-05-03', '2018-05-17', '1', 'active', 0),
(312, 53, 'Make to-do list', 'habit', '1', '2018-05-07', '2018-05-26', '1', 'active', 0),
(318, 58, '60 Minutes Of Yoga', 'fitness', '1', '2018-05-07', '2018-05-17', '1', 'active', 0),
(319, 58, '60 Minutes Of Yoga', 'fitness', '2', '2018-05-07', '2018-05-17', '2', 'active', 0),
(320, 58, '60 Minutes Of Yoga', 'fitness', '3', '2018-05-07', '2018-05-17', '3', 'active', 0),
(321, 53, 'Go to bed', 'Fitness', '2', '2018-05-08', '2018-05-26', '1', 'active', 0),
(322, 53, '60 Minutes Of Yoga', 'fitness', '3', '2018-05-09', '2018-05-26', '1', 'active', 0),
(324, 38, 'Brush teeth after meals', 'Habit', '2', '2018-05-15', '2018-05-16', '1', 'Complete', 1),
(325, 38, 'Brush teeth after meals', 'Habit', '3', '2018-05-15', '2018-05-16', '1', 'Complete', 1),
(326, 38, 'Brush teeth after meals', 'Habit', '4', '2018-05-15', '2018-05-16', '1', 'active', 0),
(328, 59, '60 Minutes Of Yoga', 'fitness', '2', '2018-05-15', '2018-05-22', '1', 'active', 0),
(329, 59, '60 Minutes Of Yoga', 'fitness', '3', '2018-05-15', '2018-05-22', '1', 'active', 0),
(330, 59, '60 Minutes Of Yoga', 'fitness', '4', '2018-05-15', '2018-05-22', '1', 'active', 0),
(331, 59, '60 Minutes Of Yoga', 'fitness', '5', '2018-05-15', '2018-05-22', '1', 'active', 0),
(332, 60, 'Make to-do list', 'habit', '1', '2018-05-15', '2018-05-23', '1', 'active', 0),
(333, 60, 'Make to-do list', 'habit', '2', '2018-05-15', '2018-05-23', '1', 'active', 0),
(334, 60, 'Make to-do list', 'habit', '3', '2018-05-15', '2018-05-23', '1', 'active', 0),
(335, 60, 'Make to-do list', 'habit', '4', '2018-05-15', '2018-05-23', '1', 'active', 0),
(336, 38, 'Wake up early', 'habit', '2', '2018-05-15', '2018-05-23', '1', 'active', 0),
(337, 38, 'Wake up early', 'habit', '3', '2018-05-15', '2018-05-23', '1', 'active', 0),
(338, 38, 'Wake up early', 'habit', '4', '2018-05-15', '2018-05-23', '1', 'active', 0),
(339, 38, 'Ideal sleep schedule: 10pm-5am', 'habit', '1', '2018-05-15', '2018-05-30', '1', 'active', 0),
(340, 38, 'Ideal sleep schedule: 10pm-5am', 'habit', '2', '2018-05-15', '2018-05-30', '1', 'active', 0),
(341, 38, 'Ideal sleep schedule: 10pm-5am', 'habit', '3', '2018-05-15', '2018-05-30', '1', 'active', 0),
(342, 38, 'Ideal sleep schedule: 10pm-5am', 'habit', '4', '2018-05-15', '2018-05-30', '1', 'active', 0),
(343, 38, 'Hitt running', 'fitness', '2', '2018-05-15', '2018-05-24', '1', 'active', 0),
(344, 38, 'Hitt running', 'fitness', '3', '2018-05-15', '2018-05-24', '1', 'active', 0),
(345, 38, 'Hitt running', 'fitness', '4', '2018-05-15', '2018-05-24', '1', 'active', 0),
(346, 38, 'Exercise 20 Minutes', 'fitness', '3', '2018-05-16', '2018-05-23', '2', 'active', 0),
(347, 38, 'Exercise 20 Minutes', 'fitness', '4', '2018-05-16', '2018-05-23', '3', 'active', 0),
(348, 38, 'Exercise', 'fitness', '5', '2018-05-16', '2018-05-23', '2', 'active', 0),
(349, 38, 'Read and/ or Listen to Motivational Material', 'habit', '2', '2018-05-16', '2018-05-25', '1', 'active', 0),
(350, 38, 'Read and/ or Listen to Motivational Material', 'habit', '3', '2018-05-16', '2018-05-25', '2', 'active', 0),
(351, 38, 'Read and/ or Listen to Motivational Material', 'habit', '4', '2018-05-16', '2018-05-25', '3', 'active', 0),
(354, 38, '60 Three-point shot', 'fitness', '2', '2018-05-16', '2018-05-30', '1', 'active', 0),
(355, 38, '60 Three-point shot', 'fitness', '3', '2018-05-16', '2018-05-30', '2', 'active', 0),
(356, 38, '60 Three-point shot', 'fitness', '4', '2018-05-16', '2018-05-30', '2', 'active', 0),
(359, 58, 'finish this by tomorrow', 'Habit', '1', '2018-05-24', '2018-05-25', '1', 'active', 0),
(360, 58, 'finish this by tommorow', 'Habit', '2', '2018-05-24', '2018-05-25', '1', 'active', 0),
(361, 58, 'Eat variety of foods', 'diet', '3', '2018-05-24', '2018-05-25', '1', 'active', 0),
(362, 58, 'Eat variety of foods', 'diet', '4', '2018-05-24', '2018-05-25', '1', 'active', 0),
(363, 58, 'Eat variety of foods', 'diet', '5', '2018-05-24', '2018-05-25', '1', 'active', 0),
(364, 58, 'grrrrrrrrrrrr', 'Habit', '5', '2018-05-25', '2018-05-31', '1', 'active', 0),
(365, 58, 'Make to-do list', 'habit', '0', '2018-05-25', '2231-01-20', '1', 'active', 0),
(366, 58, 'Make to-do list', 'habit', '1', '2018-05-25', '2231-01-20', '2', 'active', 0),
(367, 58, 'Make to-do list', 'habit', '2', '2018-05-25', '2231-01-20', '2', 'active', 0),
(368, 58, 'Make to-do list', 'habit', '3', '2018-05-25', '2231-01-20', '1', 'active', 0),
(369, 58, 'Make to-do list', 'habit', '4', '2018-05-25', '2231-01-20', '3', 'active', 0),
(370, 58, 'Make to-do list', 'habit', '5', '2018-05-25', '2231-01-20', '1', 'active', 0),
(371, 58, 'Make to-do list', 'habit', '6', '2018-05-25', '2231-01-20', '3', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `interested_matches`
--

CREATE TABLE `interested_matches` (
  `id` int(50) UNSIGNED NOT NULL,
  `user_id` int(50) UNSIGNED NOT NULL,
  `interested_user_id` int(50) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interested_matches`
--

INSERT INTO `interested_matches` (`id`, `user_id`, `interested_user_id`, `username`) VALUES
(236, 53, 38, 'harrison'),
(237, 53, 41, 'Jeffsta1'),
(238, 53, 42, 'Jeffsta11'),
(239, 53, 43, 'nottaylor'),
(240, 53, 44, 'IsItNolan?'),
(242, 53, 37, 'keaton13'),
(243, 38, 53, 'harrison'),
(244, 58, 37, 'keaton13'),
(245, 58, 41, 'Jeffsta1'),
(246, 37, 53, 'keaton13'),
(247, 58, 49, 'jeffjeff'),
(248, 38, 59, 'harrison'),
(249, 38, 59, 'harrison'),
(250, 38, 51, 'harrisontruong'),
(251, 59, 38, 'harrison'),
(252, 59, 38, 'harrison'),
(253, 38, 42, 'Jeffsta11'),
(254, 60, 58, 'duyduyduy'),
(255, 60, 56, 'harrison'),
(256, 60, 51, 'harrisontruong'),
(257, 60, 57, 'mynameis'),
(258, 60, 56, 'harrison'),
(259, 60, 52, 'asdfasdf'),
(260, 61, 56, 'harrison'),
(261, 61, 60, 'garrison'),
(262, 61, 60, 'garrison'),
(263, 61, 60, 'garrison'),
(264, 60, 61, 'barrison'),
(265, 60, 61, 'barrison'),
(266, 62, 56, 'harrison'),
(267, 62, 51, 'harrisontruong'),
(268, 38, 62, 'jarrison'),
(269, 63, 62, 'jarrison'),
(270, 63, 51, 'harrisontruong'),
(271, 63, 56, 'harrison'),
(272, 38, 44, 'IsItNolan?'),
(273, 38, 44, 'IsItNolan?'),
(274, 58, 60, 'duyduyduy'),
(275, 58, 38, 'harrison'),
(276, 58, 42, 'Jeffsta11');

-- --------------------------------------------------------

--
-- Table structure for table `loggedinUsers`
--

CREATE TABLE `loggedinUsers` (
  `ID` int(10) UNSIGNED NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `token` varchar(40) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loggedinUsers`
--

INSERT INTO `loggedinUsers` (`ID`, `userID`, `token`, `created`) VALUES
(205, 37, '0pol0vxuz6porldfpo571524249792740', '2018-04-20 18:43:12'),
(206, 38, 'fy1e2og6ppx370y1638g1524249894329', '2018-04-20 18:44:54'),
(207, 38, 'pk38lbslk90ikfryau561524250414027', '2018-04-20 18:53:34'),
(208, 37, 'jkhvf6n5vbspfzi99cj31524250761162', '2018-04-20 18:59:21'),
(209, 38, '7syg4gyamdxelpenoh8e1524250898098', '2018-04-20 19:01:38'),
(210, 37, 'fhy1ntjb3z60rdlw85941524250899864', '2018-04-20 19:01:39'),
(211, 38, '6l6yptbeu3i9cyi8ontn1524250998179', '2018-04-20 19:03:18'),
(212, 39, 'eoyk990l8wa797hoelnh1524259172294', '2018-04-20 21:19:32'),
(213, 40, 'si1hv9fi7c2z3nu77t6v1524259514547', '2018-04-20 21:25:14'),
(214, 37, '0ii7403rhh22wz74zugj1524260210828', '2018-04-20 21:36:50'),
(215, 37, 'f6kstwdacqv3axe5kquk1524260399680', '2018-04-20 21:39:59'),
(216, 38, 'z0xrj5fgsq95nw8eismx1524260416645', '2018-04-20 21:40:16'),
(217, 38, 'jmeqmoeo5j4etryg5w9c1524265976901', '2018-04-20 23:12:56'),
(218, 38, '8uhfm3wzl3vp2e6zo77m1524266205655', '2018-04-20 23:16:45'),
(219, 37, '7khecrg8g9lm5bzc0vlr1524266224103', '2018-04-20 23:17:04'),
(220, 38, 's4kq46rb7r5ciy7dcty91524268129000', '2018-04-20 23:48:49'),
(221, 38, '1tgnyl4ti8huhi8jurrc1524268553314', '2018-04-20 23:55:53'),
(222, 42, 'tnmjc9jt7aui1htvnqvt1524268649975', '2018-04-20 23:57:29'),
(223, 43, '7f991xx0ih0hg0ipuydr1524268737620', '2018-04-20 23:58:57'),
(224, 44, 'amgu9guzfshmjy9zyv551524268901841', '2018-04-21 00:01:41'),
(225, 45, 'xq9gnz0x7hvn6r1xlsov1524268958271', '2018-04-21 00:02:38'),
(226, 46, '2lzzsfm9zrqqu295wk891524268975627', '2018-04-21 00:02:55'),
(227, 42, 'm8ay14jj6vuk2p5fei7g1524269045802', '2018-04-21 00:04:05'),
(228, 48, 'thglgtoyslutopqeyjhf1524269181325', '2018-04-21 00:06:21'),
(229, 49, '4etrhv2rogmfnpvw6xon1524269240597', '2018-04-21 00:07:20'),
(230, 37, 'gjhvo0on8cr1mgc3ofbp1524416906464', '2018-04-22 17:08:26'),
(231, 50, 'uvczqocqcw2p1697kh8r1524420766664', '2018-04-22 18:12:46'),
(232, 50, 'hgy6t5o9t6iqmoj7b25x1524420808095', '2018-04-22 18:13:28'),
(233, 42, 'b8m6slomte8aks99oj0e1524452152311', '2018-04-23 02:55:52'),
(234, 37, '5llotgcjcz1qz7y8w2he1524793979602', '2018-04-27 01:52:59'),
(235, 51, '53wfg5ckqtaxvvbvknd61525127829986', '2018-04-30 22:37:10'),
(236, 37, 'hd22g3ffdwsziam3tft61525129644147', '2018-04-30 23:07:24'),
(237, 51, '3w35henvauu29wmtu5y81525130968971', '2018-04-30 23:29:28'),
(238, 52, 'd4k8sukxwabjfodgrzxo1525132638226', '2018-04-30 23:57:18'),
(239, 37, 'e8kcx1w8adpiv9b60gl21525135940739', '2018-05-01 00:52:14'),
(240, 51, 'tql4vcp9eh1f9vusts6c1525212585658', '2018-05-01 22:09:45'),
(241, 53, '846zmxyualcf5x01a15t1525225344307', '2018-05-02 01:42:23'),
(242, 37, 'a7uvbic099sam9m03y4c1525225575587', '2018-05-02 01:46:15'),
(243, 53, 'xkcpkf1t5g6fdfjrvjyl1525225828630', '2018-05-02 01:50:28'),
(244, 53, 'fz3zk568iwkrs09zf3qp1525226980980', '2018-05-02 02:09:40'),
(245, 38, 'jix7gm51y9kd19pw5a4d1525571399481', '2018-05-06 01:49:59'),
(246, 53, 'y8r9lwyqkpt4z5c8sl0h1525723042014', '2018-05-07 19:57:22'),
(247, 53, 'tpipzs6t7ihylom3j2601525723174454', '2018-05-07 19:59:34'),
(248, 53, 'aocqydhq6stpqmm0d1ha1525724024110', '2018-05-07 20:13:44'),
(249, 57, 'cow4drzd1il7qobaxagl1525724574764', '2018-05-07 20:22:54'),
(250, 54, '3rl36zqyd3mc10vzztxk1525725291214', '2018-05-07 20:34:51'),
(251, 54, '1amnnjqqb62b9gp5rjz01525725309102', '2018-05-07 20:35:09'),
(252, 54, 'a6owtiljlcfgwc3poz781525725373463', '2018-05-07 20:36:13'),
(253, 53, 'e8mgbv99hew0b8fpq8391525731149802', '2018-05-07 22:12:29'),
(254, 53, 'jixy62y86h99ps3q2rhi1525731360913', '2018-05-07 22:16:00'),
(255, 53, '1g2l8lx5kx08rrkg8hkw1525731391103', '2018-05-07 22:16:30'),
(256, 53, '4ux43b2h3o2owwkr4h601525735076169', '2018-05-07 23:17:56'),
(257, 53, 'mcgaqwno0mza4w4cccvz1525735100205', '2018-05-07 23:18:20'),
(258, 53, '5s5piy3f5bsklbxhd2jg1525735115213', '2018-05-07 23:18:35'),
(259, 53, '7i67ayrjghjfnsyuimjy1525735131789', '2018-05-07 23:18:51'),
(260, 53, '9o869i5pq8on6iz5hoo31525735245836', '2018-05-07 23:20:45'),
(261, 53, '8yey8w4yxy83wkqstb751525735247638', '2018-05-07 23:20:47'),
(262, 53, 'aj3jidqifttrfqi9n8451525735248253', '2018-05-07 23:20:48'),
(263, 53, '83fnfbpczrf0synu0wz41525735253118', '2018-05-07 23:20:52'),
(264, 53, 'lzjl6v7fcb0zoaj16n061525735463558', '2018-05-07 23:24:23'),
(265, 58, 'yd04lu9tu7z9jx0q205i1525735518319', '2018-05-07 23:25:18'),
(266, 53, 'b7lkmtjnvyo1xnxojhz51525736090004', '2018-05-07 23:34:49'),
(267, 53, 'y45fe3d9lyygo9w8v60j1525736116504', '2018-05-07 23:35:16'),
(268, 53, 'jrp2sybyux52zko03f6e1525736629083', '2018-05-07 23:43:49'),
(269, 53, 'gpktdbq4r3flzpthya541525736918446', '2018-05-07 23:48:38'),
(270, 53, 'u6le10tbuu7agal9sift1525737170332', '2018-05-07 23:52:50'),
(271, 53, '3psueezi795vntzozrhg1525737199518', '2018-05-07 23:53:19'),
(272, 53, '9aemf9cju8xtn29i87m71525737505959', '2018-05-07 23:58:25'),
(273, 53, 'vk01crgbk2fqr3p35opl1525738244956', '2018-05-08 00:10:44'),
(274, 53, 'fhe8j5l4nwovh6jvmy4g1525738415511', '2018-05-08 00:13:35'),
(275, 53, 'rkbye4ta03j8kdm1ik6u1525739220605', '2018-05-08 00:27:00'),
(276, 53, '0izucd80x9rz95t21xtg1525739251810', '2018-05-08 00:27:31'),
(277, 53, 'p8ohcj3soeacwnvjztki1525741125281', '2018-05-08 00:58:45'),
(278, 53, '9oxqhwbcvvqp4lhzt7q91525741138420', '2018-05-08 00:58:58'),
(279, 53, '4reo2fqsipiq3nvawpvo1525741139008', '2018-05-08 00:58:59'),
(280, 53, 'x4l4t1j9v6nmor8ryfoy1525741139435', '2018-05-08 00:58:59'),
(281, 53, 'g7dfm2juoqhaopzv4ts51525741184203', '2018-05-08 00:59:44'),
(282, 58, 'h08mjum87rfwiyr7prh81525741234343', '2018-05-08 01:00:34'),
(283, 53, 'mu9tq0i24w1ftd5xnzpd1525804086552', '2018-05-08 18:28:05'),
(284, 53, 'jtfnnj9q7to501k39v0g1525804133201', '2018-05-08 18:28:52'),
(285, 53, 'fxalnqje52hx7dhkwk751525804134216', '2018-05-08 18:28:53'),
(286, 53, 'axbzlc0m2rrffuf5f2th1525804149814', '2018-05-08 18:29:08'),
(287, 53, '69ql87p22ryvl8utq3ao1525804181015', '2018-05-08 18:29:39'),
(288, 53, 'dgmr2z0ahd9y09o5cqmi1525804255870', '2018-05-08 18:30:54'),
(289, 53, 'yaoirovlw1pjgcluo9mu1525804275381', '2018-05-08 18:31:14'),
(290, 53, 'v2u43f6znkmm6vhis9801525804294022', '2018-05-08 18:31:32'),
(291, 53, '58o3y8vzgj8g1qeb5ryu1525804337237', '2018-05-08 18:32:16'),
(292, 53, '8o58jjh5f2c2qjz5ghy41525804339500', '2018-05-08 18:32:18'),
(293, 53, '8sidqpv25q84ud6e71un1525804340115', '2018-05-08 18:32:19'),
(294, 53, 'pbn8s0vyzwtvg5d0wmli1525804340526', '2018-05-08 18:32:19'),
(295, 53, 'qvj5vlpxp5zu2119mbgw1525804345278', '2018-05-08 18:32:24'),
(296, 53, 'b065byu57wek5jnwfe4y1525804376518', '2018-05-08 18:32:55'),
(297, 53, 'yj1pejeedmxasajxeaq91525804433427', '2018-05-08 18:33:52'),
(298, 53, '4w0tupyqd4nsc58r9azd1525804485884', '2018-05-08 18:34:44'),
(299, 53, 'thyyl0srwlgbm86i7dsa1525804513101', '2018-05-08 18:35:12'),
(300, 53, 'pwihyebn46ff916fc3d51525804531423', '2018-05-08 18:35:30'),
(301, 53, 'kfi9dx0xbs1h43xapkcg1525804631664', '2018-05-08 18:37:10'),
(302, 53, 'yiec99ktui0h72p8s5ig1525804685181', '2018-05-08 18:38:04'),
(303, 53, '9rsgqeo2j0chg39b9fsw1525804752678', '2018-05-08 18:39:11'),
(304, 53, 'sbpkivbhxf4ty9urrx2h1525804773283', '2018-05-08 18:39:32'),
(305, 53, '01b9bdimifddcr4ncm261525804815002', '2018-05-08 18:40:13'),
(306, 53, '96i7l8g7xzar52fm7quz1525804912873', '2018-05-08 18:41:51'),
(307, 53, 'vxj8upz2zhs8db1yu2j01525805083088', '2018-05-08 18:44:42'),
(308, 53, '6xl9l9ld3qf8dvk05lxj1525805284784', '2018-05-08 18:48:03'),
(309, 53, 'ne1g3w5y8ewsfnlc7bb61525805329248', '2018-05-08 18:48:48'),
(310, 53, 'dgiw712om9nhgdoud9q11525805356402', '2018-05-08 18:49:15'),
(311, 53, '4vd2gntf9ddn22s4nlsf1525805574568', '2018-05-08 18:52:53'),
(312, 53, 't3pbofe16vkwjlgwkh761525805681628', '2018-05-08 18:54:40'),
(313, 53, '0ic8yylrvwn41nv7386p1525805837705', '2018-05-08 18:57:16'),
(314, 53, '9bpskt71beapbr6bx6s11525805888599', '2018-05-08 18:58:07'),
(315, 53, 'ycal94i5mamh1lfiqv3m1525805926081', '2018-05-08 18:58:45'),
(316, 53, 'i9bfi0ao6vwp5lvl8jhs1525806016372', '2018-05-08 19:00:15'),
(317, 53, 'n9qyqnbgjktxn6u7up7g1525806020039', '2018-05-08 19:00:19'),
(318, 53, '6041qeihhmvnqaxm8dh11525806026527', '2018-05-08 19:00:25'),
(319, 53, 'tspcfxcv2iplhnp55c8a1525806038449', '2018-05-08 19:00:37'),
(320, 53, '30z3if2ylfotwsusn9vd1525806043452', '2018-05-08 19:00:42'),
(321, 53, 'f9yvee23ay6a66yjyfix1525806060240', '2018-05-08 19:00:59'),
(322, 53, 'gksazy0678hzvn92mi1x1525806218821', '2018-05-08 19:03:37'),
(323, 53, 'ldvq99dj2uzfk04u0pf11525806234486', '2018-05-08 19:03:53'),
(324, 53, 'xl00638yofpj510f10371525806277325', '2018-05-08 19:04:36'),
(325, 53, 'b10na08y2y9e2pasbgnc1525806314034', '2018-05-08 19:05:13'),
(326, 53, 'zzzxeufijc3a5269e03v1525806329475', '2018-05-08 19:05:28'),
(327, 53, 'u2mc474iwbhz29i328s41525806358577', '2018-05-08 19:05:57'),
(328, 53, 'aimfobzqz7sv7qhfb1rq1525806397700', '2018-05-08 19:06:37'),
(329, 53, 'rukijp6q4nehswuh8sa01525806899240', '2018-05-08 19:14:58'),
(330, 53, '9f68lzzzt1vytvg9js4z1525808404380', '2018-05-08 19:40:03'),
(331, 53, 'ld7jkxpjq6siswhl7t6z1525808450597', '2018-05-08 19:40:49'),
(332, 53, '7gb6xw7rlg3wwtfcreiq1525808489413', '2018-05-08 19:41:28'),
(333, 53, 'elxlmnao4kt5kasly8vz1525808509153', '2018-05-08 19:41:48'),
(334, 53, 'rw6hptinvg6q9y1ahcrb1525808610377', '2018-05-08 19:43:29'),
(335, 53, 'oztxaay13ciyzb5fqf0u1525808621796', '2018-05-08 19:43:40'),
(336, 53, '05kgpyvrfyvk8wkasxl01525808668998', '2018-05-08 19:44:28'),
(337, 53, 'r0rdb760tzmjptdqhixc1525808731156', '2018-05-08 19:45:30'),
(338, 53, 'mmpzlfnhar4vb9ykn6iu1525808775528', '2018-05-08 19:46:14'),
(339, 53, 'yckubohx87b136b3yvac1525808806514', '2018-05-08 19:46:45'),
(340, 53, 'fw71qqqmvr4d5ajpjvl91525808833988', '2018-05-08 19:47:13'),
(341, 53, 'ed18q0n7lcmwa7sgbtig1525808847389', '2018-05-08 19:47:26'),
(342, 53, 'kjohh5s2oca8imwqm3ks1525809334578', '2018-05-08 19:55:33'),
(343, 38, 'j4j6te6cfj5sm2v2ojl81525814101607', '2018-05-08 21:15:01'),
(344, 38, '0uxpwnjdg6cispko9hx71525814314241', '2018-05-08 21:18:34'),
(345, 53, '9yt076yjk2cc79syhgve1525816526246', '2018-05-08 21:55:24'),
(346, 53, '38e3ge9iit19ns6ssypc1525888410905', '2018-05-09 17:53:27'),
(347, 53, 'gauzpey8g94joovhb75l1525888703144', '2018-05-09 17:58:23'),
(348, 53, 'vdienlkzxug2d1ft6xkg1525888934134', '2018-05-09 18:02:14'),
(349, 53, '7knm42h48wuh0xq86f8d1525888944450', '2018-05-09 18:02:24'),
(350, 58, 'ylsjhpgfj3nleqse0yrw1525977376152', '2018-05-10 18:36:16'),
(351, 58, '7vzqfm9iluly5qxuo3qk1525977646683', '2018-05-10 18:40:46'),
(352, 38, 'ks3cfokjg5v19ey5bpui1525982615734', '2018-05-10 20:03:35'),
(353, 38, 'qegcltxvatp2e8xzzppe1525982715986', '2018-05-10 20:05:16'),
(354, 59, '0446u8p8o3ft7poeig221526423525610', '2018-05-15 22:32:05'),
(355, 38, 'gwwl7w80296jsozu6oza1526423555320', '2018-05-15 22:32:35'),
(356, 59, '0npvums4s5t788nag5bb1526424102980', '2018-05-15 22:41:43'),
(357, 38, 'ral0odojlhyxbz7wn7wr1526424291501', '2018-05-15 22:44:51'),
(358, 60, 'ni4zwp7vanac0bguct1n1526424352721', '2018-05-15 22:45:52'),
(359, 61, 'eezsicrrvkdubanbokze1526424442072', '2018-05-15 22:47:22'),
(360, 60, 't3rw7ubq7gzc8gbcsva51526424612505', '2018-05-15 22:50:12'),
(361, 62, '2bc618yhyaeb1p3k5rrf1526425719903', '2018-05-15 23:08:39'),
(362, 38, '96w6455h6osnedqoom651526425764058', '2018-05-15 23:09:24'),
(363, 63, 'mvrsi4vv7nmv6f0z9kmh1526425806437', '2018-05-15 23:10:06'),
(364, 62, 'yva78xxpr7mj7nxjib2i1526425855142', '2018-05-15 23:10:55'),
(365, 38, 'dsbvzh947psb55dk8dpe1526426109829', '2018-05-15 23:15:09'),
(366, 38, '0ywoqj4sjqvt32x8gmng1526430188900', '2018-05-16 00:23:09'),
(367, 38, '1jogkftx2nxw3v1w5c2z1526431225603', '2018-05-16 00:40:25'),
(368, 38, 'ds09jr33et41zouiu86c1526440053708', '2018-05-16 03:07:33'),
(369, 38, '56ylok2udtb0uls9l6wy1526534790996', '2018-05-17 05:26:31'),
(370, 38, '56mexn8b7nx4tfss7jw91526601013878', '2018-05-17 23:50:13'),
(371, 38, '6mv6pysezkxhpgby76k11526601936586', '2018-05-18 00:05:36'),
(372, 58, '5tl7l81f5p1xyfk9a0pe1526652760708', '2018-05-18 14:12:40'),
(373, 53, 'k7cszz9y4yn846bn9wuk1526925171752', '2018-05-21 17:52:52'),
(374, 38, '2qxzkebdy2yxym83x9ei1527052865765', '2018-05-23 05:21:05'),
(375, 58, 'l5chs7ix2an7qjj5sl281527219194150', '2018-05-25 03:33:14'),
(376, 58, '7d9jy20wcm5wg76nxo271527280191043', '2018-05-25 20:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `loginData`
--

CREATE TABLE `loginData` (
  `ID` int(10) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(64) NOT NULL,
  `created` datetime NOT NULL,
  `lastBadLogin` datetime NOT NULL,
  `badloginAttempts` tinyint(3) UNSIGNED NOT NULL,
  `rights` tinyint(3) UNSIGNED NOT NULL,
  `status` enum('active','inactive','deleted','joined') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matched_users`
--

CREATE TABLE `matched_users` (
  `id` int(50) UNSIGNED NOT NULL,
  `user_id` int(50) UNSIGNED NOT NULL,
  `matched_user_id` int(50) UNSIGNED NOT NULL,
  `roomid` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matched_users`
--

INSERT INTO `matched_users` (`id`, `user_id`, `matched_user_id`, `roomid`) VALUES
(81, 53, 37, '0'),
(82, 58, 60, '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(50) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `username`, `password`, `status`) VALUES
(37, 'keaton@email.com', 'keaton13', 'e38ad214943daad1d64c102faec29de4afe9da3d', '1'),
(38, 'harrison@email.com', 'harrison', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '0'),
(41, 'jeff@jeff.jeff', 'Jeffsta1', 'c2310fcbe2f08a770fc718504d4b73ec0bace67a', '0'),
(42, 'jeff@jeff.jefff', 'Jeffsta11', 'b4d822082a4cb54ad39c62861fd3d6bc25341dcd', '0'),
(43, 'test@test.com', 'nottaylor', '0f0f6e05782df36ed8aca74450d47b2fb716baa8', '0'),
(44, 'nemerson17@gmail.com', 'IsItNolan?', '01f37973cd622a57144787a10c59f7c07073f2cd', '0'),
(45, 'tj.kinion@learningfuze.com', 'Will_Smith', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '0'),
(46, 'miskatonicraft@gmail.com', 'codingcody', '4b2c5a6d33c70caa171639d1e5a76a81f83c3cfb', '0'),
(47, 'hshd@gmail.com', 'KittyKat', '6adfb183a4a2c94a2f92dab5ade762a47889a5a1', '0'),
(48, 'DatabaseHackerLol@gmail.com', 'IWantYourDataLol', '6af3cf0521c3fa2d66c2bbeb488d3bec9bbdf85e', '0'),
(49, 'realnolan@real.com', 'jeffjeff', 'b4d822082a4cb54ad39c62861fd3d6bc25341dcd', '0'),
(50, 'hamiltontruong@gmail.com', 'hamiltontruong', 'e27dd693e8ada723c612253a4c5530ce65306c1b', '0'),
(51, 'harrisontruong@gmail.com', 'harrisontruong', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '0'),
(52, 'asdf@asdf.asdf', 'asdfasdf', '92429d82a41e930486c6de5ebda9602d55c39986', '0'),
(53, 'keatonk@y0.com', 'keaton13', 'e38ad214943daad1d64c102faec29de4afe9da3d', '1'),
(56, 'harrison@email.com', 'harrison', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '0'),
(57, 'hi@hi.com', 'mynameis', '7c222fb2927d828af22f592134e8932480637c0d', '0'),
(58, 'duy@duy.com', 'duyduyduy', '4178c9f4aafb5a9253251e59f732b11f9e4c7410', '1'),
(59, 'harrison@gmail.com', 'harrison', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '0'),
(60, 'garrison@email.com', 'garrison', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '1'),
(61, 'barrison@email.com', 'barrison', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '0'),
(62, 'jarrison@email.com', 'jarrison', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '0'),
(63, 'karrison@email.com', 'karrison', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '0'),
(64, 'duy@duy.com', 'duyduyduy', '4178c9f4aafb5a9253251e59f732b11f9e4c7410', '0'),
(65, 'harrison@email.com', 'harrisontruong', 'e38ad214943daad1d64c102faec29de4afe9da3d', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`goal_id`);

--
-- Indexes for table `interested_matches`
--
ALTER TABLE `interested_matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loggedinUsers`
--
ALTER TABLE `loggedinUsers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `loginData`
--
ALTER TABLE `loginData`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `matched_users`
--
ALTER TABLE `matched_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `goal_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;
--
-- AUTO_INCREMENT for table `interested_matches`
--
ALTER TABLE `interested_matches`
  MODIFY `id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;
--
-- AUTO_INCREMENT for table `loggedinUsers`
--
ALTER TABLE `loggedinUsers`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;
--
-- AUTO_INCREMENT for table `loginData`
--
ALTER TABLE `loginData`
  MODIFY `ID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `matched_users`
--
ALTER TABLE `matched_users`
  MODIFY `id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
