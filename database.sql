-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2024 at 02:53 PM
-- Server version: 5.7.44
-- PHP Version: 8.1.27

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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q` int(11) NOT NULL,
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

INSERT INTO `questions` (`q`, `question`, `answer`, `coordinates`, `blue`, `purple`, `orange`, `green`, `yellow`) VALUES
(1, 'Where is Bali?', 'Island to the east of Java, Indonesia ', '300357', '', '', '', '', ''),
(2, 'Where is Falcons Flight the new tallest, fastest, longest rollercoaster currently under construction', 'Six Flags Qiddiya, Riyadh, Saudi Arabia', '045223', '', '', '', '', ''),
(3, 'The track that has hosted the most F1 Grand Prix in asia', 'Suzuka Circuit, Japan (33)', '353177', '', '', '', '', ''),
(4, 'This image. This location served as inspiration for the planet Pandora the film Avatar(2009)', 'Zhangjiajie National Forest Park, Wulingyuan UNESCO World Heritage Site, Hunan, China', '272201', '', '', '', '', ''),
(5, '(Easy) Where is North Korea?', 'Above South Korea', '311157', '', '', '', '', ''),
(6, 'The launch site of the rocket carrying the first ever artificial satellite into space', 'Sputnik 1 lauched from Baikonur Cosmodrome, Kazakhstan in 1957', '090129', '', '', '', '', ''),
(16, '(Easy) Where is Singapore?', 'See map', '261318', '', '', '', '', ''),
(7, 'The Merdeka 118, the second tallest building in the world, completed in 2022. (Hint - The building was designed to resemble [someone\'s] stature as he proclaimed [a country\'s] independence on 31 August 1957, chanting \"Merdeka!\"[meaning \"independence!\"] seven times)', 'Kuala Lumpur, Malaysia', '253309', '', '', '', '', ''),
(8, 'Where is K2?', 'It lies in the Karakoram range, partially in the Gilgit-Baltistan region of Pakistan-administered Kashmir and partially in the China-administered Trans-Karakoram Tract in the Taxkorgan Tajik Autonomous County of Xinjiang', '144173', '', '', '', '', ''),
(9, '(Easy) Where is Beijing the capital of China?', 'North-Eastern China, 93 miles inland from the coast', '275156', '', '', '', '', ''),
(10, 'Where is Brunei, ruled by the Sultan of Brunei?', 'On the northern coast of the island of Borneo', '298303', '', '', '', '', ''),
(11, 'The capital city of the country in which the United States where at war with between 2001 and 2021, the longest in US history', 'Kabul, Afghanistan', '121177', '', '', '', '', ''),
(12, 'The birthplace of actor, director, writer, producer, and stuntman Jackie Chan, where he also spent his early life and attended drama school for over a decade', 'Hong Kong', '289229', '', '', '', '', ''),
(13, '(Easy) Where is the Maldives, the world\'s lowest-lying country with an average ground-level elevation of 1.5 metres above sea level, and a highest natural point of only 2.4 metres', 'An archipelagic state, consiting of 26 atolls, situated in the Indian Ocean, 470 miles southwest of India', '145302', '', '', '', '', ''),
(14, 'Home ground of the cricket franchise that are winners of the 2023 IPL, and who are also the joint most succesful team with 5 titles', 'Chennai Super Kings, Chennai (formally known as Madras)', '170267', '', '', '', '', ''),
(15, 'The tech company Samsung\'s global headquarters and where it was founded?', 'Samsung Digital City, Yeongtong-gu, Suwon, South Korea', '318169', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
