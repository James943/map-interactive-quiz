-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2024 at 02:27 PM
-- Server version: 8.0.37
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jn494_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `gameID` int NOT NULL,
  `blue` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `blueScore` int NOT NULL,
  `purple` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `purpleScore` int NOT NULL,
  `orange` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `orangeScore` int NOT NULL,
  `green` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `greenScore` int NOT NULL,
  `yellow` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `yellowScore` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`gameID`, `blue`, `blueScore`, `purple`, `purpleScore`, `orange`, `orangeScore`, `green`, `greenScore`, `yellow`, `yellowScore`) VALUES
(1, 'Jules', 1, 'isabel ', 1, 'Orange', 1, 'Me', 1, 'Jenny', 6);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qSet` int NOT NULL,
  `q` int NOT NULL,
  `image` varchar(30) NOT NULL,
  `question` varchar(300) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `coordinates` varchar(6) NOT NULL,
  `blue` varchar(6) NOT NULL,
  `purple` varchar(6) NOT NULL,
  `orange` varchar(6) NOT NULL,
  `green` varchar(6) NOT NULL,
  `yellow` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qSet`, `q`, `image`, `question`, `answer`, `coordinates`, `blue`, `purple`, `orange`, `green`, `yellow`) VALUES
(1, 1, 'asiaMap.png', 'Where is Bali?', 'Island to the east of Java, Indonesia ', '300357', '', '', '', '', ''),
(1, 2, 'asiaMap.png', 'Where is Falcons Flight the new tallest, fastest, longest rollercoaster currently under construction', 'Six Flags Qiddiya, Riyadh, Saudi Arabia', '045223', '', '', '', '', ''),
(1, 3, 'asiaMap.png', 'The track that has hosted the most F1 Grand Prix in asia', 'Suzuka Circuit, Japan (33 times)', '353177', '', '', '', '', ''),
(1, 4, 'asiaMap.png', 'This image. This location served as inspiration for the planet Pandora the film Avatar(2009)', 'Zhangjiajie National Forest Park, Wulingyuan UNESCO World Heritage Site, Hunan, China', '272201', '', '', '', '', ''),
(1, 5, 'asiaMap.png', '(Easy) Where is North Korea?', 'Above South Korea', '311157', '', '', '', '', ''),
(1, 6, 'asiaMap.png', 'The launch site of the rocket carrying the first ever artificial satellite into space', 'Sputnik 1 lauched from Baikonur Cosmodrome, Kazakhstan in 1957', '090129', '', '', '', '', ''),
(1, 16, 'asiaMap.png', '(Easy) Where is Hong Kong?', 'See map', '289229', '', '', '', '', ''),
(1, 7, 'asiaMap.png', 'The Merdeka 118, the second tallest building in the world, completed in 2022. (Hint - The building was designed to resemble [someone\'s] stature as he proclaimed [a country\'s] independence on 31 August 1957, chanting \"Merdeka!\"[meaning \"independence!\"] seven times)', 'Kuala Lumpur, Malaysia', '253309', '', '', '', '', ''),
(1, 8, 'asiaMap.png', 'Where is K2?', 'It lies in the Karakoram range, partially in Pakistan-administered Kashmir and partially in Xinjiang region of China', '144173', '', '', '', '', ''),
(1, 9, 'asiaMap.png', '(Easy) Where is Beijing the capital of China?', 'North-Eastern China, 93 miles inland from the coast', '275156', '', '', '', '', ''),
(1, 10, 'asiaMap.png', 'Where is Brunei, ruled by the Sultan of Brunei?', 'On the northern coast of the island of Borneo', '298303', '', '', '', '', ''),
(1, 11, 'asiaMap.png', 'The capital city of the country in which the United States where engaged in conflict between 2001 and 2021, the longest war in US history', 'Kabul, Afghanistan', '121177', '', '', '', '', ''),
(1, 12, 'asiaMap.png', 'The place featured in the name of the gin based cockail that contains: 30ml gin, 15ml cherry liqueur, 7.5ml Cointreau, 7.5ml DOM Bénédictine, 120ml pineapple juice, 15ml lime juice, 10ml Grenadine, 1dash Angostura bitters', 'Singapore sling', '261318', '', '', '', '', ''),
(1, 13, 'asiaMap.png', '(Easy) Where is the Maldives, the world\'s lowest-lying country with an highest natural elavation of only 2.4 metres above sea level', 'An archipelagic state, consiting of 26 atolls, situated in the Indian Ocean, 470 miles southwest of India', '145302', '', '', '', '', ''),
(1, 14, 'asiaMap.png', 'The tech company Samsung\'s global headquarters and where it was founded?', 'Samsung Digital City, Yeongtong-gu, Suwon, South Korea', '318169', '', '', '', '', ''),
(1, 15, 'asiaMap.png', 'Home ground of the cricket franchise that are winners of the 2023 IPL, and who are also the joint most succesful team with 5 titles', 'Chennai Super Kings, Chennai (formally known as Madras)', '170267', '', '', '', '', ''),
(2, 1, 'north-america-map.png', 'Where is the setting of the film The Goonies (1985), most the filming also took place here', 'Astoria, Oregon', '109169', '255181', '176189', '101217', '204252', '123178'),
(2, 2, 'north-america-map.png', '(Easy) Where is New York City?', 'See map', '313195', '327183', '307201', '321196', '307223', '316193'),
(2, 3, 'north-america-map.png', 'Where is Costa Rica?', 'Between Nicaragua and Panama', '273379', '217345', '301291', '280377', '273345', '274382'),
(2, 4, 'north-america-map.png', 'Where is the Sea World theme park that isnt in San Diego or Orlando', 'San Antionio, Texas', '205262', '199339', '269361', '099203', '161298', '202257'),
(2, 5, 'north-america-map.png', 'The tallest building in the world between 1973 and 1998', 'Willis Tower originally called Sears Tower (1450ft, 110 floors), Chicago', '253189', '318195', '111159', '316195', '312196', '251180'),
(2, 6, 'north-america-map.png', 'The tallest mountain in North America?', 'Denali also known as Mount McKinley, Alaska (20,310 ft)', '058083', '149056', '184093', '185187', '186171', '116178'),
(2, 7, 'north-america-map.png', 'The track that has hosted the most F1 Grand Prixs in North America?', 'Circuit Gilles Villeneuve, Montreal, Canada (42 times, 5th most)', '309169', '179224', '236195', '196326', '126101', '207254'),
(2, 8, 'north-america-map.png', 'Where is barbados?', 'Most easterly of the Caribbean islands, Lesser Antilles', '393355', '390359', '355327', '325304', '359331', '301291'),
(2, 9, 'north-america-map.png', 'Where is the Green Bay Packers home ground?', 'Green Bay, Wisconsin', '253173', '110214', '172194', '209157', '268207', '232164'),
(2, 10, '', 'end', '', '', '', '', '', '', ''),
(2, 11, '', 'mount rushmore and bonus   pic route 66', '', '', '', '', '', '', ''),
(2, 12, '', 'haiti', '', '', '', '', '', '', ''),
(2, 13, '', 'drake', '', '', '', '', '', '', ''),
(2, 14, '', 'airport', '', '', '', '', '', '', ''),
(2, 15, '', 'stranger things  mount rushmore', '', '', '', '', '', '', ''),
(2, 16, '', 'winter olimpics', '', '', '', '', '', '', ''),
(2, 17, '', 'pic mayan', '', '', '', '', '', '', ''),
(2, 18, '', 'harvard', '', '', '', '', '', '', ''),
(2, 19, '', 'forest gump', '', '', '', '', '', '', ''),
(2, 20, '', 'easy pic washington dc', '', '', '', '', '', '', ''),
(2, 21, '', 'superbowl winners', '', '', '', '', '', '', ''),
(2, 22, '', 'area 51', '', '', '', '', '', '', ''),
(2, 23, '', 'lebron james cleveland', '', '', '', '', '', '', ''),
(2, 24, '', 'chinhuaua desert', '', '', '', '', '', '', ''),
(2, 25, '', 'easy jamaica', '', '', '', '', '', '', ''),
(2, 26, '', 'lake', '', '', '', '', '', '', ''),
(3, 28, '', 'easy san fransisco', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qSet`,`q`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
