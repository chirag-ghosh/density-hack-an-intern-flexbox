-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (arm64)
--
-- Host: database-1.cnaaqnaxtbad.ap-south-1.rds.amazonaws.com    Database: density
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `buy_order_book`
--

DROP TABLE IF EXISTS `buy_order_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buy_order_book` (
  `buy_order_id` int NOT NULL AUTO_INCREMENT,
  `buyer_id` int DEFAULT NULL,
  `max_buying_price` int DEFAULT NULL,
  `row_order` int DEFAULT NULL,
  `stocks_quantity` int DEFAULT NULL,
  PRIMARY KEY (`buy_order_id`),
  KEY `buyer_id` (`buyer_id`),
  CONSTRAINT `buy_order_book_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy_order_book`
--

LOCK TABLES `buy_order_book` WRITE;
/*!40000 ALTER TABLE `buy_order_book` DISABLE KEYS */;
INSERT INTO `buy_order_book` VALUES (1,3,97,4,3),(2,4,98,3,4),(4,10,99,1,5),(5,10,99,2,1);
/*!40000 ALTER TABLE `buy_order_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limits`
--

DROP TABLE IF EXISTS `limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `limits` (
  `min_seller_row_order` int DEFAULT NULL,
  `min_selling_price` int DEFAULT NULL,
  `max_buyer_row_order` int DEFAULT NULL,
  `max_buying_price` int DEFAULT NULL,
  `limit_id` int NOT NULL AUTO_INCREMENT,
  `max_seller_row_order` int DEFAULT NULL,
  `min_buyer_row_order` int DEFAULT NULL,
  PRIMARY KEY (`limit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limits`
--

LOCK TABLES `limits` WRITE;
/*!40000 ALTER TABLE `limits` DISABLE KEYS */;
INSERT INTO `limits` VALUES (1,104,1,99,1,3,4);
/*!40000 ALTER TABLE `limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sell_order_book`
--

DROP TABLE IF EXISTS `sell_order_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sell_order_book` (
  `sell_order_id` int NOT NULL AUTO_INCREMENT,
  `seller_id` int DEFAULT NULL,
  `min_selling_price` int DEFAULT NULL,
  `row_order` int DEFAULT NULL,
  `stocks_quantity` int DEFAULT NULL,
  PRIMARY KEY (`sell_order_id`),
  KEY `seller_id` (`seller_id`),
  CONSTRAINT `sell_order_book_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sell_order_book`
--

LOCK TABLES `sell_order_book` WRITE;
/*!40000 ALTER TABLE `sell_order_book` DISABLE KEYS */;
INSERT INTO `sell_order_book` VALUES (23,12,105,3,5),(25,12,104,1,6),(31,2,101,2,1);
/*!40000 ALTER TABLE `sell_order_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_history`
--

DROP TABLE IF EXISTS `transaction_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_history` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `seller_id` int DEFAULT NULL,
  `stocks_quantity` int DEFAULT NULL,
  `buyer_id` int DEFAULT NULL,
  `final_price` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `seller_id` (`seller_id`),
  KEY `buyer_id` (`buyer_id`),
  CONSTRAINT `transaction_history_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `transaction_history_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_history`
--

LOCK TABLES `transaction_history` WRITE;
/*!40000 ALTER TABLE `transaction_history` DISABLE KEYS */;
INSERT INTO `transaction_history` VALUES (71,12,1,6,100),(72,2,3,6,98),(73,2,1,3,98),(74,4,3,12,103),(75,4,1,12,103),(76,8,2,9,103),(77,11,1,9,103),(78,9,1,12,100),(79,11,2,9,103),(80,7,1,12,98),(81,7,3,10,98),(82,7,2,10,97),(83,7,1,10,97),(84,7,2,4,97),(85,10,1,12,95),(86,10,1,12,95),(87,11,3,8,103),(88,11,4,8,103),(89,12,2,8,103),(90,9,1,12,100),(91,9,3,10,100),(92,3,1,12,100),(93,3,1,10,100),(94,3,4,10,99),(95,3,1,10,99),(96,11,5,4,103),(97,11,1,8,103),(98,11,7,9,103),(99,12,3,9,103),(100,11,1,12,98),(101,11,5,10,98),(102,11,1,10,98),(103,11,3,4,98),(104,11,1,4,98),(105,2,1,12,100),(106,11,1,5,103),(107,12,1,5,103);
/*!40000 ALTER TABLE `transaction_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `stocks` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Chirag',200,23324325),(2,'Pratyush',231,21423443),(3,'Somya',398,214345027),(4,'Sheila',351,3431628),(5,'Dawson',690,3252147),(6,'Ramiro',461,3432423),(7,'Ivy',195,342342),(8,'Darrel',697,341314),(9,'Fabian',599,233604),(10,'Thunder',454,386),(11,'Dev',870,457807),(12,'Suraj',604,4545686);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-31 20:20:37
