CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `project`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: mynbadproject.cwwcal2lhufi.us-east-1.rds.amazonaws.com    Database: project
-- ------------------------------------------------------
-- Server version	5.6.27-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `productlist`
--

DROP TABLE IF EXISTS `productlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlist` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(80) DEFAULT NULL,
  `ProductCode` varchar(50) DEFAULT NULL,
  `ProductStatus` varchar(50) DEFAULT NULL,
  `Price` varchar(100) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `ImageUrl` varchar(1000) DEFAULT NULL,
  `Rating` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlist`
--

LOCK TABLES `productlist` WRITE;
/*!40000 ALTER TABLE `productlist` DISABLE KEYS */;
INSERT INTO `productlist` VALUES (1,'THE FAULT IN OUR STARS-JOHN GREEN','001','Available','6','SALMAN RUSHDIE','images/fault.jpg','3.2'),(2,'OLIVER TWIST-CHARLES DICKENS','002','Available','9','CHARLES DICKENS','images/oliver.jpg','3.1'),(3,'THE DA VINCI CODE-DAN BROWN','003','Available','8','DAN BROWN','images/vinci.jpg','3.5'),(4,'GREAT EXPECTATIONS-CHARLES DICKENS','004','Available','10','CHARLES DICKENS','images/great.jpg','3.3'),(5,'EMMA-JANE AUSTEN','005','Available','11','JANE AUSTEN','images/emma.jpg','3.5'),(6,'A THOUSAND SPLENDID SUNS-KHALED HOSSEINI','006','Available','6','SALMAN RUSHDIE','images/splendid.jpg','3.2'),(7,'TO KILL A MOCKINGBIRD-HARPER LEE','007','Available','9','CHARLES DICKENS','images/mockingbird.jpg','3.1'),(8,'KITE RUNNER-KHALED HOSSEINI','008','Available','8','DAN BROWN','images/kiterunner.jpg','3.5'),(9,'AND THE MOUNTAINS ECHOED-KHALED HOSSEINI','009','Available','10','CHARLES DICKENS','images/mountains.jpg','3.3'),(14,'def','Default Code','Available','2','Default description','images/new.jpg',NULL),(15,'yuga','Default Code','Available','7','Default description','images/new.jpg',NULL);
/*!40000 ALTER TABLE `productlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resetpass`
--

DROP TABLE IF EXISTS `resetpass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resetpass` (
  `email` varchar(100) DEFAULT NULL,
  `expiration` datetime DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resetpass`
--

LOCK TABLES `resetpass` WRITE;
/*!40000 ALTER TABLE `resetpass` DISABLE KEYS */;
INSERT INTO `resetpass` VALUES ('kdishashetty2992@gmail.com','2017-04-28 00:00:00','9bdb37ba-1268-4833-aeb7-d3ef2e7dd476'),('dshetty1@uncc.edu','2017-04-28 00:00:00','b84001e2-bf60-4728-b73b-757f55198f71'),('kdishashetty2992@gmail.com','2017-04-28 00:00:00','6bbae5fb-f821-4d88-815f-c7056f941938'),('kdishashetty2992@gmail.com','2017-04-28 00:00:00','9bdb37ba-1268-4833-aeb7-d3ef2e7dd476'),('dshetty1@uncc.edu','2017-04-28 00:00:00','b84001e2-bf60-4728-b73b-757f55198f71'),('kdishashetty2992@gmail.com','2017-04-28 00:00:00','6bbae5fb-f821-4d88-815f-c7056f941938'),('kdishashetty2992@gmail.com','2017-05-01 00:00:00','79160756-6c3c-4581-a9d4-534e44a55454');
/*!40000 ALTER TABLE `resetpass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempuser`
--

DROP TABLE IF EXISTS `tempuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempuser` (
  `UserName` varchar(40) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `Token` varchar(50) DEFAULT NULL,
  `Salt` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempuser`
--

LOCK TABLES `tempuser` WRITE;
/*!40000 ALTER TABLE `tempuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Username` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(255) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `Salt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('ankitsaigal10@gmail.com','80883af5afc0c6e7906663c270354de6488d3ffa7194b4000a6d96e63bbd8a92','Customer','Ankit','6N9R375dY7lnxHF0ULc/jLqytrdTTPDMtonKg9prh58='),('dshetty1@uncc.edu','3a6585a9c44fcf42b4008e093c31e134282fd544802c97a8183413fcea37b47b','Admin','disha shetty','KQA0Z6g286Dp2FICsI77eSN0QuOJNLZoAe7HXY4Zj2Q='),('kdishashetty2992@gmail.com','281c0b4dbf41a960d98f341a1ea9a347b87506302a89f45603d931797e212160','Admin','disha','Bpn+ZPd90A/UES7NzjokMQX0K1n8VjfuSEjpXvfRj4o='),('ykulkarn@uncc.edu','af2f0b5a394cd80509a3bb686c24c808758cb20bda9ac3fb57bafeec8a424868','Customer','Yuga','ZXGi1D9odZ9q5yTd0+3lUCuzket5nAj+HbhYEikIjzA=');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-01 13:06:07
