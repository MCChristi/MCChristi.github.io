CREATE DATABASE  IF NOT EXISTS `linkedin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `linkedin`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: linkedin
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `CompanyID` int unsigned NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(100) DEFAULT NULL,
  `IndustryName` varchar(200) DEFAULT NULL,
  `Website` varchar(200) DEFAULT NULL,
  `HeadquarterLocation` varchar(200) DEFAULT NULL,
  `About` text,
  `CreateDate` timestamp NULL DEFAULT NULL,
  `UpdateDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`CompanyID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Acme Corporation','Technology','www.acmecorptech.com','New York','A leading provider of innovative technology solutions.','2023-02-15 16:32:45','2024-07-28 22:18:36'),(2,'Zenith Industries','Manufacturing','www.zenithind.com','Chicago','A global manufacturer of high-quality products.','2022-09-04 03:47:51','2024-07-28 22:18:36'),(3,'Quantum Solutions','Consulting','www.quantumsolutions.com','San Francisco','A strategic consulting firm specializing in data analytics.','2021-11-17 11:54:23','2024-07-28 22:18:36'),(4,'Apex Enterprises','Retail','www.apexenterprises.com','Houston','A national retail chain with a focus on customer satisfaction.','2020-04-29 18:31:08','2024-07-28 22:18:36'),(5,'Nova Technologies','Software','www.novatech.com','Boston','A leading software development company.','2019-08-23 00:26:40','2024-07-28 22:18:36'),(6,'Stellar Dynamics','Aerospace','www.stellardynamics.com','Los Angeles','A global aerospace company specializing in advanced technologies.','2018-12-16 07:13:57','2024-07-28 22:18:36'),(7,'Galaxy Innovations','Biotechnology','www.galaxyinnovations.com','Seattle','A biotechnology company focused on developing innovative solutions.','2017-05-30 19:02:12','2024-07-28 22:18:36'),(8,'Nebula Systems','Healthcare','www.nebulasystems.com','Denver','A healthcare technology company providing innovative solutions.','2016-01-19 13:49:34','2024-07-28 22:18:36'),(9,'Orion Ventures','Venture Capital','www.orionventures.com','Atlanta','A venture capital firm investing in promising startups.','2015-06-08 21:38:27','2024-07-28 22:18:36'),(10,'Comet Solutions','Consulting','www.cometsolutions.com','New York','A management consulting firm specializing in strategic planning.','2023-05-12 08:56:21','2024-07-28 22:18:36');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employmentstatusid`
--

