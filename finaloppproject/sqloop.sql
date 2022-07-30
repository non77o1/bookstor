-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: sunshine
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `username` varchar(45) NOT NULL,
  `password` varchar(4) NOT NULL,
  `person_id` int NOT NULL,
  `rule` char(1) NOT NULL,
  PRIMARY KEY (`username`,`password`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('Ahmid44','4409',4,'m'),('ali55','5509',7,'e'),('asma99','9909',6,'c'),('fatima99','9909',11,'e'),('hn11','1109',1,'c'),('khalid99','9909',9,'e'),('maha33','3309',3,'c'),('mohammed77','7709',10,'e'),('omar88','8809',8,'e'),('sara22','2209',2,'c');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `book_price` double NOT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (4,'IT',88,'networking'),(5,'Programing',48,'CS'),(7,'CS',79,'ComputerSciences');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `holder_name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `ccv` varchar(3) NOT NULL,
  `card_number` varchar(18) NOT NULL,
  `Payment_id` int NOT NULL,
  `Order_Total_price` double DEFAULT NULL,
  `num_items` int DEFAULT NULL,
  PRIMARY KEY (`Payment_id`),
  CONSTRAINT `card_ibfk_1` FOREIGN KEY (`Payment_id`) REFERENCES `payment_methods` (`Payment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES ('hh','hh','77','hh',6,70,1),('visa','sara','098','66677865544',10,70,1),('viza','Hneen','880','1122334455667788',12,268,3),('visa','Hneen','440','6667543098124567',24,239,3);
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `order_id` int NOT NULL,
  `item_id` int NOT NULL,
  `num_item` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`order_id`,`item_id`),
  KEY `itemid_idx` (`item_id`),
  CONSTRAINT `itemid` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderid` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (2,2,2,140),(3,2,1,70),(4,2,1,70),(5,2,1,70),(6,2,1,70),(7,2,1,70),(8,2,1,70),(9,2,1,70),(10,2,1,70),(11,2,2,140),(11,3,1,99),(11,5,1,48),(11,6,1,99),(12,2,1,70),(12,3,1,99),(12,6,1,99),(13,3,1,99),(13,5,1,48),(14,3,1,99),(14,6,1,99),(16,5,2,96),(16,6,1,99),(17,4,1,88),(18,5,1,48),(18,6,2,198),(20,2,1,70),(20,4,3,264),(22,2,2,140),(22,4,1,88),(24,2,2,140),(24,6,1,99),(25,3,1,99),(25,6,1,99),(25,7,2,158);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash`
--

