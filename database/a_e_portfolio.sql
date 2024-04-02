-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 02, 2024 at 06:25 AM
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
(10, 1, 'image1d.png'),
(11, 1, 'image1e.png'),
(12, 1, 'image1f.png'),
(13, 3, 'image3d.png'),
(14, 2, 'image2d.png'),
(15, 3, 'image3e.png'),
(16, 3, 'image3f.png'),
(17, 4, 'image4a.jpg'),
(18, 4, 'image4b.jpg'),
(19, 4, 'image4c.png'),
(20, 4, 'image4d.png'),
(21, 4, 'image4e.png'),
(22, 5, 'image5a.jpg'),
(23, 5, 'image5b.jpg'),
(24, 5, 'image5c.jpg'),
(25, 6, 'image6a.jpg'),
(26, 6, 'image6b.jpg'),
(27, 6, 'image6c.jpg'),
(28, 6, 'image6d.jpg'),
(29, 7, 'image7a.jpg'),
(30, 7, 'image7b.jpg'),
(31, 7, 'image7c.jpg'),
(32, 7, 'image7d.jpg'),
(33, 8, 'image8a.jpg'),
(34, 8, 'image8b.jpg'),
(35, 8, 'image8c.jpg'),
(36, 8, 'image8d.jpg'),
(37, 9, 'image9a.jpg'),
(38, 9, 'image9b.jpg'),
(39, 9, 'image9c.jpg'),
(40, 9, 'image9d.jpg'),
(41, 10, 'image10a.jpg'),
(42, 10, 'image10b.jpg'),
(43, 10, 'image10c.jpg'),
(44, 10, 'image10d.jpg');

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
(3, 'Burple', 'This project focuses on the rebranding of a soda-centric website, aiming to elevate the soda experience through visually appealing design, interactive flavor profiles and customization options.', 'project3_thumb.png', 'The objective of this rebranding project is to transform the soda experience by revitalizing the soda-centric website. Through visually appealing design, interactive flavour profiles, and customization options, our goal is to elevate the user experience, capture audience engagement, and position the brand as a leading innovator in the soda industry.', 'Enhance user engagement, improve brand perception, expand audience reach, increase conversion rates, foster brand loyalty, and measure success. This involves implementing interactive features, refreshing the website design, attracting new visitors, encouraging desired actions, building long-term relationships with customers, and tracking key performance indicators. Through these objectives, the project aims to establish the website as a leading destination for soda enthusiasts, driving growth and success for the brand in the competitive beverage market.', 'Designers and developers are tasked with revitalizing the website\'s aesthetics and functionality, ensuring a seamless user experience. Marketing professionals are responsible for crafting compelling messaging and promotional strategies to drive traffic and engagement. Content creators curate captivating content, including flavour profiles and product descriptions, to entice and inform visitors. Quality assurance teams conduct rigorous testing to guarantee the website\'s performance and functionality. Project managers oversee timelines, budgets, and resource allocation to ensure project milestones are met efficiently. ', 'The rebranding process for this website follows a streamlined approach. It begins with thorough research to inform strategy, followed by creative production to develop visually appealing content. Implementation involves launching the revamped website, while ongoing monitoring and optimization ensure performance is maximized. Regular reporting provides insights into success, guiding refinements as needed to drive growth and success in the soda market.', 'In conclusion, the rebranding of the website has been a pivotal endeavour, marked by meticulous planning, creative execution, and diligent monitoring. Through the implementation of engaging features, visually appealing design, and strategic promotion. Looking ahead, we remain committed to refining our strategies, leveraging insights, and continuously innovating to maintain our momentum and drive sustained growth in the competitive beverage market.'),
(4, 'Sports Video', 'The project involves creating a sports video, specifically focused on American football. It serves as a promotional announcement for a game between two significant teams.', 'project4_thumb.png', 'The objective of the project is to produce a compelling and engaging video advertisement for an upcoming American football game between two prominent teams.', 'Creating a visually appealing and professionally produced video advertisement to build anticipation and interest in the upcoming game, engaging viewers and encouraging attendance or viewership.', 'The responsibilities for this project encompass conceptualizing and planning the video advertisement through scriptwriting and storyboarding, coordinating with teams and stakeholders for alignment with game objectives, securing filming resources, directing the filming process and post-production, promoting the video across channels, and analyzing metrics for effectiveness and future improvements.', 'The process for this project involves several key stages, starting with conceptualization and planning where the video advertisement\'s theme, message, and visual elements are defined. Next is the pre-production phase, including scriptwriting, storyboarding, casting, and securing locations and equipment. Filming then takes place, with careful direction and coordination to capture the desired footage. Post-production follows, involving video editing, sound design, adding graphics or effects, and finalizing the advertisement.', 'The project\'s expected results encompass the creation of a visually captivating and professionally crafted video advertisement, effectively communicating the excitement and anticipation surrounding the upcoming American football game. These efforts are aimed at fostering heightened engagement and interest among viewers, ultimately translating into increased attendance or viewership for the game itself. '),
(5, 'Reebok EasyTone', 'The advertising project for Reebok EasyTone runner shoes focuses on showcasing the innovative design and benefits of these shoes for fitness enthusiasts. The campaign highlights how EasyTone technology enhances muscle activation and toning during workouts, promoting a healthier and more effective exercise experience.', 'project5_thumb.png', 'The objective of the advertising project for Reebok EasyTone shoes was to challenge and overturn the stereotype that these shoes are exclusively designed for women. The aim was to shift the focus towards young fathers who are actively involved in parenting, balancing their responsibilities with demanding office jobs. By targeting this demographic, the campaign sought to showcase how EasyTone technology could benefit individuals leading busy lifestyles, emphasizing the shoes\' comfort, support, and fitness benefits for men in various roles.', 'The goals of the advertising project for Reebok EasyTone shoes included repositioning the brand to appeal to young fathers with active lifestyles and office jobs, challenging gender stereotypes associated with the product. Specific objectives included showcasing the comfort, support, and fitness benefits of EasyTone technology for men, increasing sales among this target demographic, and establishing Reebok as a brand that caters to diverse fitness needs and lifestyles. Additionally, the campaign aimed to generate positive brand perception and recognition among young fathers and the broader consumer market.', 'The responsibilities within this advertising project involved strategic planning to target young fathers with active lifestyles and office jobs, including market research to understand their preferences and challenges. Crafting the messaging and creative content to break the gender stigma associated with EasyTone shoes was crucial.', 'The process for the advertising project targeting young fathers with Reebok EasyTone shoes involved several key steps. It began with market research to understand the target demographic\'s preferences, lifestyles, and challenges. Based on these insights, a strategic plan was developed to break the gender stigma associated with EasyTone shoes and reposition the brand for men. This included creating compelling messaging and creative content that resonated with the target audience.\r\nNext, the campaign was executed across multiple channels, including digital platforms, social media, and traditional advertising mediums. This involved coordinating with various teams, such as marketing, creative, and sales, to ensure a cohesive and impactful campaign.', 'The results of the advertising project targeting young fathers with Reebok EasyTone shoes were significant. The campaign successfully broke the gender stigma associated with EasyTone shoes, leading to increased brand awareness and positive perception among men. Sales among the target demographic showed a notable uptick, indicating the effectiveness of the repositioning strategy.'),
(6, 'WBL - Work Based Learning', 'The project involves designing a website targeted at teachers and students who will be utilizing the Work-Based Learning methodology. The website will provide information, resources, and tools related to this educational approach. The goals of the project include facilitating access to learning materials, fostering interaction between teachers and students, and promoting best practices in Work-Based Learning to enhance the educational experience and professional development.', 'project6_thumb.png', 'The objective of the project is to create a user-friendly and informative website that serves as a central hub for teachers and students engaging in Work-Based Learning. This website aims to provide easy access to resources, facilitate communication and collaboration between educators and learners, and promote the effective implementation of Work-Based Learning methodologies to enhance the overall learning experience and professional growth of participants.', 'The project\'s goals encompass creating a comprehensive and accessible online platform for Work-Based Learning, aiming to centralize resources, facilitate collaboration, and promote professional development within the educational community. This includes providing easy access to information, fostering collaboration between educators and learners, offering professional development opportunities, encouraging engagement and feedback, and advocating for the adoption of Work-Based Learning practices. The overarching objective is to enhance the learning experience and promote lifelong skills development among students and educators through effective Work-Based Learning methodologies.', 'Within this project, responsibilities are divided among team members to ensure its success. The design team is tasked with creating an intuitive and visually appealing website layout that prioritizes user experience and accessibility. Content creators are responsible for developing informative and engaging resources, such as guides, case studies, and interactive learning materials, tailored to the needs of teachers and students engaged in Work-Based Learning. The technical team focuses on website development, ensuring functionality, security, and integration of collaborative features like forums or discussion boards.', 'The process of developing the website for Work-Based Learning involves several key stages. It begins with thorough research and analysis to understand the target audience\'s needs, preferences, and challenges related to this educational methodology. Based on this research, a detailed plan is formulated outlining the website\'s structure, features, and content strategy.\r\n\r\nNext, the design team creates wireframes and mockups to visualize the website\'s layout and user interface. Concurrently, the content creators work on developing high-quality resources and materials aligned with Work-Based Learning principles.\r\nThen, the technical team starts building the website, ensuring functionality, responsiveness across devices, and integration of collaborative tools like discussion forums or interactive modules. Testing is conducted throughout the development process to identify and fix any issues or bugs.', 'The results of the website development project for Work-Based Learning are reflected in its successful launch and positive impact on the educational community. The website provides a centralized hub for teachers and students, offering easy access to comprehensive resources, fostering collaboration and knowledge-sharing, and promoting best practices in Work-Based Learning. \r\nOverall, the project\'s results demonstrate a significant contribution to advancing Work-Based Learning practices and supporting the professional development of educators and students alike.'),
(7, 'Colombian Coffee', 'The project entails designing and developing a website dedicated to selling Colombian coffee. The website design will focus on highlighting the unique characteristics of each type of coffee, such as its geographical origin, flavor profile, cultivation methods, and processing techniques, among other aspects relevant to coffee enthusiasts. Additionally, e-commerce functionalities will be implemented to facilitate the purchase of products directly from the website. ', 'project7_thumb.png', 'The objective of the project is to create a visually appealing, user-friendly, and secure e-commerce website specifically tailored for selling Colombian coffee. The website aims to showcase the unique qualities and variety of Colombian coffee products, provide a seamless and convenient shopping experience for customers, and ultimately increase sales and brand recognition in the international market. Additionally, the website will strive to educate consumers about Colombian coffee culture, production methods, and sustainability practices, fostering a deeper appreciation and loyalty among coffee enthusiasts worldwide.', 'The project\'s goals encompass creating a visually captivating and informative e-commerce platform dedicated to showcasing the diverse and exceptional quality of Colombian coffee. The website aims to provide a seamless and engaging shopping experience for customers, highlighting the unique flavors, origins, and production methods of Colombian coffee products. By implementing robust e-commerce functionalities and promoting brand awareness through storytelling and interactive features, the project seeks to increase sales, expand the brand\'s reach to international markets, and foster a deeper appreciation for Colombian coffee\'s cultural and sustainability aspects among consumers worldwide.', 'Within the project, various responsibilities are assigned to ensure its successful execution. The design team is tasked with creating an aesthetically pleasing and user-friendly website interface that effectively showcases Colombian coffee products and enhances the overall shopping experience. The development team is responsible for implementing robust e-commerce functionalities, such as secure payment gateways, inventory management systems, and responsive design for mobile devices. \r\nThe content creation team is in charge of producing engaging and informative content about Colombian coffee, including product descriptions, storytelling elements, and educational materials about coffee origins and production methods. The marketing team is responsible for promoting the website, attracting traffic through digital marketing strategies, and engaging with customers through social media and email campaigns.', 'The process of developing the Colombian coffee e-commerce website involves several key stages. It begins with extensive research to understand the target audience, market trends, and competitors in the coffee industry. Based on this research, a comprehensive plan is created outlining the website\'s design, features, content strategy, and marketing approach.\r\nThe design team creates wireframes and mockups to visualize the website\'s layout, ensuring it is user-friendly, visually appealing, and optimized for conversions. Concurrently, the development team starts building the website, implementing e-commerce functionalities, secure payment gateways, and responsive design for various devices.', 'The results of the Colombian coffee e-commerce website project are evident in its successful launch and positive impact on the brand\'s sales and recognition. The website effectively showcases the diversity and quality of Colombian coffee products, attracting a growing customer base both locally and internationally.\r\nThrough strategic marketing efforts, the website has experienced increased traffic, conversion rates, and customer engagement, leading to higher sales volumes and revenue generation.'),
(8, 'Slick Devices', 'The anti-vaping advertising campaign aims to raise awareness and educate the public about the dangers and risks associated with vaping. It emphasizes the harmful effects of vaping on health, particularly among young people, and encourages individuals to avoid or quit vaping. The campaign may include messaging and visuals that highlight the negative impact of vaping on respiratory health, addiction risks, and the potential long-term consequences. It also promotes resources and support services for those looking to quit vaping and live a healthier lifestyle.', 'project8_thumb.png', 'The objective of the anti-vaping advertising campaign is to educate, inform, and ultimately reduce the prevalence of vaping, especially among youth and young adults. The campaign seeks to raise awareness about the health risks and dangers associated with vaping, including respiratory issues, addiction, and potential long-term health consequences. By delivering compelling and impactful messaging, the campaign aims to change perceptions, discourage vaping behavior, and encourage individuals to make informed decisions for their health and well-being.', 'The anti-vaping advertising campaign aims to educate the public, especially youth and young adults, about the harmful effects of vaping on health. It seeks to raise awareness about the risks of respiratory issues, addiction, and long-term consequences associated with vaping. The campaign\'s goals include changing perceptions, discouraging vaping behavior, and promoting healthier choices. Additionally, the campaign provides support and resources for individuals looking to quit vaping, ultimately striving to reduce vaping prevalence and improve public health outcomes.', 'My responsibilities within the anti-vaping advertising campaign encompass several key areas. As part of the creative team, my role involves developing persuasive messages and content that educate the public about the risks and dangers of vaping. This entails working closely with the research team to gain a deep understanding of vaping trends, health effects, and the demographic profile of the target audience.', 'The anti-vaping campaign process starts with thorough research on vaping trends and the target audience. This informs the development of persuasive messaging and content. The campaign is then planned and executed across multiple channels, including digital, social, and traditional media, with a focus on collaboration with healthcare professionals and educators. Continuous monitoring and evaluation ensure the campaign\'s effectiveness and allow for adjustments to optimize impact and achieve the goal of raising awareness and promoting healthier choices.\r\n', 'The results of the anti-vaping campaign were significant. Through targeted messaging and strategic dissemination across multiple channels, including digital, social media, and traditional media platforms, the campaign effectively raised awareness about the risks and dangers of vaping. This led to increased knowledge among the target audience, especially youth and young adults, about the health impacts of vaping and the importance of making informed decisions regarding tobacco and nicotine use.'),
(9, 'The Contact', 'The project focuses on creating a title sequence video for a series that delves into the information the Pentagon in the United States may have about extraterrestrial life. The title sequence aims to set the tone and theme of the series in a captivating and impactful manner. The video will include visual and graphic elements that suggest mystery, advanced technology, and the potential for encounters with beings from other planets. Additionally, appropriate sound effects and music will be used to generate suspense and excitement in the viewer, anticipating intrigue and exploration of topics related to extraterrestrial life and the possible disclosure of classified information by the Pentagon.', 'project9_thumb.png', 'The objective of the project is to create a compelling and engaging title sequence video that effectively introduces and sets the tone for a series exploring the Pentagon\'s potential knowledge of extraterrestrial life. The video aims to captivate viewers, generate curiosity, and establish a sense of mystery and intrigue surrounding the topic. Additionally, the title sequence seeks to create anticipation for the series by highlighting themes of advanced technology, government secrets, and the possibility of contact with alien civilizations. Ultimately, the objective is to draw the audience into the series and spark interest in the exploration of extraterrestrial phenomena and government involvement.', 'The goals of the project are to create a visually stunning and captivating title sequence video that effectively sets the tone and theme of the series about the Pentagon\'s potential knowledge of extraterrestrial life. This includes creating a sense of mystery, intrigue, and anticipation among viewers, sparking curiosity about the series\' exploration of government secrets and possible encounters with alien beings. Additionally, the title sequence aims to establish a strong brand identity for the series and generate excitement and interest among the target audience, ultimately driving viewership and engagement with the content.', 'My responsibilities within the project encompass several key areas. As part of the creative team, I am tasked with conceptualizing and designing the visual elements of the title sequence video. This includes creating graphics, animations, and visual effects that align with the theme of the series and effectively convey the sense of mystery and intrigue surrounding the Pentagon\'s knowledge of extraterrestrial life. Additionally, I collaborate with the audio and music team to ensure that sound effects and music complement the visuals and enhance the overall impact of the title sequence.', 'The process of creating the title sequence video involves initial concept development, asset creation, audio production, and post-production refinement. The creative team collaborates closely throughout these stages to ensure alignment with the visual theme and narrative of the series, meeting project deadlines, and delivering a captivating title sequence that engages the audience.', 'The results of the title sequence video creation were highly successful. The final product effectively captured the theme of the series about the Pentagon\'s knowledge of extraterrestrial life, creating a sense of mystery and intrigue among viewers. The visual elements, including graphics, animations, and visual effects, were well-received and contributed to the overall immersive experience.'),
(10, 'StarWars', 'The project entails creating an interactive web platform dedicated to exploring Star Wars characters. Users will be able to navigate through a wide range of iconic characters from the saga and access detailed information about each of them, including their backstory, abilities, and their involvement in Star Wars movies. Additionally, the platform will allow users to discover in which specific movies each character has played a significant role, providing an immersive and educational experience about the Star Wars cinematic universe.', 'project10_thumb.png', 'The objective of the project is to provide Star Wars fans with an engaging and informative online platform where they can explore and learn about the various characters from the franchise. The platform aims to offer comprehensive information about each character\'s background, abilities, and their roles in Star Wars movies. Additionally, the goal is to create an interactive experience that allows users to easily navigate through the characters and discover the movies in which they have appeared, enhancing their overall understanding and enjoyment of the Star Wars universe.', 'The goals of the project include creating a visually appealing and user-friendly website that showcases a diverse range of Star Wars characters. The website aims to provide detailed information about each character, including their backstory, abilities, and appearances in Star Wars movies. Additionally, the platform seeks to offer an interactive experience for users to explore and discover the connections between characters and movies, enhancing their overall engagement and enjoyment of the Star Wars franchise. The ultimate goal is to create a comprehensive and immersive resource for Star Wars fans to delve deeper into the rich lore and history of the series.', 'As part of the project, my responsibilities include designing and developing the user interface and user experience (UI/UX) of the website. This involves creating visually appealing layouts, interactive elements, and smooth navigation to ensure an engaging and seamless browsing experience for users exploring Star Wars characters. Additionally, I am responsible for integrating and organizing the database of characters, movies, and related information, ensuring accurate and up-to-date content on the website. Collaborating with the content team, I also contribute to the creation of informative and engaging content about each character\'s backstory, abilities, and movie appearances. Furthermore, I work closely with the development team to implement functionalities such as search filters, character profiles, and movie connections, ensuring the website\'s functionality aligns with the project\'s goals and meets user expectations.', 'The process of developing the Star Wars character exploration website involves several key stages. It begins with extensive research into the Star Wars universe, including characters, movies, and related information. This research guides the design and development of the website\'s structure, content organization, and user interface.\r\nNext, wireframes and mockups are created to visualize the layout and functionality of the website, ensuring a user-friendly and intuitive experience. Concurrently, the database is designed and populated with accurate information about Star Wars characters, their backgrounds, abilities, and movie appearances.\r\nThe development phase involves coding the website, implementing interactive features, search functionality, and ensuring responsiveness across different devices. ', 'The results of the Star Wars character exploration website were highly successful. The website provided a comprehensive and engaging platform for Star Wars fans to explore and learn about their favorite characters. Users were able to access detailed information about each character\'s backstory, abilities, and movie appearances, enhancing their overall understanding and enjoyment of the Star Wars universe. The interactive features, smooth navigation, and visually appealing design contributed to a positive user experience, keeping users engaged and coming back for more. Additionally, the website received positive feedback from users, with many expressing appreciation for the depth of information and the ease of use. Overall, the results reflected a successful project that met its goals of creating an immersive and informative resource for Star Wars enthusiasts.');

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
(7, 'Sarah', 'sarah@gmail.com', 'Hola'),
(8, 'Diego', 'diego@gmail.com', 'Hello'),
(9, 'Zoe', 'Zoe@gmail.com', 'Hello'),
(10, 's', 's@f.com', 's'),
(11, 'a', 'g@mil.com', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table usuarios
--

CREATE TABLE usuarios (
  id int(10) UNSIGNED NOT NULL,
  username varchar(30) NOT NULL,
  password varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table usuarios
--

INSERT INTO usuarios (id, username, password) VALUES
(1, 'tfaaguilar', '123456');

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
-- Indexes for table usuarios
--
ALTER TABLE usuarios
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
-- AUTO_INCREMENT for table usuarios
--
ALTER TABLE usuarios
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