DROP TABLE IF EXISTS `employmentstatusid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employmentstatusid` (
  `StatusID` int unsigned NOT NULL AUTO_INCREMENT,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employmentstatusid`
--

LOCK TABLES `employmentstatusid` WRITE;
/*!40000 ALTER TABLE `employmentstatusid` DISABLE KEYS */;
/*!40000 ALTER TABLE `employmentstatusid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiance`
--

DROP TABLE IF EXISTS `experiance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiance` (
  `ExperianceID` int unsigned NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `CompanyID` int DEFAULT NULL,
  `JobTilte` varchar(100) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Description` text,
  `CreateDate` timestamp(6) NULL DEFAULT NULL,
  `UpdateDate` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`ExperianceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiance`
--

LOCK TABLES `experiance` WRITE;
/*!40000 ALTER TABLE `experiance` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industry` (
  `IndustryID` int unsigned NOT NULL AUTO_INCREMENT,
  `Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IndustryID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` VALUES (1,'Marketing'),(2,'Advertising'),(3,'Digital Marketing'),(4,'Technology'),(5,'ECommerce'),(6,'Technology'),(7,'Software Development'),(8,'Start Ups'),(9,'Content Creation'),(10,'Publishing'),(11,'Journalism'),(12,'Public Relations'),(13,'Sales'),(14,'Business Development'),(15,'Customer Service'),(16,'B2B Sales'),(17,'Software Development'),(18,'IT'),(19,'Web Development'),(20,'Data Science'),(21,'Business Intelligence'),(22,'Analytics'),(23,'Finance'),(24,'Consulting'),(25,'Design'),(26,'User Experience'),(27,'Product Design'),(28,'Project Management'),(29,'Business Operations'),(30,'Human Resources'),(31,'Recruiting'),(32,'Talent Acquisition'),(33,'HR Consulting'),(34,'Accounting'),(35,'Banking'),(36,'Data Analytics');
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `JobsID` int unsigned NOT NULL AUTO_INCREMENT,
  `SkillID` int DEFAULT NULL,
  `CompanyID` int DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `JobDescription` varchar(500) DEFAULT NULL,
  `Requirement` varchar(500) DEFAULT NULL,
  `PostedByUserID` int DEFAULT NULL,
  `CreateDate` timestamp(6) NULL DEFAULT NULL,
  `UpdateDate` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`JobsID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,NULL,NULL,'Marketing Strategist','New York','Seeking a creative and data-driven marketing strategist to join our growing team. Responsibilities include developing and executing marketing campaigns, analyzing market trends, and driving customer acquisition.','Proven experience in digital marketing, strong analytical skills, and excellent communication abilities.',NULL,'2024-09-15 22:18:36.000000','2024-10-05 22:15:39.000000'),(2,NULL,NULL,'Software Engineer','Remote','We\'re looking for a talented software engineer to join our team and help develop innovative software solutions. Responsibilities include designing, coding, and testing software applications.','Strong programming skills in [relevant programming languages], experience with [relevant technologies], and a passion for creating cutting-edge software.',NULL,'2024-09-15 22:18:36.000000','2024-10-05 22:15:39.000000'),(3,NULL,NULL,'UX/UI Designer','Boston','We\'re seeking a talented UX/UI designer to create intuitive and engaging user interfaces. Responsibilities include conducting user research, wireframing, prototyping, and designing visually appealing interfaces.','Strong design skills, experience with UX/UI design tools, and a passion for creating exceptional user experiences.',NULL,'2024-09-15 22:18:36.000000','2024-10-05 22:15:39.000000'),(4,NULL,NULL,'Financial Analyst','Eau Claire','We\'re looking for a financial analyst to join our team and provide valuable insights into our financial performance. Responsibilities include analyzing financial data, preparing reports, and supporting strategic decision-making.','Strong analytical skills, proficiency in financial modeling, and a solid understanding of accounting principles.',NULL,'2024-09-15 22:18:36.000000','2024-10-05 22:15:39.000000'),(5,NULL,NULL,'Marketing Manager','Chicago','We\'re seeking a marketing manager to lead our marketing efforts and drive brand awareness. Responsibilities include developing and executing marketing strategies, managing marketing campaigns, and measuring ROI.','Proven experience in marketing management, strong leadership skills, and a passion for driving business growth.',NULL,'2024-09-15 22:18:36.000000','2024-10-05 22:15:39.000000');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `SchoolID` int unsigned NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `SchoolName` varchar(200) DEFAULT NULL,
  `SkillsID` int DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `PhoneNumber` tinyint DEFAULT NULL,
  `Website` varchar(100) DEFAULT NULL,
  `DegreeProgram` varchar(100) DEFAULT NULL,
  `FieldOfStudy` varchar(200) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Description` text,
  `CreateDate` datetime(6) DEFAULT NULL,
  `UpdateDate` timestamp(6) NULL DEFAULT NULL,
  `IndustryName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SchoolID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `SkillsID` int unsigned NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `CreateDate` timestamp NULL DEFAULT NULL,
  `UpdateDate` timestamp NULL DEFAULT NULL,
  `SkillName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`SkillsID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,NULL,'2023-02-15 16:32:45','2024-07-28 22:18:36','Digital Marketing'),(2,NULL,'2022-09-04 03:47:51','2021-11-17 11:54:23','Data Analysis'),(3,NULL,'2020-04-29 18:31:08','2019-08-23 00:26:40','SEO'),(4,NULL,'2018-12-16 07:13:57','2018-09-09 15:13:35','SEM'),(5,NULL,'2016-01-19 13:49:34','2015-06-08 21:38:27','Social Media Marketing'),(6,NULL,'2023-05-12 08:56:57','2024-01-07 17:43:14','Content Marketing'),(7,NULL,'2022-10-26 23:29:07','2021-03-11 12:37:58','Product Management'),(8,NULL,'2020-08-20 20:25:42','2019-02-06 03:11:33','Agile Methodology'),(9,NULL,'2018-07-13 13:52:06','2017-01-27 23:38:29','UX/UI Design'),(10,NULL,'2016-06-16 07:24:17','2015-11-03 16:10:04','Market Research'),(11,NULL,'2023-09-21 04:51:12','2024-03-08 20:27:38','Content Writing'),(12,NULL,'2022-12-01 13:16:50','2021-04-25 17:03:41','Copywriting'),(13,NULL,'2020-09-13 05:48:27','2019-03-04 23:35:19','Storytelling'),(14,NULL,'2018-08-17 16:22:02','2017-02-03 11:09:36','Social Media'),(15,NULL,'2016-07-15 00:47:24','2015-12-07 19:34:10','Brand Development'),(16,NULL,'2023-07-18 21:42:08','2024-02-02 15:33:47','Sales'),(17,NULL,'2022-11-24 03:15:32','2021-05-10 23:01:16','Customer Relationship Management'),(18,NULL,'2020-10-05 17:39:03','2019-04-07 11:26:50','Negotiation'),(19,NULL,'2018-09-09 15:13:35','2017-03-16 19:51:21','Cold Calling'),(20,NULL,'2016-08-25 13:38:07','2015-01-12 23:25:54','Sales Presentations'),(21,NULL,'2023-06-14 01:37:51','2024-01-26 19:24:29','Prospecting'),(22,NULL,'2022-10-19 10:11:17','2021-04-08 13:49:04','Software Development'),(23,NULL,'2020-09-30 21:36:52','2019-03-27 16:23:38','Full-Stack Development'),(24,NULL,'2018-08-31 20:10:25','2017-03-09 15:48:11','Programming'),(25,NULL,'2016-08-03 18:35:58','2015-01-28 22:23:45','Python'),(26,NULL,'2023-08-03 00:21:37','2024-02-16 18:10:24','JavaScript'),(27,NULL,'2022-11-16 10:58:10','2021-05-07 22:36:56','Java'),(28,NULL,'2020-10-02 16:23:42','2019-04-02 10:11:29','Business Intelligence'),(29,NULL,'2018-09-07 14:47:16','2017-03-15 19:34:03','SQL'),(30,NULL,'2016-08-22 13:25:50','2015-01-27 22:13:37','Data Visualization'),(31,NULL,'2023-07-05 18:19:26','2024-02-01 13:08:13','Data Mining'),(32,NULL,'2022-11-22 02:06:00','2021-05-05 20:43:47','Statistical Analysis'),(33,NULL,'2020-10-01 14:31:34','2019-04-01 08:19:21','User Research'),(34,NULL,'2018-09-06 13:06:08','2017-03-14 18:42:55','Wireframing'),(35,NULL,'2016-08-19 12:24:42','2015-01-26 21:12:30','Prototyping'),(36,NULL,'2023-06-08 23:15:19','2024-01-25 17:02:07','Graphic Design'),(37,NULL,'2023-06-08 23:15:19','2024-01-25 17:02:07','User Experience Testing'),(38,NULL,'2022-10-18 09:49:54','2021-04-07 22:37:41','Project Management'),(39,NULL,'2020-09-29 16:24:28','2019-03-26 20:11:15','Project Planning'),(40,NULL,'2018-08-30 14:48:02','2023-02-15 16:32:45','Team Leadership'),(41,NULL,'2024-07-28 22:18:36','2022-09-04 03:47:51','Risk Management'),(42,NULL,'2021-11-17 11:54:23','2020-04-29 18:31:08','Human Resources'),(43,NULL,'2019-08-23 00:26:40','2018-12-16 07:13:57','Talent Acquisition'),(44,NULL,'2017-05-30 19:02:12','2016-01-19 13:49:34','Recruiting'),(45,NULL,'2015-06-08 21:38:27','2023-05-12 08:56:21','Employee Relations'),(46,NULL,'2024-01-07 17:43:14','2022-10-26 23:29:07','Onboarding'),(47,NULL,'2021-03-11 12:37:58','2020-08-20 20:25:42','Performance Management'),(48,NULL,'2019-02-06 03:11:33','2018-07-13 13:52:06','Financial Analysis'),(49,NULL,'2017-01-27 23:38:29','2016-06-16 07:24:17','Data Analysis'),(50,NULL,'2015-11-03 16:10:04','2023-09-21 04:51:12','Financial Modeling'),(51,NULL,'2024-03-08 20:27:38','2022-12-01 13:16:55','Financial Reporting'),(52,NULL,'2021-04-25 17:03:41','2020-09-13 05:48:27','Forecasting, Budgeting');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `HeadLine` varchar(300) DEFAULT NULL,
  `JobTitle` varchar(100) DEFAULT NULL,
  `EmploymentStatusID` int DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Summary` text,
  `Industry` varchar(100) DEFAULT NULL,
  `SkillsID` int DEFAULT NULL,
  `CreateDate` timestamp NULL DEFAULT NULL,
  `UpdatedDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mary','Serina','imperdiet@aol.net','sita1sd3f51we6','Experienced Marketing Strategist | Data-Driven Growth','Marketing Strategist',NULL,'Austin','Results-oriented marketing professional with a passion for data-driven growth. Skilled in Marketing, Advertising, Digital Marketing, Technology, and E-commerce. Seeking new opportunities to leverage my expertise.','Finance, Accounting, Banking, Consulting, Business Intelligence, Data Analytics',NULL,'2023-01-01 06:32:45','2024-09-15 22:18:36'),(2,'Morgan','Halee','libero.proin@icloud.net','estadF5we12a3f','Innovative Product Manager | Tech Enthusiast','Product Manager',NULL,'Seattle','Dedicated product manager with a focus on user experience and innovation. Skilled in Technology, Software Development, Product Development, Start-ups, and E-commerce. Seeking new challenges in the tech industry.','Technology, Software Development, Product Development, Start-ups, E-commerce',NULL,'2023-10-05 05:00:00','2023-10-05 05:00:00'),(3,'Xena','Karen','consectetuer.adipiscing@hotmail.net','acdf51gz98eth13zdf','Creative Content Writer | Storytelling Expert','Content Strategist',NULL,'Chicago','Passionate content writer with a knack for storytelling. Skilled in Content Writing, Copywriting, Storytelling, SEO, Social Media, and Brand Development. Seeking to contribute to a dynamic team.','Marketing, Advertising, Content Creation, Publishing, Journalism, Public Relations',NULL,'2021-12-25 19:31:08','2024-04-06 00:26:40'),(4,'Cairo','Nayda','ac.facilisis.facilisis@google.net','osuerwe5f1e','Results-Driven Sales Professional | Relationship Builder','Sales Manager',NULL,'Denver','Dedicated sales professional with a proven track record of success. Skilled in Sales, Customer Relationship Management (CRM), Negotiation, Cold Calling, Sales Presentations, and Prospecting. Seeking new opportunities to grow professionally.','Sales, Business Development, Customer Service, Marketing, Technology, B2B Sales',NULL,'2020-09-01 06:13:57','2024-02-10 20:02:12'),(5,'Wallace','Emi','elit.dictum@hotmail.net','posuer0w6r5gawre','Experienced Software Engineer | Full-Stack Developer','Product Owner',NULL,'San Francisco','Passionate software engineer with a strong foundation in Software Development and Full-Stack Development. Skilled in Programming, Python, JavaScript, Java, Database Management, and API Development. Seeking to contribute to innovative projects.','Technology, Software Development, IT, Web Development, E-commerce, Start-ups',NULL,'2019-06-15 12:49:34','2024-01-25 22:38:27'),(6,'Ava','Solomon','congue.a@yahoo.edu','ullamcoraw0r35g1per','Results-Driven Data Analyst | Business Intelligence','Financial Analyst',NULL,'New York','Dedicated data analyst with a proven ability to extract insights from data. Skilled in Data Analysis, Business Intelligence, SQL, Data Visualization, Data Mining, and Statistical Analysis. Seeking new challenges in data-driven decision-making.','Technology, Data Science, Business Intelligence, Analytics, Finance, Consulting',NULL,'2018-03-20 08:56:21','2023-11-15 17:43:14'),(7,'Mufutau','Malik','egestas.duis.ac@google.edu','velsgd216et1ahte','Innovative Designer | UX/UI Expert','UX/UI Designer',NULL,'Boston','Creative and adaptable designer with a passion for user experience. Skilled in UX/UI Design, User Research, Wireframing, Prototyping, Graphic Design, and User Experience Testing. Seeking to contribute to innovative projects.','Technology, Design, User Experience, Product Design, Marketing, E-commerce',NULL,'2017-12-02 00:29:07','2023-08-20 11:37:58'),(8,'Delilah','Hamish','odio.aliquam@outlook.couk','fringW5R21illa','Dedicated Project Manager | Agile Methodology','Project Manager',NULL,'Los Angeles','Results-oriented project manager with a proven track record of success. Skilled in Project Management, Agile Methodology (e.g., Scrum, Kanban), Project Planning, Team Leadership, Risk Management. Seeking new opportunities to lead complex projects.','Technology, Project Management, Software Development, Consulting, IT, Business Operations',NULL,'2016-09-10 20:25:42','2023-05-16 02:11:33'),(9,'Benjamin','Aileen','dui.quis@aol.com','adg03aw54ta1bzb','Experienced HR Professional | Talent Acquisition','HR Specialist',NULL,'Houston','Passionate HR professional with a strong focus on talent acquisition. Skilled in Human Resources, Talent Acquisition, Recruiting, Employee Relations, Onboarding, and Performance Management. Seeking to contribute to a dynamic team.','Human Resources, Recruiting, Talent Acquisition, HR Consulting, Technology, Business',NULL,'2015-06-25 13:52:06','2023-03-25 22:38:29'),(10,'Sandra','Francis','lorem@aol.edu','inzfv51z6f81vs6f5','Results-Driven Financial Analyst | Data-Driven Insights','Marketing Manager',NULL,'Atlanta','Dedicated financial analyst with a proven ability to analyze complex data. Skilled in Financial Analysis, Data Analysis, Financial Modeling, Financial Reporting, Forecasting, and Budgeting. Seeking new challenges in financial analysis.','Finance, Accounting, Banking, Consulting, Business Intelligence, Data Analytics',NULL,'2014-03-10 07:24:17','2023-01-15 16:10:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'linkedin'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-05 19:29:29
