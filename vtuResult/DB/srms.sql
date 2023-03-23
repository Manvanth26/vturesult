-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: srms
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','f925916e2754e5e03f75dd58a5733251','2017-05-13 05:48:49');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclasses`
--

DROP TABLE IF EXISTS `tblclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblclasses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(80) DEFAULT NULL,
  `Section` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclasses`
--

LOCK TABLES `tblclasses` WRITE;
/*!40000 ALTER TABLE `tblclasses` DISABLE KEYS */;
INSERT INTO `tblclasses` VALUES (1,'CSE','1st Semester','2022-01-04 17:36:30',NULL),(2,'CSE','2nd Semester','2022-01-04 18:10:10',NULL),(3,'CSE','3rd Semester','2022-01-04 18:10:14',NULL),(4,'CSE','4th Semester','2022-01-04 18:10:18',NULL),(5,'CSE','5th Semester','2022-01-04 18:10:32',NULL),(6,'CSE','6th Semester','2022-01-04 18:10:35',NULL),(7,'CSE','7th Semester','2022-01-04 18:10:39',NULL),(8,'CSE','8th Semester','2022-01-04 18:10:42',NULL),(9,'ISE','1st Semester','2022-01-04 18:10:56',NULL),(10,'ISE','2nd Semester','2022-01-04 18:10:59',NULL),(11,'ISE','3rd Semester','2022-01-04 18:11:02',NULL),(12,'ISE','4th Semester','2022-01-04 18:11:06',NULL),(13,'ISE','5th Semester','2022-01-04 18:11:59',NULL),(14,'ISE','6th Semester','2022-01-04 18:12:03',NULL),(15,'ISE','7th Semester','2022-01-04 18:12:06',NULL),(16,'ISE','8th Semester','2022-01-04 18:12:09',NULL);
/*!40000 ALTER TABLE `tblclasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblresult`
--

DROP TABLE IF EXISTS `tblresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblresult` (
  `id` int NOT NULL AUTO_INCREMENT,
  `StudentId` int DEFAULT NULL,
  `ClassId` int DEFAULT NULL,
  `SubjectId` int DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `internalmarks` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblresult`
--

LOCK TABLES `tblresult` WRITE;
/*!40000 ALTER TABLE `tblresult` DISABLE KEYS */;
INSERT INTO `tblresult` VALUES (22,1,9,1,50,'2022-01-04 19:37:57',NULL,35),(23,1,9,2,55,'2022-01-04 19:37:57',NULL,35),(24,1,9,6,40,'2022-01-04 19:37:57',NULL,40),(25,1,9,5,60,'2022-01-04 19:37:57',NULL,40),(26,1,9,3,60,'2022-01-04 19:37:57',NULL,38),(27,1,9,4,60,'2022-01-04 19:37:57',NULL,40),(28,1,10,9,50,'2022-01-05 10:05:34',NULL,40),(29,1,10,11,50,'2022-01-05 10:05:34',NULL,40),(30,1,10,10,50,'2022-01-05 10:05:34',NULL,40),(31,1,10,8,50,'2022-01-05 10:05:34',NULL,40),(32,1,10,7,50,'2022-01-05 10:05:34',NULL,40);
/*!40000 ALTER TABLE `tblresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstaff`
--

DROP TABLE IF EXISTS `tblstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstaff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `staffname` varchar(500) DEFAULT NULL,
  `staffpassword` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaff`
--

LOCK TABLES `tblstaff` WRITE;
/*!40000 ALTER TABLE `tblstaff` DISABLE KEYS */;
INSERT INTO `tblstaff` VALUES (1,'Anoop','123'),(2,'Smitha','4565');
/*!40000 ALTER TABLE `tblstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstudents`
--

DROP TABLE IF EXISTS `tblstudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstudents` (
  `StudentId` int NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstudents`
--

LOCK TABLES `tblstudents` WRITE;
/*!40000 ALTER TABLE `tblstudents` DISABLE KEYS */;
INSERT INTO `tblstudents` VALUES (1,'KAVYA B S','4GW19IS026','kavyabs@gmail.com','Female','2002-05-04',11,'2022-01-04 18:43:45',NULL,1);
/*!40000 ALTER TABLE `tblstudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsubjectcombination`
--

DROP TABLE IF EXISTS `tblsubjectcombination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsubjectcombination` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ClassId` int DEFAULT NULL,
  `SubjectId` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubjectcombination`
--

LOCK TABLES `tblsubjectcombination` WRITE;
/*!40000 ALTER TABLE `tblsubjectcombination` DISABLE KEYS */;
INSERT INTO `tblsubjectcombination` VALUES (1,9,1,1,'2022-01-04 18:28:00',NULL),(2,9,2,1,'2022-01-04 18:28:14',NULL),(3,9,3,1,'2022-01-04 18:28:19',NULL),(4,9,4,1,'2022-01-04 18:28:24',NULL),(5,9,5,1,'2022-01-04 18:28:40',NULL),(6,9,6,1,'2022-01-04 18:28:44','2022-01-04 19:11:06'),(7,10,7,1,'2022-01-05 10:02:13',NULL),(8,10,8,1,'2022-01-05 10:02:18',NULL),(9,10,9,1,'2022-01-05 10:02:22',NULL),(10,10,10,1,'2022-01-05 10:02:54',NULL),(11,10,11,1,'2022-01-05 10:03:00',NULL);
/*!40000 ALTER TABLE `tblsubjectcombination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsubjects`
--

DROP TABLE IF EXISTS `tblsubjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsubjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `creditscore` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubjects`
--

LOCK TABLES `tblsubjects` WRITE;
/*!40000 ALTER TABLE `tblsubjects` DISABLE KEYS */;
INSERT INTO `tblsubjects` VALUES (1,'C Programing','IS-001','2022-01-04 18:22:33',NULL,'3'),(2,'C++ Programming ','IS-002','2022-01-04 18:22:47',NULL,'3'),(3,'Java','IS-003','2022-01-04 18:22:57',NULL,'4'),(4,'M1','IS-004','2022-01-04 18:23:56',NULL,'4'),(5,'Indian Constitution','IS-005','2022-01-04 18:24:12',NULL,'0'),(6,'Chemistry','IS-006','2022-01-04 18:24:25',NULL,'2'),(7,'Unix','IS-007','2022-01-05 10:01:07',NULL,'5'),(8,'Networking','IS-008','2022-01-05 10:01:18',NULL,'4'),(9,'ADA','IS-009','2022-01-05 10:01:29',NULL,'5'),(10,'Microprocessor','IS-010','2022-01-05 10:01:48',NULL,'5'),(11,'DBMS','IS-011','2022-01-05 10:02:00',NULL,'5');
/*!40000 ALTER TABLE `tblsubjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-09 21:36:24
