-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 22, 2024 at 04:08 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: a_e_portfolio
--

-- --------------------------------------------------------

--
-- Table structure for table media
--

CREATE TABLE media (
  id int(11) NOT NULL,
  project_id int(11) DEFAULT NULL,
  image_filename varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table media
--

INSERT INTO media (id, project_id, image_filename) VALUES
(1, 1, 'image1a.png\r\n'),
(2, 1, 'image1b.png'),
(3, 1, 'image1c.png'),
(4, 2, 'image2a.png'),
(5, 2, 'image2b.png'),
(6, 2, 'image2c.png'),
(7, 3, 'image3a.png'),
(8, 3, 'image3b.png'),
(9, 3, 'image3c.png');

-- --------------------------------------------------------

--
-- Table structure for table projects
--

CREATE TABLE projects (
  id int(11) NOT NULL,
  title varchar(255) NOT NULL,
  description text,
  image_url varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table projects
--

INSERT INTO projects (id, title, description, image_url) VALUES
(1, 'BeatBuds', 'This project is about enhancing the earbud experience on our website, Beatbuds. Explore top-notch earbuds, discover personalized recommendations, and connect with the audio community.', 'project1_thumb.png'),
(2, 'Kavorka', 'This project revolves around providing a luxurious experience on our skincare-focused website. Explore premium skincare products, personalized routines, and join a community passionate about radiant skin.', 'project2_thumb.png'),
(3, 'Burple', 'This project focuses on the rebranding of a soda-centric website, aiming to elevate the soda experience through visually appealing design, interactive flavor profiles and customization options.', 'project3_thumb.png');

-- --------------------------------------------------------

--
-- Table structure for table users
--

CREATE TABLE users (
  id smallint(4) UNSIGNED NOT NULL,
  fname varchar(35) NOT NULL,
  email varchar(100) NOT NULL,
  message varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table users
--

INSERT INTO users (id, fname, email, message) VALUES
(1, 'Jhon Doe', 'jhondoe@gmail.com', 'Can you give me a call please? 544444444444'),
(2, 'Anna', 'Anna@gmail.com', 'I am really interest on your work, let me know if you are available for an interview.\r\nThanks.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table media
--
ALTER TABLE media
  ADD PRIMARY KEY (id),
  ADD KEY project_id (project_id);

--
-- Indexes for table projects
--
ALTER TABLE projects
  ADD PRIMARY KEY (id);

--
-- Indexes for table users
--
ALTER TABLE users
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table media
--
ALTER TABLE media
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table projects
--
ALTER TABLE projects
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table users
--
ALTER TABLE users
  MODIFY id smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table media
--
ALTER TABLE media
  ADD CONSTRAINT media_ibfk_1 FOREIGN KEY (project_id) REFERENCES projects (id);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
