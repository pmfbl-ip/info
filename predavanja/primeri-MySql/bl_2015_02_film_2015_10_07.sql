CREATE DATABASE  IF NOT EXISTS `bl_2015_02_film` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `bl_2015_02_film`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bl_2015_02_film
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `FilmId` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ZanrId` int(11) NOT NULL,
  `Trajanje` int(11) DEFAULT '90' COMMENT 'Trajanje u minutama',
  `Godina` smallint(6) DEFAULT NULL COMMENT 'Godina proizvodnje',
  `Drzava` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Ocjena` float DEFAULT NULL,
  `Glumci` varchar(2550) COLLATE utf8_unicode_ci NOT NULL DEFAULT '''Ne zna se ko glumi''',
  `Opis` text COLLATE utf8_unicode_ci,
  `Reziser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Scenarista` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FilmId`),
  KEY `ZanrId` (`ZanrId`),
  CONSTRAINT `film_ibfk_1` FOREIGN KEY (`ZanrId`) REFERENCES `zanr` (`ZanrId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zanr`
--

DROP TABLE IF EXISTS `zanr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zanr` (
  `ZanrId` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ZanrId`),
  KEY `Naziv` (`Naziv`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'bl_2015_02_film'
--

--
-- Dumping routines for database 'bl_2015_02_film'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-06 23:14:15