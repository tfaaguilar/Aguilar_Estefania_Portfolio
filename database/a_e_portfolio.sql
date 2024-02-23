-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 23, 2024 at 06:59 PM
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
(9, 3, 'image3c.png'),
(10, 1, 'image1d.jpg'),
(11, 1, 'image1e.png'),
(12, 1, 'image1f.png'),
(13, 3, 'image3d.png'),
(14, 2, 'image2d.png'),
(15, 3, 'image3e.png'),
(16, 3, 'image3f.png');

-- --------------------------------------------------------

--
-- Table structure for table projects
--

CREATE TABLE projects (
  id int(11) NOT NULL,
  title varchar(255) NOT NULL,
  description text,
  image_url varchar(255) DEFAULT NULL,
  objective text NOT NULL,
  goals text NOT NULL,
  responsabilities text NOT NULL,
  process text NOT NULL,
  results text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table projects
--

INSERT INTO projects (id, title, description, image_url, objective, goals, responsabilities, process, results) VALUES
(1, 'BeatBuds', 'This project is about enhancing the earbud experience on our website, Beatbuds. Explore top-notch earbuds, discover personalized recommendations, and connect with the audio community.', 'project1_thumb.png', 'The objective was to establish a modern, cohesive design that effectively showcased the latest Earbuds and provided an immersive experience for visitors.', 'Develop a visually striking design that aligns with Beatbuds\' brand image, Highlight the latest earbud models through engaging visuals and product showcases and Create an intuitive and aesthetically pleasing user interface.', 'Our responsibilities included conceptualizing the website\'s visual elements, creating design mockups, and collaborating closely with Beatbuds to ensure the design reflected their brand identity.', 'We initiated the project with a comprehensive analysis of Beatbuds\' brand guidelines and market positioning. After understanding their vision, we proceeded to create design concepts, mood boards, and high-fidelity mockups to visualize the aesthetics of the website.\r\n\r\nWhile the primary focus was on design, we ensured that the visual elements were implemented seamlessly within the development framework. Collaboration with developers was essential to guarantee that the design vision translated effectively into the final web pages.', 'The results include positive reception from users and stakeholders for the visually appealing design, increased user engagement in terms of time spent on the website and enhanced brand perception through the modern and cohesive design.\r\n\r\nIn conclussion, the Beatbuds Earbuds Website Design project successfully delivered a visually captivating online platform that effectively communicated the brand\'s identity and showcased its products in a compelling manner.'),
(2, 'Kavorka', 'This project revolves around providing a luxurious experience on our skincare-focused website. Explore premium skincare products, personalized routines, and join a community passionate about radiant skin.', 'project2_thumb.png', 'The objective of this advertising campaign is to enhance brand awareness, drive website traffic, and ultimately increase sales of our premium skincare products. We aim to position our brand as a leader in the luxury skincare market and provide customers with a luxurious experience on our website.', 'We were aimed to increase website traffic within the campaign period, generate engagement on social media platforms. Establish our brand as a trusted authority in the luxury skincare industry and build a loyal community of skincare enthusiasts around our brand.', 'We embark on a comprehensive process to craft innovative advertising strategies tailored to captivate our target demographic. This involves meticulously designing visually striking advertisements optimized for diverse platforms such as social media, search engines, and websites. Additionally, we foster strategic partnerships with influencers and esteemed beauty authorities to lend credibility to our products and expand our reach. Throughout the campaign, we vigilantly monitor and analyze key performance metrics, allowing us to fine-tune our strategies for optimal effectiveness. Furthermore, we uphold stringent adherence to advertising regulations and brand guidelines, ensuring our campaigns maintain integrity and resonate authentically with our audience.', 'Beginning with in-depth research, we delve into the luxury skincare industry, meticulously analyzing market trends and discerning the preferences of our target audience. This foundational understanding forms the bedrock upon which we build our strategy.\r\n\r\nNext, in the stage of strategy development, we craft a comprehensive advertising strategy. This blueprint delineates our campaign objectives, identifies our target demographic, refines our messaging, and selects the most effective channels for dissemination.\r\n\r\nWith strategy in hand, we transition into the creative production phase. Here, our team channels their creativity to produce captivating visuals and compelling copy that not only align with our brand\'s image but also resonate deeply with our intended audience.', 'In conclusion, the advertising campaign for our luxury skincare product successfully achieved its objectives and exceeded expectations in terms of driving website traffic, increasing sales, and building brand reputation. By delivering a luxurious experience on our skincare-focused website and engaging with our target audience effectively, we have strengthened our position in the competitive skincare market.'),
(3, 'Burple', 'This project focuses on the rebranding of a soda-centric website, aiming to elevate the soda experience through visually appealing design, interactive flavor profiles and customization options.', 'project3_thumb.png', 'The objective of this rebranding project is to transform the soda experience by revitalizing the soda-centric website. Through visually appealing design, interactive flavour profiles, and customization options, our goal is to elevate the user experience, capture audience engagement, and position the brand as a leading innovator in the soda industry.', 'Enhance user engagement, improve brand perception, expand audience reach, increase conversion rates, foster brand loyalty, and measure success. This involves implementing interactive features, refreshing the website design, attracting new visitors, encouraging desired actions, building long-term relationships with customers, and tracking key performance indicators. Through these objectives, the project aims to establish the website as a leading destination for soda enthusiasts, driving growth and success for the brand in the competitive beverage market.', 'Designers and developers are tasked with revitalizing the website\'s aesthetics and functionality, ensuring a seamless user experience. Marketing professionals are responsible for crafting compelling messaging and promotional strategies to drive traffic and engagement. Content creators curate captivating content, including flavour profiles and product descriptions, to entice and inform visitors. Quality assurance teams conduct rigorous testing to guarantee the website\'s performance and functionality. Project managers oversee timelines, budgets, and resource allocation to ensure project milestones are met efficiently. ', 'The rebranding process for this website follows a streamlined approach. It begins with thorough research to inform strategy, followed by creative production to develop visually appealing content. Implementation involves launching the revamped website, while ongoing monitoring and optimization ensure performance is maximized. Regular reporting provides insights into success, guiding refinements as needed to drive growth and success in the soda market.', 'In conclusion, the rebranding of the website has been a pivotal endeavour, marked by meticulous planning, creative execution, and diligent monitoring. Through the implementation of engaging features, visually appealing design, and strategic promotion. Looking ahead, we remain committed to refining our strategies, leveraging insights, and continuously innovating to maintain our momentum and drive sustained growth in the competitive beverage market.');

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
(2, 'Anna', 'Anna@gmail.com', 'I am really interest on your work, let me know if you are available for an interview.\r\nThanks.'),
(3, 'a', 'a@gmai.com', 'hi'),
(4, 'Maria', 'maria@gmail.com', 'I am interested on your projects.'),
(5, 'Juan', 'juan@gmail.com', 'Hi'),
(6, 'Marco', 'marco@gmail.com', 'Hello'),
(7, 'Sarah', 'sarah@gmail.com', 'Hola');

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
