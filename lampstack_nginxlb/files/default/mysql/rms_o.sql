-- MySQL dump 10.13  Distrib 5.5.21, for Win32 (x86)
--
-- Host: localhost    Database: manjul
-- ------------------------------------------------------
-- Server version	5.5.21

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
-- Table structure for table `project`
--

DROP TABLE IF EXISTS project;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE project (
  pid int(11) NOT NULL,
  pname varchar(20) DEFAULT NULL,
  PRIMARY KEY (pid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES project WRITE;
/*!40000 ALTER TABLE project DISABLE KEYS */;
/*!40000 ALTER TABLE project ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS resource;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE resource (
  empId int(10) unsigned NOT NULL AUTO_INCREMENT,
  fName varchar(45) DEFAULT NULL,
  lName varchar(45) DEFAULT NULL,
  role varchar(45) DEFAULT NULL,
  sDate varchar(45) DEFAULT NULL,
  eDate varchar(45) DEFAULT NULL,
  pseudoRole varchar(45) DEFAULT NULL,
  projectName varchar(45) DEFAULT NULL,
  status varchar(45) DEFAULT NULL,
  teamName varchar(45) DEFAULT NULL,
  PRIMARY KEY (empId)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES resource WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO resource VALUES (33,'MANJUL','SRIVASTAVA','DEVELOPER','12/12/12','12/12/12','DESIGN','ALM','ACTIVE','ALM DEVELOPMENT'),(42,'AKSHUN','SINGH','DESIGNER','12/12/12','12/03/14','TESTER','NOT ASSIGNED','INACTIVE','NOT ASSIGNED'),(45,'ANIL','TUMHRI','DESIGNER','12/11/11','12/12/14','DEVELOPER','NOT ASSIGNED','INACTIVE','NOT ASSIGNED'),(46,'ANIRUDH','SINGH','DEVELOPER','12/12/12','12/12/14','DESIGN','XCELSHORE','ACTIVE','XCELSHORE DEVELOPMENT'),(47,'AKSHUN','SINGH','QUALITY ANALYST','19/11/12','20/12/12','DESIGNER','XCELSHORE','ACTIVE','XCELSHORE DEVELOPMENT'),(49,'ANIL','TOMARI','DESIGNER','12/12/12','12/03/13','TESTER','SYMANTEC','INACTIVE','SYMANTEC TESTING'),(50,'ANUJ','GARG','ARCHITECT','12/10/12','12/12/14','TEST','DIGITAL RIVER','ACTIVE','DIGITAL RIVER DEVELOPMENT'),(51,'MAYANK','NIGAM','ARCHITECT','12/12/12','01/03/13','TESTER','MICROSOFT','ACTIVE','MICROSOFT DEVELOPMENT'),(52,'MANJUL','KUMAR','DESIGNER','12/12/12','12/12/14','TESTER','DIGITAL RIVER','ACTIVE','DIGITAL RIVER DEVELOPMENT'),(53,'ANIL','KUMAR','DEVELOPER','21/11/13','21/12/13','TESTER','QUICK HEAL','ACTIVE','QUICK HEAL TESTING'),(54,'AKSHUN','SINGH','DEVELOPER','10/10/12','21/11/13','TESTER','SYMANTEC','ACTIVE','SYMANTEC DEVELOPMENT'),(55,'SUGANDHA','RAO','DESIGNER','11/11/11','12/12/15','TESTER','APPLE','ACTIVE','APPLE TESTING'),(56,'SAMEER','SHEKH','QUALITY ANALYST','12/12/12','12/12/14','TESTER','DIGITAL RIVER','INACTIVE','DIGITAL RIVER DEVELOPMENT'),(57,'ANUGYA','SINGH','DESIGNER','11/11/11','12/12/12','TESTER','GOOGLE','ACTIVE','GOOGLE TESTING'),(58,'GJ','FGFG','DEVELOPER','12/10/13','12/12/14','SAFSAF','GOOGLE','ACTIVE','GOOGLE TESTING'),(60,'TRTU','TRTU','ARCHITECT','12/10/13','12/12/13','GJGJ','GOOGLE','ACTIVE','GOOGLE UI DESIGN'),(61,'MANJUL','SRIVASTAVA','DEVELOPER','12/12/12','12/12/14','DESIGN','NOT ASSIGNED','ACTIVE','NOT ASSIGNED'),(62,'VIJETA','ANGEER','DESIGNER','12/12/12','12/12/14','DEVELOPER','NOT ASSIGNED','ACTIVE','NOT ASSIGNED'),(63,'SHITAL','KORE','DEVELOPER','12/12/12','12/12/14','DESIGN','NOT ASSIGNED','ACTIVE','NOT ASSIGNED');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE role (
  rid int(11) NOT NULL,
  rname varchar(20) DEFAULT NULL,
  PRIMARY KEY (rid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES role WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS team;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE team (
  teamId int(10) unsigned NOT NULL AUTO_INCREMENT,
  teamName varchar(45) DEFAULT NULL,
  teamProject varchar(45) DEFAULT NULL,
  PRIMARY KEY (teamId)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES team WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO team VALUES (1,'ALM DEVELOPMENT','ALM'),(2,'ALM UI DESIGN','ALM'),(3,'ALM TESTING','ALM'),(4,'XCELSHORE DEVELOPMENT','XCELSHORE'),(5,'XCELSHORE TESTING','XCELSHORE'),(6,'DEV','DEV'),(7,'GOOGLE DEVELOPMENT','GOOGLE'),(8,'GOOGLE TESTING','GOOGLE'),(9,'GOOGLE UI DESIGN','GOOGLE'),(10,'XCELSHORE UI DESIGN','XCELSHORE'),(11,'SYMANTEC TESTING','SYMANTEC'),(12,'SYMANTEC DEVELOPMENT','SYMANTEC'),(13,'SYMANTEC UI DESIGN','SYMANTEC'),(14,'DIGITAL RIVER DEVELOPMENT','DIGITAL RIVER'),(15,'DIGITAL RIVER DEVELOPMENT','DIGITAL RIVER'),(16,'QUICK HEAL TESTING','QUICK HEAL'),(17,'GOOGLEUI','GOOGLE'),(18,'MICROSOFT DEVELOPMENT','MICROSOFT'),(19,'APPLE TESTING','APPLE');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-16 11:25:42
