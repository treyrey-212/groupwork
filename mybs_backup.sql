-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mybs
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `Id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Carolyn','Wells','The Forgotten Clue'),(2,'Dan','Koboldt','Wizards and Warlords'),(3,'J.D.',' Salinger','The Catcher in the Rye'),(4,'Herman',' Melville','Moby Dick'),(5,'J.R.R.',' Tolkien','The Hobbit'),(6,'Candace',' Bushnell','Summer In The City'),(7,'Dan','Brown','The Da Vinci Code'),(8,'Kai',' Parker','Echoes of the Past'),(9,'Aldous',' Huxley','Brave New World');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `stock_quantity` int NOT NULL,
  `price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'The Forgotten Clue','Fiction',10,10.99),(2,'Wizards and Warlords','Fiction',5,7.99),(3,'The Catcher in the Rye','Fiction',4,9.99),(4,'Moby Dick','Classic',3,11.50),(5,'The Hobbit','Fantasy',12,12.99),(6,'Summer In The City','Romance',6,6.99),(7,'The Da Vinci Code','Mystery',7,14.99),(8,'Echoes of the Past','Adventure',9,15.99),(9,'Brave New World','Dystopian',2,10.50);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerid` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Angela','Brooks','angela.brooks@example.com',1234590),(2,'Hiroshi','Tanaka','hiroshi.t@example.com',2348901),(3,'J.D.','Salinger','jd.salinger@example.com',3459012),(4,'Sofia','Ramirez','sofia.ramirez@example.com',4560123),(5,'Raj','Mehta','raj.mehta@example.com',561234),(6,'Layla','Haddad','layla.h@example.com',6782345),(7,'Talon','Redfeather','talon.r@example.com',7823456),(8,'Emily','Thompson','emily.t@example.com',8901567),(9,'Kwame','Osei','kwame.osei@example.com',9015678),(10,'Amina','Njoroge','amina.n@example.com',1122455);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `customerid` int DEFAULT NULL,
  `book_title` varchar(50) DEFAULT NULL,
  `book_price` decimal(8,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_number` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'The Forgotten Clue',10.99,2,'2025-04-01',1001),(2,'Wizards and Warlords',7.99,1,'2025-04-02',1002),(3,'The Catcher in the Rye',9.99,1,'2025-04-02',1003),(4,'Moby Dick',11.50,1,'2025-04-03',1004),(5,'The Hobbit',12.99,3,'2025-04-04',1005),(6,'Summer In The City',6.99,2,'2025-04-04',1006),(7,'The Da Vinci Code',14.99,1,'2025-04-05',1007),(8,'Echoes of the Past',15.99,2,'2025-04-06',1008),(9,'Brave New World',10.50,1,'2025-04-06',1009),(10,'The Hobbit',12.99,1,'2025-04-07',1010);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `order_number` int DEFAULT NULL,
  `shipping_address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `shipping_method` varchar(50) DEFAULT NULL,
  `tracking_number` int DEFAULT NULL,
  `estmated_delivery_date` date DEFAULT NULL,
  `actual_delivery_date` date DEFAULT NULL,
  `shipping_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (1001,'123 Elm St, Apt 4B','New York','NY','10001','USA','Standard',85600123,'2025-04-05','2025-04-06','Delivered'),(1002,'56 Oak Lane','Los Angeles','CA','90011','USA','Express',85600124,'2025-04-04','2025-04-04','Delivered'),(1003,'77 Maple Ave','Chicago','IL','60614','USA','Standard',85600125,'2025-04-06',NULL,'In Transit'),(1004,'900 River Rd','Toronto','ON','M5H 2N2','Canada','International Express',85600126,'2025-04-10',NULL,'Shipped'),(1005,'302 Pine Blvd','London','England','SW1A 1AA','United Kingdom','International Standard',85600127,'2025-04-12',NULL,'Pending'),(1006,'11 Sunset Ct','Seattle','WA','98101','USA','Standard',85600128,'2025-04-06','2025-04-07','Delivered'),(1007,'48 Cherry St','Denver','CO','80202','USA','Standard',85600129,'2025-04-07',NULL,'Shipped'),(1008,'210 Birch Ln','Boston','MA','02118','USA','Express',85600130,'2025-04-06','2025-04-06','Delivered'),(1009,'66 Willow Way','Nairobi','Nairobi County','00100','Kenya','International Express',85600131,'2025-04-14',NULL,'In Transit'),(1010,'88 Palm Dr','Mumbai','MH','400001','India','International Standard',85600132,'2025-04-15',NULL,'Processing');
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-12 13:58:54
