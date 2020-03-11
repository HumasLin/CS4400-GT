-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: Team35
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admin` (
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `FK3` FOREIGN KEY (`username`) REFERENCES `employee` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
INSERT INTO `Admin` VALUES ('cool_class4400');
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Company` (
  `comName` varchar(50) NOT NULL,
  PRIMARY KEY (`comName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES ('4400 Theater Company'),('AI Theater Company'),('Awesome Theater Company'),('EZ Theater Company');
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `FK2` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('calcultron'),('calcultron2'),('calcwizard'),('clarinetbeast'),('cool_class4400'),('DNAhelix'),('does2Much'),('eeqmcsquare'),('entropyRox'),('fullMetal'),('georgep'),('ilikemoney$$'),('imready'),('isthisthekrustykrab'),('notFullMetal'),('programerAAL'),('RitzLover28'),('thePiGuy3.14'),('theScienceGuy');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerCreditCard`
--

DROP TABLE IF EXISTS `CustomerCreditCard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerCreditCard` (
  `creditCardNum` char(16) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`creditCardNum`),
  UNIQUE KEY `UNIQUE` (`creditCardNum`),
  KEY `FK6_idx` (`username`),
  CONSTRAINT `FK6` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerCreditCard`
--

LOCK TABLES `CustomerCreditCard` WRITE;
/*!40000 ALTER TABLE `CustomerCreditCard` DISABLE KEYS */;
INSERT INTO `CustomerCreditCard` VALUES ('1111111111000000','calcultron'),('1111111100000000','calcultron2'),('1111111110000000','calcultron2'),('1111111111100000','calcwizard'),('2222222222000000','cool_class4400'),('2220000000000000','DNAhelix'),('2222222200000000','does2Much'),('2222222222222200','eeqmcsquare'),('2222222222200000','entropyRox'),('2222222222220000','entropyRox'),('1100000000000000','fullMetal'),('1111111111110000','georgep'),('1111111111111000','georgep'),('1111111111111100','georgep'),('1111111111111110','georgep'),('1111111111111111','georgep'),('2222222222222220','ilikemoney$$'),('2222222222222222','ilikemoney$$'),('9000000000000000','ilikemoney$$'),('1111110000000000','imready'),('1110000000000000','isthisthekrustykrab'),('1111000000000000','isthisthekrustykrab'),('1111100000000000','isthisthekrustykrab'),('1000000000000000','notFullMetal'),('2222222000000000','programerAAL'),('3333333333333300','RitzLover28'),('2222222220000000','thePiGuy3.14'),('2222222222222000','theScienceGuy');
/*!40000 ALTER TABLE `CustomerCreditCard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerViewMovie`
--

DROP TABLE IF EXISTS `CustomerViewMovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerViewMovie` (
  `creditCardNum` char(16) NOT NULL,
  `thName` varchar(50) NOT NULL,
  `comName` varchar(50) NOT NULL,
  `movName` varchar(50) NOT NULL,
  `movReleaseDate` date NOT NULL,
  `movPlayDate` date NOT NULL,
  PRIMARY KEY (`creditCardNum`,`movPlayDate`,`movReleaseDate`,`movName`,`thName`,`comName`),
  KEY `FK14_idx` (`thName`,`comName`,`movName`,`movPlayDate`,`movReleaseDate`),
  CONSTRAINT `FK13` FOREIGN KEY (`creditCardNum`) REFERENCES `customercreditcard` (`creditCardNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK14` FOREIGN KEY (`thName`, `comName`, `movName`, `movPlayDate`, `movReleaseDate`) REFERENCES `movieplay` (`thName`, `comName`, `movName`, `movPlayDate`, `movReleaseDate`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerViewMovie`
--

LOCK TABLES `CustomerViewMovie` WRITE;
/*!40000 ALTER TABLE `CustomerViewMovie` DISABLE KEYS */;
INSERT INTO `CustomerViewMovie` VALUES ('1111111111111111','Cinema Star','4400 Theater Company','How to Train Your Dragon','2010-03-21','2010-04-02'),('1111111111111111','Main Movies','EZ Theater Company','How to Train Your Dragon','2010-03-21','2010-03-22'),('1111111111111111','Main Movies','EZ Theater Company','How to Train Your Dragon','2010-03-21','2010-03-23'),('1111111111111100','Star Movies','EZ Theater Company','How to Train Your Dragon','2010-03-21','2010-03-25');
/*!40000 ALTER TABLE `CustomerViewMovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `FK1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES ('calcultron'),('cool_class4400'),('entropyRox'),('fatherAI'),('georgep'),('ghcghc'),('imbatman'),('manager1'),('manager2'),('manager3'),('manager4'),('radioactivePoRa');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Manager`
--

DROP TABLE IF EXISTS `Manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Manager` (
  `username` varchar(50) NOT NULL,
  `comName` varchar(50) NOT NULL,
  `manStreet` varchar(30) NOT NULL,
  `manCity` varchar(50) NOT NULL,
  `manState` varchar(3) NOT NULL,
  `manZipcode` char(5) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `UNIQUE` (`username`,`manStreet`,`manCity`,`manState`,`manZipcode`),
  KEY `FK5_idx` (`comName`),
  CONSTRAINT `FK4` FOREIGN KEY (`username`) REFERENCES `employee` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK5` FOREIGN KEY (`comName`) REFERENCES `company` (`comName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manager`
--

LOCK TABLES `Manager` WRITE;
/*!40000 ALTER TABLE `Manager` DISABLE KEYS */;
INSERT INTO `Manager` VALUES ('calcultron','EZ Theater Company','123 Peachtree St','Atlanta','GA','30308'),('entropyRox','4400 Theater Company','200 Cool Place','San Francisco','CA','94016'),('fatherAI','EZ Theater Company','456 Main St','New York','NY','10001'),('georgep','4400 Theater Company','10 Pearl Dr','Seattle','WA','98105'),('ghcghc','AI Theater Company','100 Pi St','Pallet Town','KS','31415'),('imbatman','Awesome Theater Company','800 Color Dr','Austin','TX','78653'),('manager1','4400 Theater Company','123 Ferst Drive','Atlanta','GA','30332'),('manager2','AI Theater Company','456 Ferst Drive','Atlanta','GA','30332'),('manager3','4400 Theater Company','789 Ferst Drive','Atlanta','GA','30332'),('manager4','4400 Theater Company','000 Ferst Drive','Atlanta','GA','30332'),('radioactivePoRa','4400 Theater Company','100 Blu St','Sunnyvale','CA','94088');
/*!40000 ALTER TABLE `Manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movie` (
  `movName` varchar(50) NOT NULL,
  `movReleaseDate` date NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`movName`,`movReleaseDate`),
  UNIQUE KEY `UNIQUE` (`movName`,`movReleaseDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES ('4400 The Movie','2019-08-12',130),('Avengers: Endgame','2019-04-26',181),('Calculus Returns: A ML Story','2019-09-19',314),('George P Burdell\'s Life Story','1927-08-12',100),('Georgia Tech The Movie','1985-08-13',100),('How to Train Your Dragon','2010-03-21',98),('Spaceballs','1987-06-24',96),('Spider-Man: Into the Spider-Verse','2018-12-01',117),('The First Pokemon Movie','1998-07-19',75),('The King\'s Speech','2010-11-26',119);
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MoviePlay`
--

DROP TABLE IF EXISTS `MoviePlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MoviePlay` (
  `thName` varchar(50) NOT NULL,
  `comName` varchar(50) NOT NULL,
  `movName` varchar(50) NOT NULL,
  `movReleaseDate` date NOT NULL,
  `movPlayDate` date NOT NULL,
  PRIMARY KEY (`thName`,`comName`,`movName`,`movPlayDate`,`movReleaseDate`),
  KEY `FK10_idx` (`movName`,`movReleaseDate`),
  CONSTRAINT `FK10` FOREIGN KEY (`movName`, `movReleaseDate`) REFERENCES `movie` (`movName`, `movReleaseDate`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK9` FOREIGN KEY (`thName`, `comName`) REFERENCES `theater` (`thName`, `comName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MoviePlay`
--

LOCK TABLES `MoviePlay` WRITE;
/*!40000 ALTER TABLE `MoviePlay` DISABLE KEYS */;
INSERT INTO `MoviePlay` VALUES ('ABC Theater','Awesome Theater Company','4400 The Movie','2019-08-12','2019-10-12'),('Cinema Star','4400 Theater Company','4400 The Movie','2019-08-12','2019-09-12'),('Star Movies','EZ Theater Company','4400 The Movie','2019-08-12','2019-08-12'),('ML Movies','AI Theater Company','Calculus Returns: A ML Story','2019-09-19','2019-10-10'),('ML Movies','AI Theater Company','Calculus Returns: A ML Story','2019-09-19','2019-12-30'),('Cinema Star','4400 Theater Company','George P Burdell\'s Life Story','1927-08-12','2010-05-20'),('Main Movies','EZ Theater Company','George P Burdell\'s Life Story','1927-08-12','2019-07-14'),('Main Movies','EZ Theater Company','George P Burdell\'s Life Story','1927-08-12','2019-10-22'),('ABC Theater','Awesome Theater Company','Georgia Tech The Movie','1985-08-13','1985-08-13'),('Cinema Star','4400 Theater Company','Georgia Tech The Movie','1985-08-13','2019-09-30'),('Cinema Star','4400 Theater Company','How to Train Your Dragon','2010-03-21','2010-04-02'),('Main Movies','EZ Theater Company','How to Train Your Dragon','2010-03-21','2010-03-22'),('Main Movies','EZ Theater Company','How to Train Your Dragon','2010-03-21','2010-03-23'),('Star Movies','EZ Theater Company','How to Train Your Dragon','2010-03-21','2010-03-25'),('Cinema Star','4400 Theater Company','Spaceballs','1987-06-24','2000-02-02'),('Main Movies','EZ Theater Company','Spaceballs','1987-06-24','1999-06-24'),('ML Movies','AI Theater Company','Spaceballs','1987-06-24','2010-04-02'),('ML Movies','AI Theater Company','Spaceballs','1987-06-24','2023-01-23'),('ML Movies','AI Theater Company','Spider-Man: Into the Spider-Verse','2018-12-01','2019-09-30'),('ABC Theater','Awesome Theater Company','The First Pokemon Movie','1998-07-19','2018-07-19'),('Cinema Star','4400 Theater Company','The King\'s Speech','2010-11-26','2019-12-20'),('Main Movies','EZ Theater Company','The King\'s Speech','2010-11-26','2019-12-20');
/*!40000 ALTER TABLE `MoviePlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Theater`
--

DROP TABLE IF EXISTS `Theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Theater` (
  `thName` varchar(50) NOT NULL,
  `comName` varchar(50) NOT NULL,
  `capacity` int(11) NOT NULL,
  `thStreet` varchar(30) NOT NULL,
  `thCity` varchar(50) NOT NULL,
  `thState` varchar(3) NOT NULL,
  `thZipcode` char(5) NOT NULL,
  `manUsername` varchar(50) NOT NULL,
  PRIMARY KEY (`thName`,`comName`),
  UNIQUE KEY `UNIQUE` (`thName`,`comName`),
  KEY `FK7_idx` (`comName`),
  KEY `FK8_idx` (`manUsername`),
  KEY `FK_idx` (`thName`,`comName`),
  CONSTRAINT `FK7` FOREIGN KEY (`comName`) REFERENCES `company` (`comName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK8` FOREIGN KEY (`manUsername`) REFERENCES `manager` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Theater`
--

LOCK TABLES `Theater` WRITE;
/*!40000 ALTER TABLE `Theater` DISABLE KEYS */;
INSERT INTO `Theater` VALUES ('ABC Theater','Awesome Theater Company',5,'880 Color Dr','Austin','TX','73301','imbatman'),('Cinema Star','4400 Theater Company',4,'100 Cool Place','San Francisco','CA','94016','entropyRox'),('Jonathan\'s Movies','4400 Theater Company',2,'67 Pearl Dr','Seattle','WA','98101','georgep'),('Main Movies','EZ Theater Company',3,'123 Main St','New York','NY','10001','fatherAI'),('ML Movies','AI Theater Company',3,'314 Pi St','Pallet Town','KS','31415','ghcghc'),('Star Movies','4400 Theater Company',5,'4400 Rocks Ave','Boulder','CA','80301','radioactivePoRa'),('Star Movies','EZ Theater Company',2,'745 GT St','Atlanta','GA','30332','calcultron');
/*!40000 ALTER TABLE `Theater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `username` varchar(50) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `password` char(32) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('calcultron','Approved','77c9749b451ab8c713c48037ddfbb2c4','Dwight','Schrute'),('calcultron2','Approved','8792b8cf71d27dc96173b2ac79b96e0d','Jim','Halpert'),('calcwizard','Approved','0d777e9e30b918e9034ab610712c90cf','Issac','Newton'),('clarinetbeast','Declined','c8c605999f3d8352d7bb792cf3fdb25b','Squidward','Tentacles'),('cool_class4400','Approved','77c9749b451ab8c713c48037ddfbb2c4','A. TA','Washere'),('DNAhelix','Approved','ca94efe2a58c27168edf3d35102dbb6d','Rosalind','Franklin'),('does2Much','Approved','00cedcf91beffa9ee69f6cfe23a4602d','Carl','Gauss'),('eeqmcsquare','Approved','7c5858f7fcf63ec268f42565be3abb95','Albert','Einstein'),('entropyRox','Approved','c8c605999f3d8352d7bb792cf3fdb25b','Claude','Shannon'),('fatherAI','Approved','0d777e9e30b918e9034ab610712c90cf','Alan','Turing'),('fullMetal','Approved','d009d70ae4164e8989725e828db8c7c2','Edward','Elric'),('gdanger','Declined','3665a76e271ada5a75368b99f774e404','Gary','Danger'),('georgep','Approved','bbb8aae57c104cda40c93843ad5e6db8','George P.','Burdell'),('ghcghc','Approved','9f0863dd5f0256b0f586a7b523f8cfe8','Grace','Hopper'),('ilikemoney$$','Approved','7c5858f7fcf63ec268f42565be3abb95','Eugene','Krabs'),('imbatman','Approved','9f0863dd5f0256b0f586a7b523f8cfe8','Bruce','Wayne'),('imready','Approved','ca94efe2a58c27168edf3d35102dbb6d','Spongebob','Squarepants'),('isthisthekrustykrab','Approved','134fb0bf3bdd54ee9098f4cbc4351b9a','Patrick','Star'),('manager1','Approved','e58cce4fab03d2aea056398750dee16b','Manager','One'),('manager2','Approved','ba9485f02fc98cdbd2edadb0aa8f6390','Manager','Two'),('manager3','Approved','6e4fb18b49aa3219bef65195dac7be8c','Three','Three'),('manager4','Approved','d61dfee83aa2a6f9e32f268d60e789f5','Four','Four'),('notFullMetal','Approved','d009d70ae4164e8989725e828db8c7c2','Alphonse','Elric'),('programerAAL','Approved','ba9485f02fc98cdbd2edadb0aa8f6390','Ada','Lovelace'),('radioactivePoRa','Approved','e5d4b739db1226088177e6f8b70c3a6f','Marie','Curie'),('RitzLover28','Approved','8792b8cf71d27dc96173b2ac79b96e0d','Abby','Normal'),('smith_j','Pending','77c9749b451ab8c713c48037ddfbb2c4','John','Smith'),('texasStarKarate','Declined','7c5858f7fcf63ec268f42565be3abb95','Sandy','Cheeks'),('thePiGuy3.14','Approved','e11170b8cbd2d74102651cb967fa28e5','Archimedes','Syracuse'),('theScienceGuy','Approved','c8c605999f3d8352d7bb792cf3fdb25b','Bill','Nye');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserVisitHistory`
--

DROP TABLE IF EXISTS `UserVisitHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserVisitHistory` (
  `thName` varchar(50) NOT NULL,
  `thStreet` varchar(30) DEFAULT NULL,
  `thCity` varchar(50) DEFAULT NULL,
  `thState` varchar(3) DEFAULT NULL,
  `thZipcode` char(5) DEFAULT NULL,
  `comName` varchar(50) NOT NULL,
  `visitDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserVisitHistory`
--

LOCK TABLES `UserVisitHistory` WRITE;
/*!40000 ALTER TABLE `UserVisitHistory` DISABLE KEYS */;
INSERT INTO `UserVisitHistory` VALUES ('Main Movies','123 Main St','New York','NY','10001','EZ Theater Company','2010-03-22');
/*!40000 ALTER TABLE `UserVisitHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserVisitTheater`
--

DROP TABLE IF EXISTS `UserVisitTheater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserVisitTheater` (
  `visitID` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `thName` varchar(50) NOT NULL,
  `comName` varchar(50) NOT NULL,
  `visitDate` date DEFAULT NULL,
  PRIMARY KEY (`visitID`),
  KEY `FK11_idx` (`username`),
  KEY `FK12_idx` (`thName`,`comName`),
  CONSTRAINT `FK11` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK12` FOREIGN KEY (`thName`, `comName`) REFERENCES `theater` (`thName`, `comName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserVisitTheater`
--

LOCK TABLES `UserVisitTheater` WRITE;
/*!40000 ALTER TABLE `UserVisitTheater` DISABLE KEYS */;
INSERT INTO `UserVisitTheater` VALUES ('1','georgep','Main Movies','EZ Theater Company','2010-03-22'),('2','calcwizard','Main Movies','EZ Theater Company','2010-03-22'),('3','calcwizard','Star Movies','EZ Theater Company','2010-03-25'),('4','imready','Star Movies','EZ Theater Company','2010-03-25'),('5','calcwizard','ML Movies','AI Theater Company','2010-03-20');
/*!40000 ALTER TABLE `UserVisitTheater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Team35'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-29 15:10:49
