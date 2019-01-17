start transaction;

create database `Acme-Handy-Worker`;

use `Acme-Handy-Worker`;

create user 'acme-user'@'%' identified by password '*4F10007AADA9EE3DBB2CC36575DFC6F4FDE27577';
create user 'acme-manager'@'%'	identified by password '*FDB8CD304EB2317D10C95D797A4BD7492560F55F';

grant select, insert, update, delete 	on `Acme-Handy-Worker`.* to 'acme-user'@'%';
grant select, insert, update, delete, create, drop, references, index, alter,  create temporary tables, lock tables, create view, create routine,      alter routine, execute, trigger, show view   on `Acme-Handy-Worker`.* to 'acme-manager'@'%';





-- MySQL dump 10.13  Distrib 5.5.29, for Win64 (x86)
--
-- Host: localhost    Database: Acme-Handy-Worker
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_banned` bit(1) DEFAULT NULL,
  `is_suspicious` bit(1) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_i7xei45auwq1f6vu25985riuh` (`user_account`),
  CONSTRAINT `FK_i7xei45auwq1f6vu25985riuh` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_message_boxes`
--

DROP TABLE IF EXISTS `actor_message_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_message_boxes` (
  `actor` int(11) NOT NULL,
  `message_boxes` int(11) NOT NULL,
  UNIQUE KEY `UK_gsokk7rk6i6vd87e6dvdxfapu` (`message_boxes`),
  CONSTRAINT `FK_gsokk7rk6i6vd87e6dvdxfapu` FOREIGN KEY (`message_boxes`) REFERENCES `message_box` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_message_boxes`
--

