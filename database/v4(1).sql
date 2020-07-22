-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: ttdb
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aas`
--

DROP TABLE IF EXISTS `aas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aas` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aas`
--

LOCK TABLES `aas` WRITE;
/*!40000 ALTER TABLE `aas` DISABLE KEYS */;
INSERT INTO `aas` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','y3d1','FREE','FREE','FREE','FREE'),('2SUB','FREE','DNET','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','y3d1','y3d1'),('3SUB','FREE','FREE','FREE','FREE','DNET','DNET'),('4CL','y3d1','FREE','FREE','FREE','FREE','FREE'),('4SUB','DNET','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','y3d1L','y3d1L'),('5SUB','FREE','FREE','FREE','FREE','DNET','DNET'),('6CL','FREE','FREE','FREE','FREE','y3d1L','y3d1L'),('6SUB','FREE','FREE','FREE','FREE','DNET','DNET');
/*!40000 ALTER TABLE `aas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abp`
--

DROP TABLE IF EXISTS `abp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `abp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abp`
--

LOCK TABLES `abp` WRITE;
/*!40000 ALTER TABLE `abp` DISABLE KEYS */;
INSERT INTO `abp` VALUES ('1CL','y2d2','FREE','FREE','FREE','FREE','y2d3L'),('1SUB','OOPC','FREE','FREE','FREE','FREE','OOPC'),('2CL','FREE','FREE','FREE','FREE','y2d2','y2d3L'),('2SUB','FREE','FREE','FREE','FREE','OOPC','OOPC'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','y2d1L','FREE','y2d2','y2d1L','y2d1L','FREE'),('5SUB','OOPC','FREE','OOPC','OOPC','OOPC','FREE'),('6CL','y2d1L','FREE','FREE','y2d1L','y2d1L','y2d2'),('6SUB','OOPC','FREE','FREE','OOPC','OOPC','OOPC');
/*!40000 ALTER TABLE `abp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agd`
--

DROP TABLE IF EXISTS `agd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `agd` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agd`
--

LOCK TABLES `agd` WRITE;
/*!40000 ALTER TABLE `agd` DISABLE KEYS */;
INSERT INTO `agd` VALUES ('1CL','FREE','y3d1','y2d2','FREE','y4d1','y4d1'),('1SUB','FREE','TOC','COA','FREE','AI','AI'),('2CL','y2d2','FREE','FREE','y4d1','FREE','FREE'),('2SUB','COA','FREE','FREE','AI','FREE','FREE'),('3CL','y3d1','FREE','y4d1','FREE','FREE','FREE'),('3SUB','TOC','FREE','AI','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','y3d1'),('4SUB','FREE','FREE','FREE','FREE','FREE','TOC'),('5CL','FREE','y4d1L','y4d1L','FREE','FREE','FREE'),('5SUB','FREE','AI','AI','FREE','FREE','FREE'),('6CL','FREE','y4d1L','y4d1L','y2d2','y2d2','FREE'),('6SUB','FREE','AI','AI','COA','COA','FREE');
/*!40000 ALTER TABLE `agd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ajp`
--

DROP TABLE IF EXISTS `ajp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ajp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajp`
--

LOCK TABLES `ajp` WRITE;
/*!40000 ALTER TABLE `ajp` DISABLE KEYS */;
INSERT INTO `ajp` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','y1d2L','y1d2L','FREE','y1d2L','y1d2L','y1d2L'),('3SUB','EEW','EEW','FREE','EEW','EEW','EEW'),('4CL','y1d2L','y1d2L','FREE','y1d2L','y1d2L','y1d2L'),('4SUB','EEW','EEW','FREE','EEW','EEW','EEW'),('5CL','y1d1L','FREE','FREE','y1d1L','FREE','y1d1L'),('5SUB','EEW','FREE','FREE','EEW','FREE','EEW'),('6CL','y1d1L','FREE','FREE','y1d1L','FREE','y1d1L'),('6SUB','EEW','FREE','FREE','EEW','FREE','EEW');
/*!40000 ALTER TABLE `ajp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amp`
--

DROP TABLE IF EXISTS `amp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `amp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amp`
--

LOCK TABLES `amp` WRITE;
/*!40000 ALTER TABLE `amp` DISABLE KEYS */;
INSERT INTO `amp` VALUES ('1CL','FREE','y3d3L','FREE','FREE','FREE','FREE'),('1SUB','FREE','DE-4','FREE','FREE','FREE','FREE'),('2CL','FREE','y3d3L','FREE','FREE','FREE','FREE'),('2SUB','FREE','DE-4','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','y3d2L','FREE','y3d2L','y3d2L'),('3SUB','FREE','FREE','WT','FREE','WT','WT'),('4CL','FREE','FREE','y3d2L','FREE','y3d2L','y3d2L'),('4SUB','FREE','FREE','WT','FREE','WT','WT'),('5CL','FREE','FREE','y3d2','y3d2','y3d2','y3d1L'),('5SUB','FREE','FREE','WT','WT','WT','WT'),('6CL','FREE','FREE','FREE','FREE','FREE','y3d1L'),('6SUB','FREE','FREE','FREE','FREE','FREE','WT');
/*!40000 ALTER TABLE `amp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ank`
--

DROP TABLE IF EXISTS `ank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ank` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ank`
--

LOCK TABLES `ank` WRITE;
/*!40000 ALTER TABLE `ank` DISABLE KEYS */;
INSERT INTO `ank` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `ank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ans`
--

DROP TABLE IF EXISTS `ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ans` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ans`
--

LOCK TABLES `ans` WRITE;
/*!40000 ALTER TABLE `ans` DISABLE KEYS */;
INSERT INTO `ans` VALUES ('1CL','y2d3L','FREE','y2d3L','y2d3L','FREE','FREE'),('1SUB','OOPC','FREE','OOPC','OOPC','FREE','FREE'),('2CL','y2d3L','FREE','y2d3L','y2d3L','FREE','FREE'),('2SUB','OOPC','FREE','OOPC','OOPC','FREE','FREE'),('3CL','y2d2L','y2d2L','y2d2L','FREE','y2d2L','y2d2L'),('3SUB','OOPC','OOPC','OOPC','FREE','OOPC','OOPC'),('4CL','y2d2L','y2d2L','y2d2L','FREE','y2d2L','y2d2L'),('4SUB','OOPC','OOPC','OOPC','FREE','OOPC','OOPC'),('5CL','FREE','FREE','y2d1L','FREE','FREE','FREE'),('5SUB','FREE','FREE','OOPC','FREE','FREE','FREE'),('6CL','FREE','FREE','y2d1L','FREE','FREE','FREE'),('6SUB','FREE','FREE','OOPC','FREE','FREE','FREE');
/*!40000 ALTER TABLE `ans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app`
--

DROP TABLE IF EXISTS `app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app`
--

LOCK TABLES `app` WRITE;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` VALUES ('1CL','FREE','FREE','FREE','FREE','y1d1','FREE'),('1SUB','FREE','FREE','FREE','FREE','EGD','FREE'),('2CL','FREE','FREE','FREE','y1d1','FREE','FREE'),('2SUB','FREE','FREE','FREE','EGD','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arv`
--

DROP TABLE IF EXISTS `arv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `arv` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arv`
--

LOCK TABLES `arv` WRITE;
/*!40000 ALTER TABLE `arv` DISABLE KEYS */;
INSERT INTO `arv` VALUES ('1CL','y2d1','y2d1','y3d3L','y3d3L','FREE','FREE'),('1SUB','OOPC','OOPC','SE','WT','FREE','FREE'),('2CL','FREE','FREE','y3d3L','y3d3L','FREE','FREE'),('2SUB','FREE','FREE','SE','WT','FREE','FREE'),('3CL','FREE','y3d2L','FREE','y2d1','FREE','y3d2L'),('3SUB','FREE','WT','FREE','OOPC','FREE','SE'),('4CL','FREE','y3d2L','y2d1','FREE','FREE','y3d2L'),('4SUB','FREE','WT','OOPC','FREE','FREE','SE'),('5CL','y3d1L','FREE','y3d1L','FREE','FREE','y4d1L'),('5SUB','AJAVA','FREE','WT','FREE','FREE','AI'),('6CL','y3d1L','FREE','y3d1L','FREE','FREE','y4d1L'),('6SUB','AJAVA','FREE','WT','FREE','FREE','AI');
/*!40000 ALTER TABLE `arv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axr`
--

DROP TABLE IF EXISTS `axr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `axr` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axr`
--

LOCK TABLES `axr` WRITE;
/*!40000 ALTER TABLE `axr` DISABLE KEYS */;
INSERT INTO `axr` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','y2d1','FREE','y1d1','FREE','y2d1','y1d1'),('2SUB','NSM','FREE','MATH2','FREE','NSM','MATH2'),('3CL','FREE','FREE','FREE','FREE','FREE','y2d1'),('3SUB','FREE','FREE','FREE','FREE','FREE','NSM'),('4CL','y1d1','y1d1','FREE','y1d1','FREE','FREE'),('4SUB','MATH2','MATH2','FREE','MATH2','FREE','FREE'),('5CL','y2d1L','FREE','y2d1L','y2d1L','FREE','y2d1L'),('5SUB','NSM','FREE','NSM','NSM','FREE','NSM'),('6CL','y2d1L','FREE','y2d1L','y2d1L','FREE','y2d1L'),('6SUB','NSM','FREE','NSM','NSM','FREE','NSM');
/*!40000 ALTER TABLE `axr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bjp`
--

DROP TABLE IF EXISTS `bjp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bjp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bjp`
--

LOCK TABLES `bjp` WRITE;
/*!40000 ALTER TABLE `bjp` DISABLE KEYS */;
INSERT INTO `bjp` VALUES ('1CL','FREE','y1d3L','y1d3L','FREE','y1d3L','y1d3L'),('1SUB','FREE','BE','BE','FREE','BE','BE'),('2CL','FREE','y1d3L','y1d3L','FREE','y1d3L','y1d3L'),('2SUB','FREE','BE','BE','FREE','BE','BE'),('3CL','FREE','FREE','y1d3','FREE','FREE','y1d3'),('3SUB','FREE','FREE','BE','FREE','FREE','BE'),('4CL','y1d3','FREE','FREE','FREE','FREE','FREE'),('4SUB','BE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `bjp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `den`
--

DROP TABLE IF EXISTS `den`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `den` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `den`
--

LOCK TABLES `den` WRITE;
/*!40000 ALTER TABLE `den` DISABLE KEYS */;
INSERT INTO `den` VALUES ('1CL','FREE','FREE','y3d1','y3d1','y2d3L','y3d1'),('1SUB','FREE','FREE','SE','SE','DE-2','SE'),('2CL','y3d1','FREE','FREE','FREE','y2d3L','FREE'),('2SUB','SE','FREE','FREE','FREE','DE-2','FREE'),('3CL','FREE','FREE','y2d2L','y2d2L','FREE','FREE'),('3SUB','FREE','FREE','DE-2','DE-2','FREE','FREE'),('4CL','FREE','FREE','y2d2L','y2d2L','FREE','FREE'),('4SUB','FREE','FREE','DE-2','DE-2','FREE','FREE'),('5CL','y3d1L','y3d1L','FREE','y3d1L','FREE','y3d1L'),('5SUB','SE','SE','FREE','SE','FREE','SE'),('6CL','y3d1L','y3d1L','FREE','y3d1L','FREE','y3d1L'),('6SUB','SE','SE','FREE','SE','FREE','SE');
/*!40000 ALTER TABLE `den` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dms`
--

DROP TABLE IF EXISTS `dms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dms` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dms`
--

LOCK TABLES `dms` WRITE;
/*!40000 ALTER TABLE `dms` DISABLE KEYS */;
INSERT INTO `dms` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','y1d3','y1d3','FREE','FREE','FREE'),('4SUB','FREE','ES','ES','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','y1d3','FREE','FREE','y1d3','FREE','FREE'),('6SUB','ES','FREE','FREE','ES','FREE','FREE');
/*!40000 ALTER TABLE `dms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dvk`
--

DROP TABLE IF EXISTS `dvk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dvk` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvk`
--

LOCK TABLES `dvk` WRITE;
/*!40000 ALTER TABLE `dvk` DISABLE KEYS */;
INSERT INTO `dvk` VALUES ('1CL','FREE','FREE','FREE','y1d1','FREE','y1d1'),('1SUB','FREE','FREE','FREE','ES','FREE','ES'),('2CL','FREE','FREE','FREE','FREE','y1d1','FREE'),('2SUB','FREE','FREE','FREE','FREE','ES','FREE'),('3CL','FREE','y1d1','FREE','FREE','FREE','FREE'),('3SUB','FREE','ES','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `dvk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dvt`
--

DROP TABLE IF EXISTS `dvt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dvt` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvt`
--

LOCK TABLES `dvt` WRITE;
/*!40000 ALTER TABLE `dvt` DISABLE KEYS */;
INSERT INTO `dvt` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `dvt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_details`
--

DROP TABLE IF EXISTS `faculty_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `faculty_details` (
  `FID` int(11) DEFAULT NULL,
  `fabbr` varchar(5) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `sub1` varchar(5) DEFAULT NULL,
  `sub2` varchar(5) DEFAULT NULL,
  `sub3` varchar(5) DEFAULT NULL,
  `sub4` varchar(5) DEFAULT NULL,
  `sub5` varchar(5) DEFAULT NULL,
  `sub6` varchar(5) DEFAULT NULL,
  `sub7` varchar(5) DEFAULT NULL,
  `sub8` varchar(5) DEFAULT NULL,
  `load` int(11) DEFAULT NULL,
  PRIMARY KEY (`fabbr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_details`
--

LOCK TABLES `faculty_details` WRITE;
/*!40000 ALTER TABLE `faculty_details` DISABLE KEYS */;
INSERT INTO `faculty_details` VALUES (19,'AAS','APOORVA A SHAH','','','DBMS','','','DNET','','',18),(27,'ABP','ASHISH PRAJAPATI','PPS','','','OOPC','','','INS','',18),(17,'AGD','AWADHESH G DIXIT','PPS','','','COA','','TOC','CD','AI',18),(52,'AJP','ANKIT J PATEL','','EEW','','','MPI','','','',17),(7,'AMP','AMIT M PARMAR','','','DBMS','','','WT','','',18),(37,'ANK','ALMAS N KHAN','MATH1','MATH2','AEM','NSM','','','','',17),(30,'ANS','ANKUR N SHAH','','','DS','OOPC','','','DMBI','',18),(53,'APP','ANKUR P PATEL','','EGD','','','','','','',17),(1,'ARV','DR. AVANI VASANT','','','','OOPC','','','MCWC','',12),(32,'AXR','DR. AMI RAJPUT','MATH1','MATH2','AEM','NSM','','','','',17),(47,'BJP','BRIJALKUMAR J PARMAR','','BE','DEL','','','','','',17),(2,'DEN','DIVYA EBENEZER NATHANIEL','','','','','JAVA','SE','','',18),(44,'DMS','DIVYANGI M SHAH','','ES','','','','','','',17),(42,'DVK','DRASHTI V KAPADIA','BEE','ES','','','','','','',17),(39,'DVT','DR. DHARMENDRA V TAWDE','PHY','','','','','','','',17),(31,'GGB','DR. GOPAL GAUTAMBHAI BHATT','PHY','','','','','','','',17),(34,'JAM','JINAL A MISTRY','MATH1','MATH2','AEM','NSM','','','','',17),(49,'JJP','JAIMIN J PATEL','','EEW','DEL','','','','','',17),(22,'JKP','JEKISHAN K PARMAR','PPS','','','','','DNET','','PP',18),(4,'KGS','KRUTI G SHETH','','','','','ADA','SE','','',18),(9,'KGV','KAUSHIK G VAGHANI','','','DS','OS','','','','',18),(14,'KHT','KAVITA H TIWARI','','','DBMS','','','AJAVA','','',18),(10,'MMA','MADHAV M AJWALIA','','','','CN','CS','','INS','PP',18),(21,'MPP','MOSAM P PATEL','PPS','','','','','DNET','','',18),(28,'NG','NEHA D GUPTA','','','','OOPC','CS','','DMBI','PP',18),(41,'NHC','NIKITA H CHAKRABORTY','ENG','','','','','','','',17),(26,'NKC','NIDHI K CHITRODA','','','','','SP','OOPC','CD','',18),(33,'NKS','NAVNEET K SABHARWAL','ENG','','','','','','','',17),(5,'PAP','PRATIK A PATEL','','','DBMS','OS','','','','',18),(46,'PC','PRANAV K CONTRACTOR','BEE','BE','','','','','','',17),(20,'PM','PRAGNA MAKWANA','','','','','SP','DNET','','',18),(25,'PNP','PRATIK N PATEL','','','DBMS','','','TOC','','AI',18),(11,'PNS','PARITA N SHETH','','','','CN','CS','','INS','',18),(18,'PPA','PRIYANKA A PATEL','','','','COA','JAVA','AJAVA','','',18),(55,'PRP','PRATIK R PATEL','','EGD','','','','','','',17),(45,'PS','PUNIT N SOMPURA','BEE','BE','','','','','','',17),(40,'RCD','DR. RANJIT CHHOTUBHAI DESAI','PHY','','','OS','','','','',17),(38,'RGD','RAJVI G DESAI','ENG','','','','','','','',17),(35,'RKP','RAMESHKUMAR K PATOLIYA','MATH1','MATH2','AEM','NSM','','','','',17),(29,'RKR','RIDDHI K RUPAPARA','','','','OOPC','ADA','','DMBI','',18),(56,'RKS','RAHULKUMAR K SHAH','','EGD','','','','','','',17),(23,'RRT','RADHA R TEREDESAI','','','','','ADA','CG','CD','',18),(51,'SDM','SPRUHA D MISTRY','','EEW','','','MPI','','','',17),(43,'SDV','SHIRALI D VAHALIA','','ES','','','','','','',17),(24,'SIR','SAFIA I RAJPIPLAWALA','','','','','SP','TOC','CD','AI',18),(12,'SJP','SHRADHA J PRAJAPATI','','','','','CS','WT','DMBI','',18),(54,'SJR','SUNNY J RACH','','EGD','','','','','','',17),(8,'SMP','SWAPNIL M PARIKH','','','','CN','','','MCWC','',18),(16,'SNR','SHWETA N RAJPUT','','','DS','','JAVA','AJAVA','','',18),(48,'SPD','DR. SURABHI P DWIVEDI','','EEW','','','MPI','','','',17),(50,'SPS','SAURABH P SHAH','','EEW','DEL','','','','','',17),(3,'SSP','SNEHAL S PATEL','','','','','','SE','DMBI','',18),(13,'TAP','TRUPTI A PADAWAL','','','','','','','MCWC','',18),(36,'US','UMESH SINGH','','','EEM','','','','','',17),(6,'VSN','VARSHA S NAREGALKAR','','','DS','','','WT','','',18),(15,'YVS','YATIN V SHUKLA','','','DS','COA','','','','PP',18);
/*!40000 ALTER TABLE `faculty_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ggb`
--

DROP TABLE IF EXISTS `ggb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ggb` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ggb`
--

LOCK TABLES `ggb` WRITE;
/*!40000 ALTER TABLE `ggb` DISABLE KEYS */;
INSERT INTO `ggb` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `ggb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jam`
--

DROP TABLE IF EXISTS `jam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jam` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jam`
--

LOCK TABLES `jam` WRITE;
/*!40000 ALTER TABLE `jam` DISABLE KEYS */;
INSERT INTO `jam` VALUES ('1CL','y1d2','y2d2','y1d2','y2d2','y1d2','FREE'),('1SUB','MATH2','NSM','MATH2','NSM','MATH2','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','y2d2L','y2d2L','FREE','y2d2L','y2d2L','FREE'),('3SUB','NSM','NSM','FREE','NSM','NSM','FREE'),('4CL','y2d2L','y2d2L','FREE','y2d2L','y2d2L','FREE'),('4SUB','NSM','NSM','FREE','NSM','NSM','FREE'),('5CL','y2d2','FREE','FREE','y1d2','FREE','y1d2'),('5SUB','NSM','FREE','FREE','MATH2','FREE','MATH2'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `jam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjp`
--

DROP TABLE IF EXISTS `jjp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jjp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjp`
--

LOCK TABLES `jjp` WRITE;
/*!40000 ALTER TABLE `jjp` DISABLE KEYS */;
INSERT INTO `jjp` VALUES ('1CL','FREE','FREE','y1d3L','FREE','FREE','FREE'),('1SUB','FREE','FREE','EEW','FREE','FREE','FREE'),('2CL','FREE','FREE','y1d3L','FREE','FREE','FREE'),('2SUB','FREE','FREE','EEW','FREE','FREE','FREE'),('3CL','FREE','FREE','y1d2L','FREE','FREE','FREE'),('3SUB','FREE','FREE','EEW','FREE','FREE','FREE'),('4CL','FREE','FREE','y1d2L','FREE','FREE','FREE'),('4SUB','FREE','FREE','EEW','FREE','FREE','FREE'),('5CL','y1d1L','FREE','FREE','FREE','FREE','FREE'),('5SUB','EEW','FREE','FREE','FREE','FREE','FREE'),('6CL','y1d1L','FREE','FREE','FREE','FREE','FREE'),('6SUB','EEW','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `jjp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jkp`
--

DROP TABLE IF EXISTS `jkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jkp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jkp`
--

LOCK TABLES `jkp` WRITE;
/*!40000 ALTER TABLE `jkp` DISABLE KEYS */;
INSERT INTO `jkp` VALUES ('1CL','y4d3L','y4d3L','FREE','y4d3L','FREE','y4d3L'),('1SUB','PP','PP','FREE','PP','FREE','PP'),('2CL','y4d3L','y4d3L','FREE','y4d3L','FREE','y4d3L'),('2SUB','PP','PP','FREE','PP','FREE','PP'),('3CL','FREE','FREE','FREE','y4d2L','y4d3','FREE'),('3SUB','FREE','FREE','FREE','PP','PP','FREE'),('4CL','FREE','y4d3','FREE','y4d2L','FREE','FREE'),('4SUB','FREE','PP','FREE','PP','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','y4d3','FREE','FREE'),('6SUB','FREE','FREE','FREE','PP','FREE','FREE');
/*!40000 ALTER TABLE `jkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kgs`
--

DROP TABLE IF EXISTS `kgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kgs` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kgs`
--

LOCK TABLES `kgs` WRITE;
/*!40000 ALTER TABLE `kgs` DISABLE KEYS */;
INSERT INTO `kgs` VALUES ('1CL','y3d3L','y3d3L','y2d3L','FREE','y3d3L','y2d3L'),('1SUB','SE','SE','DE-2','FREE','SE','DE-2'),('2CL','y3d3L','y3d3L','y2d3L','FREE','y3d3L','y2d3L'),('2SUB','SE','SE','DE-2','FREE','SE','DE-2'),('3CL','FREE','y3d3','y3d3','y3d2L','FREE','FREE'),('3SUB','FREE','SE','SE','SE','FREE','FREE'),('4CL','FREE','FREE','FREE','y3d2L','FREE','y3d3'),('4SUB','FREE','FREE','FREE','SE','FREE','SE'),('5CL','y3d3','FREE','FREE','FREE','y3d1L','FREE'),('5SUB','SE','FREE','FREE','FREE','DE-4','FREE'),('6CL','FREE','FREE','FREE','FREE','y3d1L','FREE'),('6SUB','FREE','FREE','FREE','FREE','DE-4','FREE');
/*!40000 ALTER TABLE `kgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kgv`
--

DROP TABLE IF EXISTS `kgv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kgv` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kgv`
--

LOCK TABLES `kgv` WRITE;
/*!40000 ALTER TABLE `kgv` DISABLE KEYS */;
INSERT INTO `kgv` VALUES ('1CL','FREE','y2d3L','FREE','FREE','y2d2','FREE'),('1SUB','FREE','OS','FREE','FREE','OS','FREE'),('2CL','FREE','y2d3L','y2d2','FREE','FREE','y2d2'),('2SUB','FREE','OS','OS','FREE','FREE','OS'),('3CL','y2d2L','FREE','y2d2L','FREE','FREE','FREE'),('3SUB','OS','FREE','OS','FREE','FREE','FREE'),('4CL','y2d2L','FREE','y2d2L','FREE','FREE','FREE'),('4SUB','OS','FREE','OS','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','y2d2','FREE','y2d1L'),('5SUB','FREE','FREE','FREE','OS','FREE','OS'),('6CL','FREE','FREE','FREE','FREE','FREE','y2d1L'),('6SUB','FREE','FREE','FREE','FREE','FREE','OS');
/*!40000 ALTER TABLE `kgv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kht`
--

DROP TABLE IF EXISTS `kht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kht` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kht`
--

LOCK TABLES `kht` WRITE;
/*!40000 ALTER TABLE `kht` DISABLE KEYS */;
INSERT INTO `kht` VALUES ('1CL','y3d1','FREE','FREE','FREE','FREE','FREE'),('1SUB','AJAVA','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','y3d1','y3d1'),('2SUB','FREE','FREE','FREE','FREE','AJAVA','AJAVA'),('3CL','FREE','y3d1','FREE','FREE','FREE','FREE'),('3SUB','FREE','AJAVA','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','y3d1L','FREE','y3d1L','FREE','y3d1L','FREE'),('5SUB','AJAVA','FREE','AJAVA','FREE','AJAVA','FREE'),('6CL','y3d1L','FREE','y3d1L','FREE','y3d1L','FREE'),('6SUB','AJAVA','FREE','AJAVA','FREE','AJAVA','FREE');
/*!40000 ALTER TABLE `kht` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mma`
--

DROP TABLE IF EXISTS `mma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mma` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mma`
--

LOCK TABLES `mma` WRITE;
/*!40000 ALTER TABLE `mma` DISABLE KEYS */;
INSERT INTO `mma` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','y2d2'),('1SUB','FREE','FREE','FREE','FREE','FREE','CN'),('2CL','y4d1','FREE','FREE','y2d2','FREE','FREE'),('2SUB','PP','FREE','FREE','CN','FREE','FREE'),('3CL','y2d2L','FREE','FREE','y2d2L','FREE','FREE'),('3SUB','CN','FREE','FREE','CN','FREE','FREE'),('4CL','y2d2L','FREE','FREE','y2d2L','y4d1','y4d1'),('4SUB','CN','FREE','FREE','CN','PP','PP'),('5CL','FREE','FREE','FREE','FREE','y4d1L','y4d1L'),('5SUB','FREE','FREE','FREE','FREE','PP','PP'),('6CL','FREE','y2d2','y2d2','FREE','y4d1L','y4d1L'),('6SUB','FREE','CN','CN','FREE','PP','PP');
/*!40000 ALTER TABLE `mma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mpp`
--

DROP TABLE IF EXISTS `mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mpp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpp`
--

LOCK TABLES `mpp` WRITE;
/*!40000 ALTER TABLE `mpp` DISABLE KEYS */;
INSERT INTO `mpp` VALUES ('1CL','y3d3L','y3d3L','FREE','y3d3L','FREE','y3d3L'),('1SUB','DNET','DNET','FREE','DNET','FREE','DNET'),('2CL','y3d3L','y3d3L','FREE','y3d3L','FREE','y3d3L'),('2SUB','DNET','DNET','FREE','DNET','FREE','DNET'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','y3d3','FREE','FREE','FREE','FREE','FREE'),('4SUB','DNET','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','y3d3','y3d3','y3d1L','y3d3','FREE'),('5SUB','FREE','DNET','DNET','DNET','DNET','FREE'),('6CL','FREE','FREE','FREE','y3d1L','FREE','FREE'),('6SUB','FREE','FREE','FREE','DNET','FREE','FREE');
/*!40000 ALTER TABLE `mpp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ng`
--

DROP TABLE IF EXISTS `ng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ng` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ng`
--

LOCK TABLES `ng` WRITE;
/*!40000 ALTER TABLE `ng` DISABLE KEYS */;
INSERT INTO `ng` VALUES ('1CL','y2d3L','y2d3L','FREE','FREE','FREE','FREE'),('1SUB','OOPC','OOPC','FREE','FREE','FREE','FREE'),('2CL','y2d3L','y2d3L','FREE','FREE','FREE','FREE'),('2SUB','OOPC','OOPC','FREE','FREE','FREE','FREE'),('3CL','y2d3','y2d2L','FREE','FREE','FREE','y2d2L'),('3SUB','OOPC','OOPC','FREE','FREE','FREE','OOPC'),('4CL','FREE','y2d2L','FREE','y2d3','FREE','y2d2L'),('4SUB','FREE','OOPC','FREE','OOPC','FREE','OOPC'),('5CL','FREE','FREE','FREE','y2d1L','y4d1L','y2d3'),('5SUB','FREE','FREE','FREE','OOPC','PP','OOPC'),('6CL','FREE','y2d3','FREE','y2d1L','y4d1L','FREE'),('6SUB','FREE','OOPC','FREE','OOPC','PP','FREE');
/*!40000 ALTER TABLE `ng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhc`
--

DROP TABLE IF EXISTS `nhc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nhc` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhc`
--

LOCK TABLES `nhc` WRITE;
/*!40000 ALTER TABLE `nhc` DISABLE KEYS */;
INSERT INTO `nhc` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `nhc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nkc`
--

DROP TABLE IF EXISTS `nkc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nkc` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nkc`
--

LOCK TABLES `nkc` WRITE;
/*!40000 ALTER TABLE `nkc` DISABLE KEYS */;
INSERT INTO `nkc` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `nkc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nks`
--

DROP TABLE IF EXISTS `nks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nks` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nks`
--

LOCK TABLES `nks` WRITE;
/*!40000 ALTER TABLE `nks` DISABLE KEYS */;
INSERT INTO `nks` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `nks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pap`
--

DROP TABLE IF EXISTS `pap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pap` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pap`
--

LOCK TABLES `pap` WRITE;
/*!40000 ALTER TABLE `pap` DISABLE KEYS */;
INSERT INTO `pap` VALUES ('1CL','FREE','FREE','FREE','y2d1','y2d1','y2d3L'),('1SUB','FREE','FREE','FREE','OS','OS','DE-2'),('2CL','FREE','y2d1','FREE','FREE','FREE','y2d3L'),('2SUB','FREE','OS','FREE','FREE','FREE','DE-2'),('3CL','y3d2L','FREE','FREE','y3d2L','y3d2L','FREE'),('3SUB','DE-4','FREE','FREE','DE-4','DE-4','FREE'),('4CL','y3d2L','FREE','FREE','y3d2L','y3d2L','y2d1'),('4SUB','DE-4','FREE','FREE','DE-4','DE-4','OS'),('5CL','FREE','FREE','FREE','y2d1L','y2d1L','y2d1L'),('5SUB','FREE','FREE','FREE','OS','OS','OS'),('6CL','FREE','FREE','FREE','y2d1L','y2d1L','y2d1L'),('6SUB','FREE','FREE','FREE','OS','OS','OS');
/*!40000 ALTER TABLE `pap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc`
--

DROP TABLE IF EXISTS `pc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pc` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc`
--

LOCK TABLES `pc` WRITE;
/*!40000 ALTER TABLE `pc` DISABLE KEYS */;
INSERT INTO `pc` VALUES ('1CL','FREE','y1d2','FREE','FREE','FREE','FREE'),('1SUB','FREE','BE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','y1d2L','FREE','y1d2L','y1d2L','y1d2L','FREE'),('3SUB','BE','FREE','BE','BE','BE','FREE'),('4CL','y1d2L','FREE','y1d2L','y1d2L','y1d2L','FREE'),('4SUB','BE','FREE','BE','BE','BE','FREE'),('5CL','FREE','FREE','FREE','FREE','y1d2','FREE'),('5SUB','FREE','FREE','FREE','FREE','BE','FREE'),('6CL','FREE','FREE','FREE','y1d2','FREE','FREE'),('6SUB','FREE','FREE','FREE','BE','FREE','FREE');
/*!40000 ALTER TABLE `pc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pm`
--

DROP TABLE IF EXISTS `pm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pm` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pm`
--

LOCK TABLES `pm` WRITE;
/*!40000 ALTER TABLE `pm` DISABLE KEYS */;
INSERT INTO `pm` VALUES ('1CL','FREE','FREE','FREE','FREE','y3d2','y3d2'),('1SUB','FREE','FREE','FREE','FREE','DNET','DNET'),('2CL','FREE','FREE','FREE','y3d2','FREE','FREE'),('2SUB','FREE','FREE','FREE','DNET','FREE','FREE'),('3CL','y3d2L','y3d2L','y3d2L','FREE','FREE','y3d2L'),('3SUB','DNET','DNET','DNET','FREE','FREE','DNET'),('4CL','y3d2L','y3d2L','y3d2L','FREE','FREE','y3d2L'),('4SUB','DNET','DNET','DNET','FREE','FREE','DNET'),('5CL','y3d2','y3d1L','FREE','FREE','FREE','FREE'),('5SUB','DNET','DNET','FREE','FREE','FREE','FREE'),('6CL','FREE','y3d1L','FREE','FREE','FREE','FREE'),('6SUB','FREE','DNET','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `pm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pnp`
--

DROP TABLE IF EXISTS `pnp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pnp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pnp`
--

LOCK TABLES `pnp` WRITE;
/*!40000 ALTER TABLE `pnp` DISABLE KEYS */;
INSERT INTO `pnp` VALUES ('1CL','y4d3L','FREE','y4d3L','FREE','y4d3L','y4d3L'),('1SUB','AI','FREE','AI','FREE','AI','AI'),('2CL','y4d3L','FREE','y4d3L','FREE','y4d3L','y4d3L'),('2SUB','AI','FREE','AI','FREE','AI','AI'),('3CL','y4d3','FREE','FREE','FREE','FREE','FREE'),('3SUB','AI','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','y4d3','FREE','FREE','FREE'),('4SUB','FREE','FREE','AI','FREE','FREE','FREE'),('5CL','y4d1L','y4d3','FREE','FREE','FREE','FREE'),('5SUB','AI','AI','FREE','FREE','FREE','FREE'),('6CL','y4d1L','y3d3','y3d3','FREE','y3d3','y4d3'),('6SUB','AI','TOC','TOC','FREE','TOC','AI');
/*!40000 ALTER TABLE `pnp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pns`
--

DROP TABLE IF EXISTS `pns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pns` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pns`
--

LOCK TABLES `pns` WRITE;
/*!40000 ALTER TABLE `pns` DISABLE KEYS */;
INSERT INTO `pns` VALUES ('1CL','y2d3L','y2d3L','FREE','y2d3L','y2d3L','FREE'),('1SUB','CN','CN','FREE','CN','CN','FREE'),('2CL','y2d3L','y2d3L','FREE','y2d3L','y2d3L','FREE'),('2SUB','CN','CN','FREE','CN','CN','FREE'),('3CL','FREE','FREE','FREE','y2d3','y2d2L','y2d2L'),('3SUB','FREE','FREE','FREE','CN','CN','CN'),('4CL','y2d3','y2d3','FREE','FREE','y2d2L','y2d2L'),('4SUB','CN','CN','FREE','FREE','CN','CN'),('5CL','FREE','FREE','y2d3','FREE','FREE','FREE'),('5SUB','FREE','FREE','CN','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `pns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ppa`
--

DROP TABLE IF EXISTS `ppa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ppa` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ppa`
--

LOCK TABLES `ppa` WRITE;
/*!40000 ALTER TABLE `ppa` DISABLE KEYS */;
INSERT INTO `ppa` VALUES ('1CL','y3d3L','FREE','y3d3L','FREE','y3d3L','y3d3L'),('1SUB','AJAVA','FREE','AJAVA','FREE','AJAVA','AJAVA'),('2CL','y3d3L','FREE','y3d3L','FREE','y3d3L','y3d3L'),('2SUB','AJAVA','FREE','AJAVA','FREE','AJAVA','AJAVA'),('3CL','FREE','y2d3','y2d3','FREE','y2d3','y3d3'),('3SUB','FREE','COA','COA','FREE','COA','AJAVA'),('4CL','FREE','y3d3','FREE','FREE','FREE','FREE'),('4SUB','FREE','AJAVA','FREE','FREE','FREE','FREE'),('5CL','y2d3','FREE','FREE','FREE','FREE','FREE'),('5SUB','COA','FREE','FREE','FREE','FREE','FREE'),('6CL','y3d3','FREE','FREE','y3d3','FREE','FREE'),('6SUB','AJAVA','FREE','FREE','AJAVA','FREE','FREE');
/*!40000 ALTER TABLE `ppa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prp`
--

DROP TABLE IF EXISTS `prp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prp`
--

LOCK TABLES `prp` WRITE;
/*!40000 ALTER TABLE `prp` DISABLE KEYS */;
INSERT INTO `prp` VALUES ('1CL','y1d3L','FREE','FREE','y1d3L','FREE','y1d3L'),('1SUB','EGD','FREE','FREE','EGD','FREE','EGD'),('2CL','y1d3L','FREE','FREE','y1d3L','FREE','y1d3L'),('2SUB','EGD','FREE','FREE','EGD','FREE','EGD'),('3CL','FREE','FREE','y2d2L','y1d2L','FREE','FREE'),('3SUB','FREE','FREE','DE-2','EGD','FREE','FREE'),('4CL','FREE','FREE','y2d2L','y1d2L','FREE','FREE'),('4SUB','FREE','FREE','DE-2','EGD','FREE','FREE'),('5CL','y2d1L','FREE','FREE','y1d1L','y1d3','y1d1L'),('5SUB','DE-2','FREE','FREE','EGD','EGD','EGD'),('6CL','y2d1L','y1d3','FREE','y1d1L','FREE','y1d1L'),('6SUB','DE-2','EGD','FREE','EGD','FREE','EGD');
/*!40000 ALTER TABLE `prp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps`
--

DROP TABLE IF EXISTS `ps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ps` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps`
--

LOCK TABLES `ps` WRITE;
/*!40000 ALTER TABLE `ps` DISABLE KEYS */;
INSERT INTO `ps` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','y1d1','y1d1','FREE','FREE','FREE','FREE'),('2SUB','BE','BE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','y1d1'),('4SUB','FREE','FREE','FREE','FREE','FREE','BE'),('5CL','y1d1L','FREE','y1d1L','FREE','y1d1L','y1d1L'),('5SUB','BE','FREE','BE','FREE','BE','BE'),('6CL','y1d1L','FREE','y1d1L','FREE','y1d1L','y1d1L'),('6SUB','BE','FREE','BE','FREE','BE','BE');
/*!40000 ALTER TABLE `ps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rcd`
--

DROP TABLE IF EXISTS `rcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rcd` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rcd`
--

LOCK TABLES `rcd` WRITE;
/*!40000 ALTER TABLE `rcd` DISABLE KEYS */;
INSERT INTO `rcd` VALUES ('1CL','y2d3L','FREE','FREE','y2d3L','y2d3L','FREE'),('1SUB','OS','FREE','FREE','OS','OS','FREE'),('2CL','y2d3L','FREE','FREE','y2d3L','y2d3L','FREE'),('2SUB','OS','FREE','FREE','OS','OS','FREE'),('3CL','FREE','y2d2L','FREE','FREE','y2d2L','FREE'),('3SUB','FREE','OS','FREE','FREE','OS','FREE'),('4CL','FREE','y2d2L','y2d3','FREE','y2d2L','FREE'),('4SUB','FREE','OS','OS','FREE','OS','FREE'),('5CL','FREE','y2d3','FREE','FREE','FREE','FREE'),('5SUB','FREE','OS','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','y2d3','FREE','y2d3'),('6SUB','FREE','FREE','FREE','OS','FREE','OS');
/*!40000 ALTER TABLE `rcd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rgd`
--

DROP TABLE IF EXISTS `rgd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rgd` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rgd`
--

LOCK TABLES `rgd` WRITE;
/*!40000 ALTER TABLE `rgd` DISABLE KEYS */;
INSERT INTO `rgd` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `rgd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rkp`
--

DROP TABLE IF EXISTS `rkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rkp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rkp`
--

LOCK TABLES `rkp` WRITE;
/*!40000 ALTER TABLE `rkp` DISABLE KEYS */;
INSERT INTO `rkp` VALUES ('1CL','FREE','FREE','y2d3L','y2d3L','y2d3L','y2d3L'),('1SUB','FREE','FREE','NSM','NSM','NSM','NSM'),('2CL','FREE','FREE','y2d3L','y2d3L','y2d3L','y2d3L'),('2SUB','FREE','FREE','NSM','NSM','NSM','NSM'),('3CL','y1d3','FREE','FREE','FREE','y1d3','FREE'),('3SUB','MATH2','FREE','FREE','FREE','MATH2','FREE'),('4CL','FREE','FREE','FREE','y1d3','y2d3','y1d3'),('4SUB','FREE','FREE','FREE','MATH2','NSM','MATH2'),('5CL','FREE','FREE','y1d3','y2d3','FREE','FREE'),('5SUB','FREE','FREE','MATH2','NSM','FREE','FREE'),('6CL','FREE','FREE','y2d3','FREE','FREE','FREE'),('6SUB','FREE','FREE','NSM','FREE','FREE','FREE');
/*!40000 ALTER TABLE `rkp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rkr`
--

DROP TABLE IF EXISTS `rkr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rkr` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rkr`
--

LOCK TABLES `rkr` WRITE;
/*!40000 ALTER TABLE `rkr` DISABLE KEYS */;
INSERT INTO `rkr` VALUES ('1CL','FREE','y2d3L','y2d3L','FREE','FREE','FREE'),('1SUB','FREE','OOPC','OOPC','FREE','FREE','FREE'),('2CL','FREE','y2d3L','y2d3L','FREE','FREE','FREE'),('2SUB','FREE','OOPC','OOPC','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','y2d2L'),('3SUB','FREE','FREE','FREE','FREE','FREE','OOPC'),('4CL','FREE','FREE','FREE','FREE','FREE','y2d2L'),('4SUB','FREE','FREE','FREE','FREE','FREE','OOPC'),('5CL','y2d1L','y2d1L','FREE','FREE','y2d1L','FREE'),('5SUB','OOPC','OOPC','FREE','FREE','OOPC','FREE'),('6CL','y2d1L','y2d1L','FREE','FREE','y2d1L','FREE'),('6SUB','OOPC','OOPC','FREE','FREE','OOPC','FREE');
/*!40000 ALTER TABLE `rkr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rks`
--

DROP TABLE IF EXISTS `rks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rks` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rks`
--

LOCK TABLES `rks` WRITE;
/*!40000 ALTER TABLE `rks` DISABLE KEYS */;
INSERT INTO `rks` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `rks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rrt`
--

DROP TABLE IF EXISTS `rrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rrt` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rrt`
--

LOCK TABLES `rrt` WRITE;
/*!40000 ALTER TABLE `rrt` DISABLE KEYS */;
INSERT INTO `rrt` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `rrt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdm`
--

DROP TABLE IF EXISTS `sdm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sdm` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdm`
--

LOCK TABLES `sdm` WRITE;
/*!40000 ALTER TABLE `sdm` DISABLE KEYS */;
INSERT INTO `sdm` VALUES ('1CL','y1d3L','y1d3L','y1d3L','y1d3L','y1d3L','y1d3L'),('1SUB','EEW','EEW','EEW','EEW','EEW','EEW'),('2CL','y1d3L','y1d3L','y1d3L','y1d3L','y1d3L','y1d3L'),('2SUB','EEW','EEW','EEW','EEW','EEW','EEW'),('3CL','FREE','y1d2L','FREE','FREE','FREE','FREE'),('3SUB','FREE','EEW','FREE','FREE','FREE','FREE'),('4CL','FREE','y1d2L','FREE','FREE','FREE','FREE'),('4SUB','FREE','EEW','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `sdm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdv`
--

DROP TABLE IF EXISTS `sdv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sdv` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdv`
--

LOCK TABLES `sdv` WRITE;
/*!40000 ALTER TABLE `sdv` DISABLE KEYS */;
INSERT INTO `sdv` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','y1d2','y1d2'),('2SUB','FREE','FREE','FREE','FREE','ES','ES'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','y1d2','FREE','FREE','FREE'),('5SUB','FREE','FREE','ES','FREE','FREE','FREE'),('6CL','FREE','y1d2','FREE','FREE','FREE','FREE'),('6SUB','FREE','ES','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `sdv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sir`
--

DROP TABLE IF EXISTS `sir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sir` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sir`
--

LOCK TABLES `sir` WRITE;
/*!40000 ALTER TABLE `sir` DISABLE KEYS */;
INSERT INTO `sir` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','y3d2','FREE','FREE','FREE','y3d2','y4d2'),('2SUB','TOC','FREE','FREE','FREE','TOC','AI'),('3CL','y4d2L','y4d2L','FREE','FREE','y4d2L','y4d2L'),('3SUB','AI','AI','FREE','FREE','AI','AI'),('4CL','y4d2L','y4d2L','FREE','FREE','y4d2L','y4d2L'),('4SUB','AI','AI','FREE','FREE','AI','AI'),('5CL','y4d2','FREE','FREE','FREE','FREE','FREE'),('5SUB','AI','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','y3d2','y4d2','y4d2','FREE','FREE'),('6SUB','FREE','TOC','AI','AI','FREE','FREE');
/*!40000 ALTER TABLE `sir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sjp`
--

DROP TABLE IF EXISTS `sjp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sjp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sjp`
--

LOCK TABLES `sjp` WRITE;
/*!40000 ALTER TABLE `sjp` DISABLE KEYS */;
INSERT INTO `sjp` VALUES ('1CL','FREE','FREE','FREE','y3d3L','y3d3L','y3d3L'),('1SUB','FREE','FREE','FREE','WT','WT','WT'),('2CL','FREE','FREE','FREE','y3d3L','y3d3L','y3d3L'),('2SUB','FREE','FREE','FREE','WT','WT','WT'),('3CL','y3d3','FREE','FREE','FREE','FREE','FREE'),('3SUB','WT','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','y3d3','FREE','FREE'),('4SUB','FREE','FREE','FREE','WT','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','y3d1L','FREE'),('5SUB','FREE','FREE','FREE','FREE','WT','FREE'),('6CL','FREE','FREE','FREE','FREE','y3d1L','y3d3'),('6SUB','FREE','FREE','FREE','FREE','WT','WT');
/*!40000 ALTER TABLE `sjp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sjr`
--

DROP TABLE IF EXISTS `sjr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sjr` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sjr`
--

LOCK TABLES `sjr` WRITE;
/*!40000 ALTER TABLE `sjr` DISABLE KEYS */;
INSERT INTO `sjr` VALUES ('1CL','FREE','FREE','FREE','y1d3L','FREE','FREE'),('1SUB','FREE','FREE','FREE','EGD','FREE','FREE'),('2CL','FREE','FREE','FREE','y1d3L','FREE','FREE'),('2SUB','FREE','FREE','FREE','EGD','FREE','FREE'),('3CL','y1d2L','FREE','FREE','FREE','y1d2L','y1d2L'),('3SUB','EGD','FREE','FREE','FREE','EGD','EGD'),('4CL','y1d2L','FREE','FREE','FREE','y1d2L','y1d2L'),('4SUB','EGD','FREE','FREE','FREE','EGD','EGD'),('5CL','FREE','y2d1L','y2d1L','y1d1L','FREE','y1d1L'),('5SUB','FREE','DE-2','DE-2','EGD','FREE','EGD'),('6CL','y1d2','y2d1L','y2d1L','y1d1L','y1d2','y1d1L'),('6SUB','EGD','DE-2','DE-2','EGD','EGD','EGD');
/*!40000 ALTER TABLE `sjr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smp`
--

DROP TABLE IF EXISTS `smp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `smp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smp`
--

LOCK TABLES `smp` WRITE;
/*!40000 ALTER TABLE `smp` DISABLE KEYS */;
INSERT INTO `smp` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','y2d1','FREE','FREE','FREE'),('2SUB','FREE','FREE','CN','FREE','FREE','FREE'),('3CL','y2d1','FREE','FREE','FREE','FREE','FREE'),('3SUB','CN','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','y2d1','FREE','y2d1','FREE','FREE'),('4SUB','FREE','CN','FREE','CN','FREE','FREE'),('5CL','FREE','y2d1L','y2d1L','FREE','y2d1L','y2d1L'),('5SUB','FREE','CN','CN','FREE','CN','CN'),('6CL','FREE','y2d1L','y2d1L','FREE','y2d1L','y2d1L'),('6SUB','FREE','CN','CN','FREE','CN','CN');
/*!40000 ALTER TABLE `smp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snr`
--

DROP TABLE IF EXISTS `snr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `snr` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snr`
--

LOCK TABLES `snr` WRITE;
/*!40000 ALTER TABLE `snr` DISABLE KEYS */;
INSERT INTO `snr` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','y3d2L','FREE','y3d2L','y3d2L','y3d2L','FREE'),('3SUB','AJAVA','FREE','AJAVA','AJAVA','AJAVA','FREE'),('4CL','y3d2L','FREE','y3d2L','y3d2L','y3d2L','FREE'),('4SUB','AJAVA','FREE','AJAVA','AJAVA','AJAVA','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','y3d2','y3d2','y3d2','y3d2'),('6SUB','FREE','FREE','AJAVA','AJAVA','AJAVA','AJAVA');
/*!40000 ALTER TABLE `snr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spd`
--

DROP TABLE IF EXISTS `spd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `spd` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spd`
--

LOCK TABLES `spd` WRITE;
/*!40000 ALTER TABLE `spd` DISABLE KEYS */;
INSERT INTO `spd` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','y1d2L','FREE','FREE','FREE','FREE'),('3SUB','FREE','EEW','FREE','FREE','FREE','FREE'),('4CL','FREE','y1d2L','FREE','FREE','FREE','FREE'),('4SUB','FREE','EEW','FREE','FREE','FREE','FREE'),('5CL','FREE','y1d1L','y1d1L','y1d1L','y1d1L','FREE'),('5SUB','FREE','EEW','EEW','EEW','EEW','FREE'),('6CL','FREE','y1d1L','y1d1L','y1d1L','y1d1L','FREE'),('6SUB','FREE','EEW','EEW','EEW','EEW','FREE');
/*!40000 ALTER TABLE `spd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sps`
--

DROP TABLE IF EXISTS `sps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sps` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sps`
--

LOCK TABLES `sps` WRITE;
/*!40000 ALTER TABLE `sps` DISABLE KEYS */;
INSERT INTO `sps` VALUES ('1CL','FREE','FREE','FREE','FREE','y1d3L','FREE'),('1SUB','FREE','FREE','FREE','FREE','EEW','FREE'),('2CL','FREE','FREE','FREE','FREE','y1d3L','FREE'),('2SUB','FREE','FREE','FREE','FREE','EEW','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `sps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssp`
--

DROP TABLE IF EXISTS `ssp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ssp` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssp`
--

LOCK TABLES `ssp` WRITE;
/*!40000 ALTER TABLE `ssp` DISABLE KEYS */;
INSERT INTO `ssp` VALUES ('1CL','y3d2','FREE','y3d2','y3d2','FREE','FREE'),('1SUB','SE','FREE','SE','SE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','y3d2'),('2SUB','FREE','FREE','FREE','FREE','FREE','SE'),('3CL','FREE','FREE','FREE','y2d2L','y3d2L','y3d2L'),('3SUB','FREE','FREE','FREE','DE-2','SE','SE'),('4CL','FREE','FREE','FREE','y2d2L','y3d2L','y3d2L'),('4SUB','FREE','FREE','FREE','DE-2','SE','SE'),('5CL','y3d1L','y2d1L','y3d1L','FREE','FREE','y3d1L'),('5SUB','DE-4','DE-2','DE-4','FREE','FREE','DE-4'),('6CL','y3d1L','y2d1L','y3d1L','FREE','FREE','y3d1L'),('6SUB','DE-4','DE-2','DE-4','FREE','FREE','DE-4');
/*!40000 ALTER TABLE `ssp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_details`
--

DROP TABLE IF EXISTS `sub_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sub_details` (
  `sbabbr` varchar(5) NOT NULL,
  `sbname` varchar(45) DEFAULT NULL,
  `code` int(10) DEFAULT NULL,
  `sem` int(2) DEFAULT NULL,
  `nlec` int(2) DEFAULT NULL,
  `nlab` int(2) DEFAULT NULL,
  PRIMARY KEY (`sbabbr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_details`
--

LOCK TABLES `sub_details` WRITE;
/*!40000 ALTER TABLE `sub_details` DISABLE KEYS */;
INSERT INTO `sub_details` VALUES ('ADA','Analysis and Design of Algoritms',2150703,5,4,2),('AEM','Advanced Engineering Mathematics',2130002,3,5,0),('AI','ARTIFICIAL INTELLIGENCE',2180703,8,4,2),('AJAVA','Advanced Java',2160707,6,4,2),('BE','Basic Electronics',3110016,2,3,2),('BEE','Basic Electrical Engineering',3110005,1,3,2),('CD','COMPILER DESIGN',2170701,7,4,2),('CN','Computer Networks',2140709,4,4,2),('COA','Computer Organisation',2140707,4,4,0),('CS','Cyber Security',2150002,5,1,2),('DBMS','Database Management Systems',2130703,3,4,4),('DE-1','Design Engineering 1A',2130005,13,0,2),('DE-2','Design Engineering 1B',2140002,14,0,2),('DE-3','Design Engineering - 2A',2150001,15,0,2),('DE-4','Design Engineering-2B',2160001,16,0,2),('DEL','Digital Electronics',2131004,3,4,2),('DMBI','DATA MINING & BUSINESS INTELLIGENCE',2170715,7,3,2),('DNET','DotNet Technology',2160711,6,4,2),('DS','Data Structures',2130702,3,4,4),('EEM','Engineering Economics & Management',2130004,3,3,0),('EEW','Electrical & Electronics Workshop',3110012,2,0,4),('EGD','Engineering Graphics & Design',3110013,2,2,2),('ENG','English',3110002,1,4,0),('ES','Enviormental Science',3110007,2,4,0),('INS','INFORMATION & NETWORK SECURITY',2170709,7,4,2),('JAVA','Object Orineted Programming using JAVA',2150704,5,4,2),('MATH1','Mathematics-I',3110014,1,5,0),('MATH2','Mathematics-II',3110015,2,5,0),('MCWC','MOBILE COMPUTING & WIRELESS COMMUNICATION',2170710,7,4,2),('MPI','Microprocessor and Interfacing',2150707,5,4,2),('NSM','Numerical & Statistical Mathematics',2140706,4,3,2),('OOPC','Object Oriented Programming with C++',2140705,4,4,4),('OS','Operating Systems',2140702,4,4,2),('PHY','Physics',3110011,1,3,2),('PP','PYTHON PROGRAMMING',2180711,8,3,2),('PPS','Programming for Problem Solving',3110003,1,3,2),('PROJ','PROJECT 1',2170001,17,0,4),('SE','Software Engineering',2160701,6,4,2),('SP','Systems Programming',2150708,5,4,2),('TOC','Theory of Computation',2160704,6,3,0),('WT','Web Technology',2160708,6,3,2);
/*!40000 ALTER TABLE `sub_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tap`
--

DROP TABLE IF EXISTS `tap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tap` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tap`
--

LOCK TABLES `tap` WRITE;
/*!40000 ALTER TABLE `tap` DISABLE KEYS */;
INSERT INTO `tap` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `tap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `us`
--

DROP TABLE IF EXISTS `us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `us` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `us`
--

LOCK TABLES `us` WRITE;
/*!40000 ALTER TABLE `us` DISABLE KEYS */;
INSERT INTO `us` VALUES ('1CL','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2CL','FREE','FREE','FREE','FREE','FREE','FREE'),('2SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('3CL','FREE','FREE','FREE','FREE','FREE','FREE'),('3SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('4CL','FREE','FREE','FREE','FREE','FREE','FREE'),('4SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('5CL','FREE','FREE','FREE','FREE','FREE','FREE'),('5SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('6CL','FREE','FREE','FREE','FREE','FREE','FREE'),('6SUB','FREE','FREE','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vsn`
--

DROP TABLE IF EXISTS `vsn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vsn` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vsn`
--

LOCK TABLES `vsn` WRITE;
/*!40000 ALTER TABLE `vsn` DISABLE KEYS */;
INSERT INTO `vsn` VALUES ('1CL','FREE','y3d3L','FREE','y3d3L','FREE','y3d3L'),('1SUB','FREE','DE-4','FREE','DE-4','FREE','DE-4'),('2CL','FREE','y3d3L','y3d1','y3d3L','FREE','y3d3L'),('2SUB','FREE','DE-4','WT','DE-4','FREE','DE-4'),('3CL','FREE','FREE','y3d2L','FREE','FREE','FREE'),('3SUB','FREE','FREE','DE-4','FREE','FREE','FREE'),('4CL','FREE','y3d1','y3d2L','y3d1','FREE','FREE'),('4SUB','FREE','WT','DE-4','WT','FREE','FREE'),('5CL','FREE','y3d1L','FREE','FREE','FREE','FREE'),('5SUB','FREE','WT','FREE','FREE','FREE','FREE'),('6CL','FREE','y3d1L','FREE','FREE','FREE','FREE'),('6SUB','FREE','WT','FREE','FREE','FREE','FREE');
/*!40000 ALTER TABLE `vsn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr1dv1`
--

DROP TABLE IF EXISTS `yr1dv1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr1dv1` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr1dv1`
--

LOCK TABLES `yr1dv1` WRITE;
/*!40000 ALTER TABLE `yr1dv1` DISABLE KEYS */;
INSERT INTO `yr1dv1` VALUES ('1FAC','FREE','FREE','FREE','DVK','APP','DVK'),('1SUB','FREE','FREE','FREE','ES','EGD','ES'),('2FAC','PS','PS','AXR','APP','DVK','AXR'),('2SUB','BE','BE','MATH2','EGD','ES','MATH2'),('3FAC','FREE','DVK','FREE','FREE','FREE','FREE'),('3SUB','FREE','ES','FREE','FREE','FREE','FREE'),('4FAC','AXR','AXR','FREE','AXR','FREE','PS'),('4SUB','MATH2','MATH2','FREE','MATH2','FREE','BE'),('AFAC','AJP','FREE','SPD','SJR','FREE','PS'),('ALAB','EEW','FREE','EEW','EGD','FREE','BE'),('BFAC','PS','SPD','FREE','AJP','FREE','PRP'),('BLAB','BE','EEW','FREE','EEW','FREE','EGD'),('CFAC','FREE','FREE','PS','PRP','SPD','AJP'),('CLAB','FREE','FREE','BE','EGD','EEW','EEW'),('DFAC','JJP','FREE','FREE','SPD','PS','SJR'),('DLAB','EEW','FREE','FREE','EEW','BE','EGD');
/*!40000 ALTER TABLE `yr1dv1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr1dv2`
--

DROP TABLE IF EXISTS `yr1dv2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr1dv2` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr1dv2`
--

LOCK TABLES `yr1dv2` WRITE;
/*!40000 ALTER TABLE `yr1dv2` DISABLE KEYS */;
INSERT INTO `yr1dv2` VALUES ('1FAC','JAM','PC','JAM','FREE','JAM','FREE'),('1SUB','MATH2','BE','MATH2','FREE','MATH2','FREE'),('2FAC','FREE','FREE','FREE','FREE','SDV','SDV'),('2SUB','FREE','FREE','FREE','FREE','ES','ES'),('5FAC','FREE','FREE','SDV','JAM','PC','JAM'),('5SUB','FREE','FREE','ES','MATH2','BE','MATH2'),('6FAC','SJR','SDV','FREE','PC','SJR','FREE'),('6SUB','EGD','ES','FREE','BE','EGD','FREE'),('AFAC','PC','FREE','JJP','PRP','AJP','FREE'),('ALAB','BE','FREE','EEW','EGD','EEW','FREE'),('BFAC','SJR','AJP','FREE','PC','FREE','AJP'),('BLAB','EGD','EEW','FREE','BE','FREE','EEW'),('CFAC','FREE','SPD','PC','AJP','SJR','FREE'),('CLAB','FREE','EEW','BE','EEW','EGD','FREE'),('DFAC','AJP','SDM','FREE','FREE','PC','SJR'),('DLAB','EEW','EEW','FREE','FREE','BE','EGD');
/*!40000 ALTER TABLE `yr1dv2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr1dv3`
--

DROP TABLE IF EXISTS `yr1dv3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr1dv3` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr1dv3`
--

LOCK TABLES `yr1dv3` WRITE;
/*!40000 ALTER TABLE `yr1dv3` DISABLE KEYS */;
INSERT INTO `yr1dv3` VALUES ('3FAC','RKP','FREE','BJP','FREE','RKP','BJP'),('3SUB','MATH2','FREE','BE','FREE','MATH2','BE'),('4FAC','BJP','DMS','DMS','RKP','FREE','RKP'),('4SUB','BE','ES','ES','MATH2','FREE','MATH2'),('5FAC','FREE','FREE','RKP','FREE','PRP','FREE'),('5SUB','FREE','FREE','MATH2','FREE','EGD','FREE'),('6FAC','DMS','PRP','FREE','DMS','FREE','FREE'),('6SUB','ES','EGD','FREE','ES','FREE','FREE'),('AFAC','SDM','FREE','JJP','SJR','FREE','BJP'),('ALAB','EEW','FREE','EEW','EGD','FREE','BE'),('BFAC','FREE','BJP','FREE','PRP','SDM','SDM'),('BLAB','FREE','BE','FREE','EGD','EEW','EEW'),('CFAC','FREE','SDM','SDM','FREE','BJP','PRP'),('CLAB','FREE','EEW','EEW','FREE','BE','EGD'),('DFAC','PRP','FREE','BJP','SDM','SPS','FREE'),('DLAB','EGD','FREE','BE','EEW','EEW','FREE');
/*!40000 ALTER TABLE `yr1dv3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr2dv1`
--

DROP TABLE IF EXISTS `yr2dv1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr2dv1` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr2dv1`
--

LOCK TABLES `yr2dv1` WRITE;
/*!40000 ALTER TABLE `yr2dv1` DISABLE KEYS */;
INSERT INTO `yr2dv1` VALUES ('1FAC','ARV','ARV','YVS','PAP','PAP','YVS'),('1SUB','OOPC','OOPC','COA','OS','OS','COA'),('2FAC','AXR','PAP','SMP','YVS','AXR','FREE'),('2SUB','NSM','OS','CN','COA','NSM','FREE'),('3FAC','SMP','FREE','FREE','ARV','YVS','AXR'),('3SUB','CN','FREE','FREE','OOPC','COA','NSM'),('4FAC','FREE','SMP','ARV','SMP','FREE','PAP'),('4SUB','FREE','CN','OOPC','CN','FREE','OS'),('AFAC','AXR','RKR','SJR','NG','SMP','PAP'),('ALAB','NSM','OOPC','DE-2','OOPC','CN','OS'),('BFAC','ABP','SJR','ANS','AXR','PAP','SMP'),('BLAB','OOPC','DE-2','OOPC','NSM','OS','CN'),('CFAC','PRP','SMP','AXR','ABP','RKR','KGV'),('CLAB','DE-2','CN','NSM','OOPC','OOPC','OS'),('DFAC','RKR','SSP','SMP','PAP','ABP','AXR'),('DLAB','OOPC','DE-2','CN','OS','OOPC','NSM');
/*!40000 ALTER TABLE `yr2dv1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr2dv2`
--

DROP TABLE IF EXISTS `yr2dv2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr2dv2` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr2dv2`
--

LOCK TABLES `yr2dv2` WRITE;
/*!40000 ALTER TABLE `yr2dv2` DISABLE KEYS */;
INSERT INTO `yr2dv2` VALUES ('1FAC','ABP','JAM','AGD','JAM','KGV','MMA'),('1SUB','OOPC','NSM','COA','NSM','OS','CN'),('2FAC','AGD','FREE','KGV','MMA','ABP','KGV'),('2SUB','COA','FREE','OS','CN','OOPC','OS'),('5FAC','JAM','FREE','ABP','KGV','FREE','FREE'),('5SUB','NSM','FREE','OOPC','OS','FREE','FREE'),('6FAC','FREE','MMA','MMA','AGD','AGD','ABP'),('6SUB','FREE','CN','CN','COA','COA','OOPC'),('AFAC','MMA','JAM','KGV','DEN','ANS','ANS'),('ALAB','CN','NSM','OS','DE-2','OOPC','OOPC'),('BFAC','KGV','NG','PRP','MMA','JAM','RKR'),('BLAB','OS','OOPC','DE-2','CN','NSM','OOPC'),('CFAC','JAM','RCD','ANS','SSP','PNS','NG'),('CLAB','NSM','OS','OOPC','DE-2','CN','OOPC'),('DFAC','ANS','ANS','DEN','JAM','RCD','PNS'),('DLAB','OOPC','OOPC','DE-2','NSM','OS','CN');
/*!40000 ALTER TABLE `yr2dv2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr2dv3`
--

DROP TABLE IF EXISTS `yr2dv3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr2dv3` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr2dv3`
--

LOCK TABLES `yr2dv3` WRITE;
/*!40000 ALTER TABLE `yr2dv3` DISABLE KEYS */;
INSERT INTO `yr2dv3` VALUES ('3FAC','NG','PPA','PPA','PNS','PPA','FREE'),('3SUB','OOPC','COA','COA','CN','COA','FREE'),('4FAC','PNS','PNS','RCD','NG','RKP','FREE'),('4SUB','CN','CN','OS','OOPC','NSM','FREE'),('5FAC','PPA','RCD','PNS','RKP','FREE','NG'),('5SUB','COA','OS','CN','NSM','FREE','OOPC'),('6FAC','FREE','NG','RKP','RCD','FREE','RCD'),('6SUB','FREE','OOPC','NSM','OS','FREE','OS'),('AFAC','RCD','RKR','KGS','ANS','PNS','RKP'),('ALAB','OS','OOPC','DE-2','OOPC','CN','NSM'),('BFAC','NG','NG','RKP','PNS','RCD','KGS'),('BLAB','OOPC','OOPC','NSM','CN','OS','DE-2'),('CFAC','PNS','KGV','ANS','RKP','DEN','ABP'),('CLAB','CN','OS','OOPC','NSM','DE-2','OOPC'),('DFAC','ANS','PNS','RKR','RCD','RKP','PAP'),('DLAB','OOPC','CN','OOPC','OS','NSM','DE-2');
/*!40000 ALTER TABLE `yr2dv3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr3dv1`
--

DROP TABLE IF EXISTS `yr3dv1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr3dv1` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr3dv1`
--

LOCK TABLES `yr3dv1` WRITE;
/*!40000 ALTER TABLE `yr3dv1` DISABLE KEYS */;
INSERT INTO `yr3dv1` VALUES ('1FAC','KHT','AGD','DEN','DEN','FREE','DEN'),('1SUB','AJAVA','TOC','SE','SE','FREE','SE'),('2FAC','DEN','AAS','VSN','FREE','KHT','KHT'),('2SUB','SE','DNET','WT','FREE','AJAVA','AJAVA'),('3FAC','AGD','KHT','FREE','FREE','AAS','AAS'),('3SUB','TOC','AJAVA','FREE','FREE','DNET','DNET'),('4FAC','AAS','VSN','FREE','VSN','FREE','AGD'),('4SUB','DNET','WT','FREE','WT','FREE','TOC'),('AFAC','SSP','FREE','ARV','DEN','KHT','AAS'),('ALAB','DE-4','FREE','WT','SE','AJAVA','DNET'),('BFAC','DEN','PM','KHT','FREE','SJP','SSP'),('BLAB','SE','DNET','AJAVA','FREE','WT','DE-4'),('CFAC','ARV','VSN','SSP','FREE','AAS','DEN'),('CLAB','AJAVA','WT','DE-4','FREE','DNET','SE'),('DFAC','KHT','DEN','FREE','MPP','KGS','AMP'),('DLAB','AJAVA','SE','FREE','DNET','DE-4','WT');
/*!40000 ALTER TABLE `yr3dv1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr3dv2`
--

DROP TABLE IF EXISTS `yr3dv2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr3dv2` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr3dv2`
--

LOCK TABLES `yr3dv2` WRITE;
/*!40000 ALTER TABLE `yr3dv2` DISABLE KEYS */;
INSERT INTO `yr3dv2` VALUES ('1FAC','SSP','FREE','SSP','SSP','PM','PM'),('1SUB','SE','FREE','SE','SE','DNET','DNET'),('2FAC','SIR','FREE','FREE','PM','SIR','SSP'),('2SUB','TOC','FREE','FREE','DNET','TOC','SE'),('5FAC','PM','FREE','AMP','AMP','AMP','FREE'),('5SUB','DNET','FREE','WT','WT','WT','FREE'),('6FAC','FREE','SIR','SNR','SNR','SNR','SNR'),('6SUB','FREE','TOC','AJAVA','AJAVA','AJAVA','AJAVA'),('AFAC','PAP','FREE','PM','KGS','SNR','AMP'),('ALAB','DE-4','FREE','DNET','SE','AJAVA','WT'),('BFAC','FREE','PM','SNR','PAP','AMP','SSP'),('BLAB','FREE','DNET','AJAVA','DE-4','WT','SE'),('CFAC','PM','FREE','AMP','SNR','PAP','ARV'),('CLAB','DNET','FREE','WT','AJAVA','DE-4','SE'),('DFAC','SNR','ARV','VSN','FREE','SSP','PM'),('DLAB','AJAVA','WT','DE-4','FREE','SE','DNET');
/*!40000 ALTER TABLE `yr3dv2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr3dv3`
--

DROP TABLE IF EXISTS `yr3dv3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr3dv3` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr3dv3`
--

LOCK TABLES `yr3dv3` WRITE;
/*!40000 ALTER TABLE `yr3dv3` DISABLE KEYS */;
INSERT INTO `yr3dv3` VALUES ('3FAC','SJP','KGS','KGS','FREE','FREE','PPA'),('3SUB','WT','SE','SE','FREE','FREE','AJAVA'),('4FAC','MPP','PPA','FREE','SJP','FREE','KGS'),('4SUB','DNET','AJAVA','FREE','WT','FREE','SE'),('5FAC','KGS','MPP','MPP','FREE','MPP','FREE'),('5SUB','SE','DNET','DNET','FREE','DNET','FREE'),('6FAC','PPA','PNP','PNP','PPA','PNP','SJP'),('6SUB','AJAVA','TOC','TOC','AJAVA','TOC','WT'),('AFAC','PPA','MPP','FREE','VSN','KGS','SJP'),('ALAB','AJAVA','DNET','FREE','DE-4','SE','WT'),('BFAC','FREE','VSN','ARV','MPP','SJP','PPA'),('BLAB','FREE','DE-4','SE','DNET','WT','AJAVA'),('CFAC','MPP','KGS','FREE','SJP','PPA','VSN'),('CLAB','DNET','SE','FREE','WT','AJAVA','DE-4'),('DFAC','KGS','AMP','PPA','ARV','FREE','MPP'),('DLAB','SE','DE-4','AJAVA','WT','FREE','DNET');
/*!40000 ALTER TABLE `yr3dv3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr4dv1`
--

DROP TABLE IF EXISTS `yr4dv1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr4dv1` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr4dv1`
--

LOCK TABLES `yr4dv1` WRITE;
/*!40000 ALTER TABLE `yr4dv1` DISABLE KEYS */;
INSERT INTO `yr4dv1` VALUES ('1FAC','FREE','FREE','FREE','FREE','AGD','AGD'),('1SUB','FREE','FREE','FREE','FREE','AI','AI'),('2FAC','MMA','FREE','FREE','AGD','FREE','FREE'),('2SUB','PP','FREE','FREE','AI','FREE','FREE'),('3FAC','FREE','FREE','AGD','FREE','FREE','FREE'),('3SUB','FREE','FREE','AI','FREE','FREE','FREE'),('4FAC','FREE','FREE','FREE','FREE','MMA','MMA'),('4SUB','FREE','FREE','FREE','FREE','PP','PP'),('AFAC','FREE','AGD','FREE','FREE','FREE','MMA'),('ALAB','FREE','AI','FREE','FREE','FREE','PP'),('BFAC','PNP','FREE','FREE','FREE','YVS','FREE'),('BLAB','AI','FREE','FREE','FREE','PP','FREE'),('CFAC','FREE','FREE','FREE','FREE','MMA','ARV'),('CLAB','FREE','FREE','FREE','FREE','PP','AI'),('DFAC','FREE','FREE','AGD','FREE','NG','FREE'),('DLAB','FREE','FREE','AI','FREE','PP','FREE');
/*!40000 ALTER TABLE `yr4dv1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr4dv2`
--

DROP TABLE IF EXISTS `yr4dv2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr4dv2` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr4dv2`
--

LOCK TABLES `yr4dv2` WRITE;
/*!40000 ALTER TABLE `yr4dv2` DISABLE KEYS */;
INSERT INTO `yr4dv2` VALUES ('1FAC','FREE','FREE','FREE','FREE','FREE','FREE'),('1SUB','FREE','FREE','FREE','FREE','FREE','FREE'),('2FAC','YVS','FREE','FREE','FREE','FREE','SIR'),('2SUB','PP','FREE','FREE','FREE','FREE','AI'),('5FAC','SIR','YVS','FREE','YVS','FREE','FREE'),('5SUB','AI','PP','FREE','PP','FREE','FREE'),('6FAC','FREE','FREE','SIR','SIR','FREE','FREE'),('6SUB','FREE','FREE','AI','AI','FREE','FREE'),('AFAC','FREE','FREE','YVS','FREE','SIR','FREE'),('ALAB','FREE','FREE','PP','FREE','AI','FREE'),('BFAC','FREE','SIR','FREE','FREE','FREE','YVS'),('BLAB','FREE','AI','FREE','FREE','FREE','PP'),('CFAC','SIR','FREE','FREE','JKP','FREE','FREE'),('CLAB','AI','FREE','FREE','PP','FREE','FREE'),('DFAC','YVS','FREE','FREE','FREE','FREE','SIR'),('DLAB','PP','FREE','FREE','FREE','FREE','AI');
/*!40000 ALTER TABLE `yr4dv2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yr4dv3`
--

DROP TABLE IF EXISTS `yr4dv3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yr4dv3` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yr4dv3`
--

LOCK TABLES `yr4dv3` WRITE;
/*!40000 ALTER TABLE `yr4dv3` DISABLE KEYS */;
INSERT INTO `yr4dv3` VALUES ('3FAC','PNP','FREE','FREE','FREE','JKP','FREE'),('3SUB','AI','FREE','FREE','FREE','PP','FREE'),('4FAC','FREE','JKP','PNP','FREE','FREE','FREE'),('4SUB','FREE','PP','AI','FREE','FREE','FREE'),('5FAC','FREE','PNP','FREE','FREE','FREE','FREE'),('5SUB','FREE','AI','FREE','FREE','FREE','FREE'),('6FAC','FREE','FREE','FREE','JKP','FREE','PNP'),('6SUB','FREE','FREE','FREE','PP','FREE','AI'),('AFAC','FREE','FREE','FREE','FREE','PNP','JKP'),('ALAB','FREE','FREE','FREE','FREE','AI','PP'),('BFAC','FREE','JKP','PNP','FREE','FREE','FREE'),('BLAB','FREE','PP','AI','FREE','FREE','FREE'),('CFAC','JKP','FREE','FREE','FREE','FREE','PNP'),('CLAB','PP','FREE','FREE','FREE','FREE','AI'),('DFAC','PNP','FREE','FREE','JKP','FREE','FREE'),('DLAB','AI','FREE','FREE','PP','FREE','FREE');
/*!40000 ALTER TABLE `yr4dv3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yvs`
--

DROP TABLE IF EXISTS `yvs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yvs` (
  `slot` varchar(5) NOT NULL,
  `mon` varchar(5) DEFAULT NULL,
  `tue` varchar(5) DEFAULT NULL,
  `wed` varchar(5) DEFAULT NULL,
  `thu` varchar(5) DEFAULT NULL,
  `fri` varchar(5) DEFAULT NULL,
  `sat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yvs`
--

LOCK TABLES `yvs` WRITE;
/*!40000 ALTER TABLE `yvs` DISABLE KEYS */;
INSERT INTO `yvs` VALUES ('1CL','FREE','FREE','y2d1','FREE','FREE','y2d1'),('1SUB','FREE','FREE','COA','FREE','FREE','COA'),('2CL','y4d2','FREE','FREE','y2d1','FREE','FREE'),('2SUB','PP','FREE','FREE','COA','FREE','FREE'),('3CL','y4d2L','FREE','y4d2L','FREE','y2d1','y4d2L'),('3SUB','PP','FREE','PP','FREE','COA','PP'),('4CL','y4d2L','FREE','y4d2L','FREE','FREE','y4d2L'),('4SUB','PP','FREE','PP','FREE','FREE','PP'),('5CL','FREE','y4d2','FREE','y4d2','y4d1L','FREE'),('5SUB','FREE','PP','FREE','PP','PP','FREE'),('6CL','FREE','FREE','FREE','FREE','y4d1L','FREE'),('6SUB','FREE','FREE','FREE','FREE','PP','FREE');
/*!40000 ALTER TABLE `yvs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ttdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-07  0:34:10
