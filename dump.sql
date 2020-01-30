-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: car_dealership
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `horse_power` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `volume` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `car_model_uindex` (`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'A8',500,2016,'AUDI','sportcar',2),(2,'N389',450,2009,'NISSAN','suv',3),(3,'Veiron',650,2018,'Bugatti','sportcar',2.5),(4,'J122',300,2002,'Volvo','family',1.5),(5,'I8',400,2019,'BMW','sportcar',2.5),(6,'M3',350,2008,'BMW','sportcar',2),(7,'Galardo',480,2015,'Lamborgini','sportcar',3),(8,'4x4',550,2018,'NISSAN','suv',2.5),(9,'Coin',200,2001,'Zhiguli','family',1.5),(10,'K563',540,2065,'Zhuk','suv',4),(11,'F234',250,2020,'Ferrari','sportcar',3),(12,'Zonda',400,2018,'Pagani','sportcar',3.5),(13,'Z370',300,2009,'NISSAN','sportcar',3),(14,'M6',350,2012,'BMW','family',2.5),(16,'Rover',300,2018,'Range','family',2),(17,'Kashkay',405,2018,'NISSAN','suv',3),(18,'Sivik',380,2017,'HONDA','family',2),(19,'K20',150,2014,'TVR','sportcar',1),(20,'I6',190,2002,'BMW','family',1.5),(21,'Mustang',220,2015,'Ford','sportcar',2.5);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_email_uindex` (`email`),
  UNIQUE KEY `client_phone_uindex` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'kokos','palmovich',22,'123@gmail.com','354235423654','male'),(2,'Igor','Martin',34,'kek@mail.ru','246235625435','male'),(3,'Vika','Dudko',21,'vik.ka@gmail.com','264210838434','female'),(4,'Maks','Kekov',63,'spamer228@ukr.net','754045430534','male'),(5,'Viktor','Tort',24,'vitay.tort@mail.ru','845608948645','male'),(6,'Ira','Kusnir',19,'kushka@gmail.com','334957345454','female'),(7,'Yura','Kvarc',20,'lamer@gmail.com','348027345739','male'),(8,'Kolya','Proger',33,'best.proger@mail.ru','285346856384','male'),(9,'Masha','Hr',24,'mashka@ukr.net','295346534654','female'),(10,'Petro','Dudka',39,'petya.dudka@gmail.com','234238642545','male'),(11,'Roman','Liush',25,'liush@gmail.com','346534865346','male'),(12,'Kolya','Povtornuk',27,'povt.kolya.mail.ru','678954674562','male'),(13,'Diana','Rozhko',38,'rozzzzko@ukr.net','285345658456','female'),(14,'Sergiy','Neghuravlov',31,'serg.shuravlov@gmail.com','238423423454','male'),(15,'Viktor','Kmin',24,'kmin.vitya@gmail.com','236482375678','male'),(16,'Ivan','Voloshyn',22,'volosh.ka@gmail.com','546054786052','male'),(17,'Danulo','Dusha',64,'ddusha@mail.ru','230457023450','male'),(18,'Ivan','Tarabasenko',23,'tarvan@gmail.com','272346569346','male'),(19,'Lilya','Morenko',43,'morenko1209@gmail.com','234705234302','female'),(20,'Dima','Klumko',37,'dko1423@gmail.com','327542365634','male');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-30 10:21:57