DROP TABLE IF EXISTS `cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash` (
  `Payment_id` int NOT NULL,
  `Order_Total_price` double DEFAULT NULL,
  `currency` varchar(4) DEFAULT NULL,
  `num_items` int DEFAULT NULL,
  PRIMARY KEY (`Payment_id`),
  CONSTRAINT `cash_ibfk_1` FOREIGN KEY (`Payment_id`) REFERENCES `payment_methods` (`Payment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash`
--

LOCK TABLES `cash` WRITE;
/*!40000 ALTER TABLE `cash` DISABLE KEYS */;
INSERT INTO `cash` VALUES (9,70,'SAR',1),(13,147,'SAR',2),(14,198,'SAR',2),(16,195,'SAR',3),(17,88,'SAR',1),(18,246,'SAR',3),(25,356,'SAR',4);
/*!40000 ALTER TABLE `cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd`
--

DROP TABLE IF EXISTS `cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cd` (
  `CD_id` int NOT NULL,
  `CD_name` varchar(45) NOT NULL,
  `CD_price` double NOT NULL,
  PRIMARY KEY (`CD_id`),
  CONSTRAINT `cd_ibfk_1` FOREIGN KEY (`CD_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd`
--

LOCK TABLES `cd` WRITE;
/*!40000 ALTER TABLE `cd` DISABLE KEYS */;
INSERT INTO `cd` VALUES (2,'CIS',70),(3,'cs',99),(6,'mangment',99),(8,'OOP',88);
/*!40000 ALTER TABLE `cd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `coustomer_id` int NOT NULL AUTO_INCREMENT,
  `coustomer_name` varchar(45) NOT NULL,
  `coustomer_address` varchar(45) NOT NULL,
  `coustomer_Email` varchar(45) NOT NULL,
  PRIMARY KEY (`coustomer_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`coustomer_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'hneen','Dammam','hneen11@gmail.com'),(2,'sara','Dammam','sara22@gmail.com'),(3,'maha','Jeddah','maha33@gmail.com'),(5,'hneen','damamm','jj@gmail.com'),(6,'asma','Khybar','asma99@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_id` int NOT NULL AUTO_INCREMENT,
  `Employee_name` varchar(45) NOT NULL,
  `Employee_address` varchar(45) NOT NULL,
  `Employee_Email` varchar(45) NOT NULL,
  `salary` double DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `supervise_id` int DEFAULT NULL,
  PRIMARY KEY (`Employee_id`),
  KEY `supervise_id_idx` (`supervise_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Employee_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `supervise_id` FOREIGN KEY (`supervise_id`) REFERENCES `manager` (`manager_id`),
  CONSTRAINT `check_salary` CHECK ((`salary` <= 10000))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (4,'ahmid','Dammam','ahmid44@gmail.com',1890,'2022-06-11',4),(7,'ali','Dammam','ali55@gmail.com',1100,'2022-05-20',4),(8,'omar','Khobar','omar88@gmail.com',1200,'2022-05-20',4),(9,'khalid','Jeddah','khalid99@gmail.com',NULL,NULL,4),(10,'mohammed','Medina','mohammed77@gmail.com',NULL,NULL,4),(11,'fatima ','dammam','fatima99@gmail.com',6778,'2022-05-19',4);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (2),(3),(4),(5),(6),(7),(8);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `manager_id` int NOT NULL,
  `library_name` varchar(45) NOT NULL,
  PRIMARY KEY (`manager_id`,`library_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (4,'sumshine');
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `manager_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (4);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_record`
--

DROP TABLE IF EXISTS `order_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_record` (
  `order_id` int NOT NULL,
  `custemer_id` int NOT NULL,
  `pay_id` int NOT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`,`custemer_id`,`pay_id`),
  KEY `coustemerid_c_idx` (`custemer_id`),
  KEY `payid_idx` (`pay_id`),
  CONSTRAINT `coustemerid_c` FOREIGN KEY (`custemer_id`) REFERENCES `customer` (`coustomer_id`),
  CONSTRAINT `orderid_c` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payid` FOREIGN KEY (`pay_id`) REFERENCES `payment_methods` (`Payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_record`
--

LOCK TABLES `order_record` WRITE;
/*!40000 ALTER TABLE `order_record` DISABLE KEYS */;
INSERT INTO `order_record` VALUES (9,1,9,'2022-04-28'),(10,2,10,'2022-04-28'),(11,1,11,'2022-04-28'),(12,1,12,'2022-04-28'),(13,3,13,'2022-04-28'),(14,3,14,'2022-04-28'),(16,6,16,'2022-04-29'),(17,1,17,'2022-05-05'),(18,1,18,'2022-05-05'),(24,1,24,'2022-05-06'),(25,1,25,'2022-05-06');
/*!40000 ALTER TABLE `order_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_shipping`
--

DROP TABLE IF EXISTS `order_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_shipping` (
  `Company_Name` varchar(45) NOT NULL,
  `price_Of_shipping` double DEFAULT NULL,
  `Time_of_shipping` date DEFAULT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `order_shipping_ibfk_1_idx` (`order_id`),
  CONSTRAINT `order_shipping_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_shipping`
--

LOCK TABLES `order_shipping` WRITE;
/*!40000 ALTER TABLE `order_shipping` DISABLE KEYS */;
INSERT INTO `order_shipping` VALUES ('Aramex',99,'2022-04-28',9),('Aramex',99,'2022-04-28',11),('Aramex',99,'2022-04-28',12),('Aramex',99,'2022-05-05',18);
/*!40000 ALTER TABLE `order_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `Payment_id` int NOT NULL AUTO_INCREMENT,
  `Order_id` int NOT NULL,
  PRIMARY KEY (`Payment_id`,`Order_id`),
  KEY `order_id_idx` (`Order_id`),
  CONSTRAINT `order_id1` FOREIGN KEY (`Order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25);
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiptofrequest`
--

DROP TABLE IF EXISTS `receiptofrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receiptofrequest` (
  `Time_of_Request` date DEFAULT NULL,
  `Order_id` int NOT NULL,
  PRIMARY KEY (`Order_id`),
  UNIQUE KEY `Order_id_UNIQUE` (`Order_id`),
  KEY `receiptofrequest_ibfk_1_idx` (`Order_id`),
  CONSTRAINT `Order_id` FOREIGN KEY (`Order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiptofrequest`
--

LOCK TABLES `receiptofrequest` WRITE;
/*!40000 ALTER TABLE `receiptofrequest` DISABLE KEYS */;
INSERT INTO `receiptofrequest` VALUES ('2022-04-28',10),('2022-04-28',13),('2022-04-28',14),('2022-04-29',16),('2022-05-05',17),('2022-05-06',24),('2022-05-06',25);
/*!40000 ALTER TABLE `receiptofrequest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 11:54:14