LOCK TABLES `actor_message_boxes` WRITE;
/*!40000 ALTER TABLE `actor_message_boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `actor_message_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_profiles`
--

DROP TABLE IF EXISTS `actor_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor_profiles` (
  `actor` int(11) NOT NULL,
  `profiles` int(11) NOT NULL,
  UNIQUE KEY `UK_hdd4x67ooucg6f2yfe4edbs52` (`profiles`),
  CONSTRAINT `FK_hdd4x67ooucg6f2yfe4edbs52` FOREIGN KEY (`profiles`) REFERENCES `profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_profiles`
--

LOCK TABLES `actor_profiles` WRITE;
/*!40000 ALTER TABLE `actor_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `actor_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_banned` bit(1) DEFAULT NULL,
  `is_suspicious` bit(1) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7ohwsa2usmvu0yxb44je2lge` (`user_account`),
  CONSTRAINT `FK_7ohwsa2usmvu0yxb44je2lge` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `offered_price` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `credit_card` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qrtc8d7gr5htxb67vvyl92du7` (`credit_card`),
  CONSTRAINT `FK_qrtc8d7gr5htxb67vvyl92du7` FOREIGN KEY (`credit_card`) REFERENCES `credit_card` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_descendants`
--

DROP TABLE IF EXISTS `category_descendants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_descendants` (
  `category` int(11) NOT NULL,
  `descendants` int(11) NOT NULL,
  UNIQUE KEY `UK_im3wxbixfhgsmwml30axxdo3s` (`descendants`),
  KEY `FK_auyap4jwnrpmpr92bvwk5o8j3` (`category`),
  CONSTRAINT `FK_auyap4jwnrpmpr92bvwk5o8j3` FOREIGN KEY (`category`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_im3wxbixfhgsmwml30axxdo3s` FOREIGN KEY (`descendants`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_descendants`
--

LOCK TABLES `category_descendants` WRITE;
/*!40000 ALTER TABLE `category_descendants` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_descendants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_name`
--

DROP TABLE IF EXISTS `category_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_name` (
  `category` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  KEY `FK_n4pwmvmxwxd91xyngs4w968sq` (`category`),
  CONSTRAINT `FK_n4pwmvmxwxd91xyngs4w968sq` FOREIGN KEY (`category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_name`
--

LOCK TABLES `category_name` WRITE;
/*!40000 ALTER TABLE `category_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `report` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fm13lupfpb4fupauammfftwyl` (`report`),
  UNIQUE KEY `UK_jlpo668tu0b8mmsjsg8g13inu` (`ticker`),
  CONSTRAINT `FK_fm13lupfpb4fupauammfftwyl` FOREIGN KEY (`report`) REFERENCES `report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_card` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `expiration_month` int(11) NOT NULL,
  `expiration_year` int(11) NOT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card`
--

LOCK TABLES `credit_card` WRITE;
/*!40000 ALTER TABLE `credit_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum`
--

DROP TABLE IF EXISTS `curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `personal_records` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8rpjgwta5wikdsdpfllhckwvo` (`personal_records`),
  CONSTRAINT `FK_8rpjgwta5wikdsdpfllhckwvo` FOREIGN KEY (`personal_records`) REFERENCES `personal_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum`
--

LOCK TABLES `curriculum` WRITE;
/*!40000 ALTER TABLE `curriculum` DISABLE KEYS */;
/*!40000 ALTER TABLE `curriculum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum_education_records`
--

DROP TABLE IF EXISTS `curriculum_education_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum_education_records` (
  `curriculum` int(11) NOT NULL,
  `education_records` int(11) NOT NULL,
  UNIQUE KEY `UK_mglbvuj28iptdf2n2wliy5dne` (`education_records`),
  KEY `FK_f6du7wj59ct8k4fkxo6p6avc` (`curriculum`),
  CONSTRAINT `FK_f6du7wj59ct8k4fkxo6p6avc` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`),
  CONSTRAINT `FK_mglbvuj28iptdf2n2wliy5dne` FOREIGN KEY (`education_records`) REFERENCES `education_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum_education_records`
--

LOCK TABLES `curriculum_education_records` WRITE;
/*!40000 ALTER TABLE `curriculum_education_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `curriculum_education_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum_endorser_records`
--

DROP TABLE IF EXISTS `curriculum_endorser_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum_endorser_records` (
  `curriculum` int(11) NOT NULL,
  `endorser_records` int(11) NOT NULL,
  UNIQUE KEY `UK_pnjnunpdx94xdol4lxbq5aphh` (`endorser_records`),
  KEY `FK_lb4478p6kh3k7ps8fbdiqvds` (`curriculum`),
  CONSTRAINT `FK_lb4478p6kh3k7ps8fbdiqvds` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`),
  CONSTRAINT `FK_pnjnunpdx94xdol4lxbq5aphh` FOREIGN KEY (`endorser_records`) REFERENCES `endorser_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum_endorser_records`
--

LOCK TABLES `curriculum_endorser_records` WRITE;
/*!40000 ALTER TABLE `curriculum_endorser_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `curriculum_endorser_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum_miscellaneous_records`
--

DROP TABLE IF EXISTS `curriculum_miscellaneous_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum_miscellaneous_records` (
  `curriculum` int(11) NOT NULL,
  `miscellaneous_records` int(11) NOT NULL,
  UNIQUE KEY `UK_hbex6yqhywe93w3clw8y1od2q` (`miscellaneous_records`),
  KEY `FK_fxsf5ohw20jbm0wuny6j1nnc9` (`curriculum`),
  CONSTRAINT `FK_fxsf5ohw20jbm0wuny6j1nnc9` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`),
  CONSTRAINT `FK_hbex6yqhywe93w3clw8y1od2q` FOREIGN KEY (`miscellaneous_records`) REFERENCES `miscellaneous_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum_miscellaneous_records`
--

LOCK TABLES `curriculum_miscellaneous_records` WRITE;
/*!40000 ALTER TABLE `curriculum_miscellaneous_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `curriculum_miscellaneous_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum_professional_records`
--

DROP TABLE IF EXISTS `curriculum_professional_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum_professional_records` (
  `curriculum` int(11) NOT NULL,
  `professional_records` int(11) NOT NULL,
  UNIQUE KEY `UK_7354sjhp7ih49qku2slvgb166` (`professional_records`),
  KEY `FK_amicw5c3dbgqi4vafcy7wi02i` (`curriculum`),
  CONSTRAINT `FK_amicw5c3dbgqi4vafcy7wi02i` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`),
  CONSTRAINT `FK_7354sjhp7ih49qku2slvgb166` FOREIGN KEY (`professional_records`) REFERENCES `professional_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum_professional_records`
--

LOCK TABLES `curriculum_professional_records` WRITE;
/*!40000 ALTER TABLE `curriculum_professional_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `curriculum_professional_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_banned` bit(1) DEFAULT NULL,
  `is_suspicious` bit(1) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mbvdes9ypo1yu76so76owiyqx` (`user_account`),
  CONSTRAINT `FK_mbvdes9ypo1yu76so76owiyqx` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_fix_up_tasks`
--

DROP TABLE IF EXISTS `customer_fix_up_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_fix_up_tasks` (
  `customer` int(11) NOT NULL,
  `fix_up_tasks` int(11) NOT NULL,
  UNIQUE KEY `UK_psqf2cbws8l6hrs05kkmo4t6f` (`fix_up_tasks`),
  KEY `FK_5p35y62n78kja3clklj2axyy3` (`customer`),
  CONSTRAINT `FK_5p35y62n78kja3clklj2axyy3` FOREIGN KEY (`customer`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_psqf2cbws8l6hrs05kkmo4t6f` FOREIGN KEY (`fix_up_tasks`) REFERENCES `fix_up_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_fix_up_tasks`
--

LOCK TABLES `customer_fix_up_tasks` WRITE;
/*!40000 ALTER TABLE `customer_fix_up_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_fix_up_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_record`
--

DROP TABLE IF EXISTS `education_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `finish_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `title_of_diploma` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_record`
--

LOCK TABLES `education_record` WRITE;
/*!40000 ALTER TABLE `education_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `education_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endorsement`
--

DROP TABLE IF EXISTS `endorsement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endorsement` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `endorser` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endorsement`
--

LOCK TABLES `endorsement` WRITE;
/*!40000 ALTER TABLE `endorsement` DISABLE KEYS */;
/*!40000 ALTER TABLE `endorsement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endorser`
--

DROP TABLE IF EXISTS `endorser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endorser` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_banned` bit(1) DEFAULT NULL,
  `is_suspicious` bit(1) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_chxa03fult08er3kxw8xyjqjb` (`user_account`),
  CONSTRAINT `FK_chxa03fult08er3kxw8xyjqjb` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endorser`
--

LOCK TABLES `endorser` WRITE;
/*!40000 ALTER TABLE `endorser` DISABLE KEYS */;
/*!40000 ALTER TABLE `endorser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endorser_record`
--

DROP TABLE IF EXISTS `endorser_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endorser_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullendorser_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endorser_record`
--

LOCK TABLES `endorser_record` WRITE;
/*!40000 ALTER TABLE `endorser_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `endorser_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finder`
--

DROP TABLE IF EXISTS `finder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finder` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `end_date` date DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `max_price` double DEFAULT NULL,
  `min_price` double DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `warranty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_n9t1ayk0x7h5vrsfuhygo043j` (`category`),
  KEY `FK_fsgvely8c4othsty26jul4qfl` (`warranty`),
  CONSTRAINT `FK_fsgvely8c4othsty26jul4qfl` FOREIGN KEY (`warranty`) REFERENCES `warranty` (`id`),
  CONSTRAINT `FK_n9t1ayk0x7h5vrsfuhygo043j` FOREIGN KEY (`category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finder`
--

LOCK TABLES `finder` WRITE;
/*!40000 ALTER TABLE `finder` DISABLE KEYS */;
/*!40000 ALTER TABLE `finder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finder_fix_up_tasks`
--

DROP TABLE IF EXISTS `finder_fix_up_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finder_fix_up_tasks` (
  `finder` int(11) NOT NULL,
  `fix_up_tasks` int(11) NOT NULL,
  KEY `FK_mxx0exr9sl0tqpfmt67rn9ntw` (`fix_up_tasks`),
  KEY `FK_3lx1mc9naw2l6iynabqyqm46m` (`finder`),
  CONSTRAINT `FK_3lx1mc9naw2l6iynabqyqm46m` FOREIGN KEY (`finder`) REFERENCES `finder` (`id`),
  CONSTRAINT `FK_mxx0exr9sl0tqpfmt67rn9ntw` FOREIGN KEY (`fix_up_tasks`) REFERENCES `fix_up_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finder_fix_up_tasks`
--

LOCK TABLES `finder_fix_up_tasks` WRITE;
/*!40000 ALTER TABLE `finder_fix_up_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `finder_fix_up_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fix_up_task`
--

DROP TABLE IF EXISTS `fix_up_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fix_up_task` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `maximum_price` double DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `warranty` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rraseqm4xixdwpi08ac3s0wo5` (`category`),
  KEY `FK_eeisx1c0ohidkpqgqbib91s6x` (`warranty`),
  CONSTRAINT `FK_eeisx1c0ohidkpqgqbib91s6x` FOREIGN KEY (`warranty`) REFERENCES `warranty` (`id`),
  CONSTRAINT `FK_rraseqm4xixdwpi08ac3s0wo5` FOREIGN KEY (`category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fix_up_task`
--

LOCK TABLES `fix_up_task` WRITE;
/*!40000 ALTER TABLE `fix_up_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `fix_up_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fix_up_task_applications`
--

DROP TABLE IF EXISTS `fix_up_task_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fix_up_task_applications` (
  `fix_up_task` int(11) NOT NULL,
  `applications` int(11) NOT NULL,
  UNIQUE KEY `UK_spt3297r11e4kwdv1h8w539py` (`applications`),
  KEY `FK_9jpgq78ee5hf6g3d4vxlv9weu` (`fix_up_task`),
  CONSTRAINT `FK_9jpgq78ee5hf6g3d4vxlv9weu` FOREIGN KEY (`fix_up_task`) REFERENCES `fix_up_task` (`id`),
  CONSTRAINT `FK_spt3297r11e4kwdv1h8w539py` FOREIGN KEY (`applications`) REFERENCES `application` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fix_up_task_applications`
--

LOCK TABLES `fix_up_task_applications` WRITE;
/*!40000 ALTER TABLE `fix_up_task_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `fix_up_task_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fix_up_task_complaints`
--

DROP TABLE IF EXISTS `fix_up_task_complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fix_up_task_complaints` (
  `fix_up_task` int(11) NOT NULL,
  `complaints` int(11) NOT NULL,
  UNIQUE KEY `UK_denq0b9bugd39i74w1jci5n4f` (`complaints`),
  KEY `FK_l36wju9eh2p76dvktefstegh0` (`fix_up_task`),
  CONSTRAINT `FK_l36wju9eh2p76dvktefstegh0` FOREIGN KEY (`fix_up_task`) REFERENCES `fix_up_task` (`id`),
  CONSTRAINT `FK_denq0b9bugd39i74w1jci5n4f` FOREIGN KEY (`complaints`) REFERENCES `complaint` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fix_up_task_complaints`
--

LOCK TABLES `fix_up_task_complaints` WRITE;
/*!40000 ALTER TABLE `fix_up_task_complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `fix_up_task_complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fix_up_task_phases`
--

DROP TABLE IF EXISTS `fix_up_task_phases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fix_up_task_phases` (
  `fix_up_task` int(11) NOT NULL,
  `phases` int(11) NOT NULL,
  UNIQUE KEY `UK_g0happ3dypgasjxo76l9wv58g` (`phases`),
  KEY `FK_26itr0ptcg08ju96f9is6am1o` (`fix_up_task`),
  CONSTRAINT `FK_26itr0ptcg08ju96f9is6am1o` FOREIGN KEY (`fix_up_task`) REFERENCES `fix_up_task` (`id`),
  CONSTRAINT `FK_g0happ3dypgasjxo76l9wv58g` FOREIGN KEY (`phases`) REFERENCES `phase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fix_up_task_phases`
--

LOCK TABLES `fix_up_task_phases` WRITE;
/*!40000 ALTER TABLE `fix_up_task_phases` DISABLE KEYS */;
/*!40000 ALTER TABLE `fix_up_task_phases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `handy_worker`
--

DROP TABLE IF EXISTS `handy_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `handy_worker` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_banned` bit(1) DEFAULT NULL,
  `is_suspicious` bit(1) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user_account` int(11) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `curriculum` int(11) DEFAULT NULL,
  `finder` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_s80hn9dk7bcwsqotvtoo6wxr3` (`finder`),
  KEY `FK_qilb1l0o66abqy9o4fk8accvs` (`curriculum`),
  KEY `FK_jpa4nvxb706tgsd90160obc6r` (`user_account`),
  CONSTRAINT `FK_jpa4nvxb706tgsd90160obc6r` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`),
  CONSTRAINT `FK_qilb1l0o66abqy9o4fk8accvs` FOREIGN KEY (`curriculum`) REFERENCES `curriculum` (`id`),
  CONSTRAINT `FK_s80hn9dk7bcwsqotvtoo6wxr3` FOREIGN KEY (`finder`) REFERENCES `finder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handy_worker`
--

LOCK TABLES `handy_worker` WRITE;
/*!40000 ALTER TABLE `handy_worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `handy_worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `handy_worker_applications`
--

DROP TABLE IF EXISTS `handy_worker_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `handy_worker_applications` (
  `handy_worker` int(11) NOT NULL,
  `applications` int(11) NOT NULL,
  UNIQUE KEY `UK_sokcf9u1ylt39oc71bodkf5c8` (`applications`),
  KEY `FK_hbf0tvl03gm2qbu93oox0mml6` (`handy_worker`),
  CONSTRAINT `FK_hbf0tvl03gm2qbu93oox0mml6` FOREIGN KEY (`handy_worker`) REFERENCES `handy_worker` (`id`),
  CONSTRAINT `FK_sokcf9u1ylt39oc71bodkf5c8` FOREIGN KEY (`applications`) REFERENCES `application` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handy_worker_applications`
--

LOCK TABLES `handy_worker_applications` WRITE;
/*!40000 ALTER TABLE `handy_worker_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `handy_worker_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('domain_entity',1);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `sender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_box`
--

DROP TABLE IF EXISTS `message_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_box` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `system_box` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_box`
--

LOCK TABLES `message_box` WRITE;
/*!40000 ALTER TABLE `message_box` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_box_messages`
--

DROP TABLE IF EXISTS `message_box_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_box_messages` (
  `message_box` int(11) NOT NULL,
  `messages` int(11) NOT NULL,
  KEY `FK_4ydibw5107qpqjwmw37t3cx5c` (`messages`),
  KEY `FK_i9fsy1u5e0dyn977c4uhdupur` (`message_box`),
  CONSTRAINT `FK_i9fsy1u5e0dyn977c4uhdupur` FOREIGN KEY (`message_box`) REFERENCES `message_box` (`id`),
  CONSTRAINT `FK_4ydibw5107qpqjwmw37t3cx5c` FOREIGN KEY (`messages`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_box_messages`
--

LOCK TABLES `message_box_messages` WRITE;
/*!40000 ALTER TABLE `message_box_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_box_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_recipients`
--

DROP TABLE IF EXISTS `message_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_recipients` (
  `message` int(11) NOT NULL,
  `recipients` int(11) NOT NULL,
  KEY `FK_1odmg2n3n487tvhuxx5oyyya2` (`message`),
  CONSTRAINT `FK_1odmg2n3n487tvhuxx5oyyya2` FOREIGN KEY (`message`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_recipients`
--

LOCK TABLES `message_recipients` WRITE;
/*!40000 ALTER TABLE `message_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miscellaneous_record`
--

DROP TABLE IF EXISTS `miscellaneous_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miscellaneous_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miscellaneous_record`
--

LOCK TABLES `miscellaneous_record` WRITE;
/*!40000 ALTER TABLE `miscellaneous_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscellaneous_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `creator_comment` varchar(255) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_record`
--

DROP TABLE IF EXISTS `personal_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_record`
--

LOCK TABLES `personal_record` WRITE;
/*!40000 ALTER TABLE `personal_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phase`
--

DROP TABLE IF EXISTS `phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phase` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_moment` datetime DEFAULT NULL,
  `start_moment` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phase`
--

LOCK TABLES `phase` WRITE;
/*!40000 ALTER TABLE `phase` DISABLE KEYS */;
/*!40000 ALTER TABLE `phase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professional_record`
--

DROP TABLE IF EXISTS `professional_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professional_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `finish_date` date DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional_record`
--

LOCK TABLES `professional_record` WRITE;
/*!40000 ALTER TABLE `professional_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `professional_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `sn_link` varchar(255) DEFAULT NULL,
  `social_network` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referee`
--

DROP TABLE IF EXISTS `referee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referee` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_banned` bit(1) DEFAULT NULL,
  `is_suspicious` bit(1) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_303c1oipw0t6mbnnpvtfv70w5` (`user_account`),
  CONSTRAINT `FK_303c1oipw0t6mbnnpvtfv70w5` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referee`
--

LOCK TABLES `referee` WRITE;
/*!40000 ALTER TABLE `referee` DISABLE KEYS */;
/*!40000 ALTER TABLE `referee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `draft_mode` bit(1) NOT NULL,
  `moment` datetime DEFAULT NULL,
  `referee` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tdhsgxfp2kgx2mqkwh1l51x8j` (`referee`),
  CONSTRAINT `FK_tdhsgxfp2kgx2mqkwh1l51x8j` FOREIGN KEY (`referee`) REFERENCES `referee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_notes`
--

DROP TABLE IF EXISTS `report_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_notes` (
  `report` int(11) NOT NULL,
  `notes` int(11) NOT NULL,
  UNIQUE KEY `UK_m22isl38uqck3fp3rmsmbnh5k` (`notes`),
  KEY `FK_o7r37khw24dlpe07md1qqakce` (`report`),
  CONSTRAINT `FK_o7r37khw24dlpe07md1qqakce` FOREIGN KEY (`report`) REFERENCES `report` (`id`),
  CONSTRAINT `FK_m22isl38uqck3fp3rmsmbnh5k` FOREIGN KEY (`notes`) REFERENCES `note` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_notes`
--

LOCK TABLES `report_notes` WRITE;
/*!40000 ALTER TABLE `report_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `numeric_score` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `pictures` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_banned` bit(1) DEFAULT NULL,
  `is_suspicious` bit(1) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_du2w5ldt8rvlvxvtr7vyxk7g3` (`user_account`),
  CONSTRAINT `FK_du2w5ldt8rvlvxvtr7vyxk7g3` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsorship`
--

DROP TABLE IF EXISTS `sponsorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsorship` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `target_page` varchar(255) DEFAULT NULL,
  `credit_card` int(11) NOT NULL,
  `sponsor` int(11) NOT NULL,
  `tutorial` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b1c71pwhg9slb986j8kl7uul1` (`credit_card`),
  KEY `FK_huglhkud0ihqdljyou4eshra6` (`sponsor`),
  KEY `FK_hddl83ddicym7ft1xmg89d4c6` (`tutorial`),
  CONSTRAINT `FK_hddl83ddicym7ft1xmg89d4c6` FOREIGN KEY (`tutorial`) REFERENCES `tutorial` (`id`),
  CONSTRAINT `FK_b1c71pwhg9slb986j8kl7uul1` FOREIGN KEY (`credit_card`) REFERENCES `credit_card` (`id`),
  CONSTRAINT `FK_huglhkud0ihqdljyou4eshra6` FOREIGN KEY (`sponsor`) REFERENCES `sponsor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsorship`
--

LOCK TABLES `sponsorship` WRITE;
/*!40000 ALTER TABLE `sponsorship` DISABLE KEYS */;
/*!40000 ALTER TABLE `sponsorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config`
--

DROP TABLE IF EXISTS `system_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `finder_max_results` int(11) DEFAULT NULL,
  `finder_timer` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_prefix` varchar(255) DEFAULT NULL,
  `vat` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config`
--

LOCK TABLES `system_config` WRITE;
/*!40000 ALTER TABLE `system_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config_bad_words`
--

DROP TABLE IF EXISTS `system_config_bad_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config_bad_words` (
  `system_config` int(11) NOT NULL,
  `bad_words` varchar(255) DEFAULT NULL,
  KEY `FK_j066nnyvuvm2571waqw0x8vm7` (`system_config`),
  CONSTRAINT `FK_j066nnyvuvm2571waqw0x8vm7` FOREIGN KEY (`system_config`) REFERENCES `system_config` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config_bad_words`
--

LOCK TABLES `system_config_bad_words` WRITE;
/*!40000 ALTER TABLE `system_config_bad_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_config_bad_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config_credit_card_prefix`
--

DROP TABLE IF EXISTS `system_config_credit_card_prefix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config_credit_card_prefix` (
  `system_config` int(11) NOT NULL,
  `credit_card_prefix` varchar(255) DEFAULT NULL,
  KEY `FK_18css5u61t8eggp7l7itji9au` (`system_config`),
  CONSTRAINT `FK_18css5u61t8eggp7l7itji9au` FOREIGN KEY (`system_config`) REFERENCES `system_config` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config_credit_card_prefix`
--

LOCK TABLES `system_config_credit_card_prefix` WRITE;
/*!40000 ALTER TABLE `system_config_credit_card_prefix` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_config_credit_card_prefix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config_good_words`
--

DROP TABLE IF EXISTS `system_config_good_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config_good_words` (
  `system_config` int(11) NOT NULL,
  `good_words` varchar(255) DEFAULT NULL,
  KEY `FK_70uipkvcjdk0cxepcqf0l7lhe` (`system_config`),
  CONSTRAINT `FK_70uipkvcjdk0cxepcqf0l7lhe` FOREIGN KEY (`system_config`) REFERENCES `system_config` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config_good_words`
--

LOCK TABLES `system_config_good_words` WRITE;
/*!40000 ALTER TABLE `system_config_good_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_config_good_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config_spam_words`
--

DROP TABLE IF EXISTS `system_config_spam_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config_spam_words` (
  `system_config` int(11) NOT NULL,
  `spam_words` varchar(255) DEFAULT NULL,
  KEY `FK_77ifj6lixsuyq1d5ivfjkf97w` (`system_config`),
  CONSTRAINT `FK_77ifj6lixsuyq1d5ivfjkf97w` FOREIGN KEY (`system_config`) REFERENCES `system_config` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config_spam_words`
--

LOCK TABLES `system_config_spam_words` WRITE;
/*!40000 ALTER TABLE `system_config_spam_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_config_spam_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config_welcome_message`
--

DROP TABLE IF EXISTS `system_config_welcome_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config_welcome_message` (
  `system_config` int(11) NOT NULL,
  `welcome_message` varchar(255) DEFAULT NULL,
  KEY `FK_q5yihm2c1j8dh9rk8fmuq0u7r` (`system_config`),
  CONSTRAINT `FK_q5yihm2c1j8dh9rk8fmuq0u7r` FOREIGN KEY (`system_config`) REFERENCES `system_config` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config_welcome_message`
--

LOCK TABLES `system_config_welcome_message` WRITE;
/*!40000 ALTER TABLE `system_config_welcome_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_config_welcome_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial`
--

DROP TABLE IF EXISTS `tutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorial` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `handyworker` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_432mn758hvej4urnhy8girug` (`handyworker`),
  CONSTRAINT `FK_432mn758hvej4urnhy8girug` FOREIGN KEY (`handyworker`) REFERENCES `handy_worker` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial`
--

LOCK TABLES `tutorial` WRITE;
/*!40000 ALTER TABLE `tutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial_sections`
--

DROP TABLE IF EXISTS `tutorial_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorial_sections` (
  `tutorial` int(11) NOT NULL,
  `sections` int(11) NOT NULL,
  UNIQUE KEY `UK_fam9vwtnrx0m7vmnqngwoekdo` (`sections`),
  KEY `FK_8sl8cpfc93exnk3nv9a6okamu` (`tutorial`),
  CONSTRAINT `FK_8sl8cpfc93exnk3nv9a6okamu` FOREIGN KEY (`tutorial`) REFERENCES `tutorial` (`id`),
  CONSTRAINT `FK_fam9vwtnrx0m7vmnqngwoekdo` FOREIGN KEY (`sections`) REFERENCES `section` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial_sections`
--

LOCK TABLES `tutorial_sections` WRITE;
/*!40000 ALTER TABLE `tutorial_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorial_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_castjbvpeeus0r8lbpehiu0e4` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (2,0,'21232f297a57a5a743894a0e4a801fc3','admin');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account_authorities`
--

DROP TABLE IF EXISTS `user_account_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account_authorities` (
  `user_account` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  KEY `FK_pao8cwh93fpccb0bx6ilq6gsl` (`user_account`),
  CONSTRAINT `FK_pao8cwh93fpccb0bx6ilq6gsl` FOREIGN KEY (`user_account`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account_authorities`
--

LOCK TABLES `user_account_authorities` WRITE;
/*!40000 ALTER TABLE `user_account_authorities` DISABLE KEYS */;
INSERT INTO `user_account_authorities` VALUES (2,'ADMIN');
/*!40000 ALTER TABLE `user_account_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warranty`
--

DROP TABLE IF EXISTS `warranty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warranty` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `applicable_laws` varchar(255) DEFAULT NULL,
  `draft_mode` bit(1) NOT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warranty`
--

LOCK TABLES `warranty` WRITE;
/*!40000 ALTER TABLE `warranty` DISABLE KEYS */;
/*!40000 ALTER TABLE `warranty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-17 19:51:11
