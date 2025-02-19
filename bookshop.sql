-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: bookshop
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `productID` int NOT NULL,
  `quantity` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_userId` (`userId`),
  KEY `idx_productID` (`productID`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (5,1,2,10),(15,2,3,2),(26,1,12,10),(28,3,11,10),(31,3,24,10),(32,3,25,1),(33,1,19,5);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `productID` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userId` (`userId`),
  KEY `idx_productID` (`productID`),
  CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES (17,2,3),(23,3,3),(30,3,11),(32,1,3),(34,1,15),(35,1,22),(36,3,20),(37,3,21),(39,3,15),(40,3,25);
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productID` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `description` text,
  `productImg` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productID` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'1','BIC-Pen',25.00,21,'Sharp pointed','1720696951460-bic-sharp.jpg','2024-07-11 11:22:31','stationery'),(2,'2','BIC-pen',20.00,50,'Ball-pen','1720697199511-bic-ball.jpg','2024-07-11 11:26:39','stationery'),(3,'3','Calculator',2500.00,30,'Casio FX-991EX','1720860908884-casio.jpg','2024-07-12 06:48:03','stationery'),(9,'4','Kasuku Note-book',120.00,10,'Kasuku spiral bound 120 pages','1721017249331-notebook-kasuku.jpg','2024-07-15 04:20:49','books'),(11,'10','Counter Book',200.00,50,'Karatasi 4 quire','1721017374833-counter-2quire.jpg','2024-07-15 04:22:54','books'),(12,'5','To Kill a Mocking Bird',1200.00,10,'To Kill a Mockingbird is a 1960 novel by Harper Lee that takes place in the fictional town of Maycomb, Alabama during the Great Depression. The story is narrated by Jean Louise \"Scout\" Finch, a six-year-old tomboy who lives with her lawyer father Atticus and her ten-year-old brother Jem. ','1721218330226-To-kill-a-moking-bird.jpeg','2024-07-17 12:12:10','novel'),(14,'9','Acrylic Paint',500.00,20,'Professional Acrylic Paints Pigment For Artists 12 Tubes For Fabric Clothing and Waterproof Art Supplies','1721220403928-Acrylic-Paint.jpg','2024-07-17 12:46:44','art-supplies'),(15,'6','Baker Ross AW251 ',1000.00,20,'Acrylic Paint Pots Set ','1721220403929-pot-paint.jpg','2024-07-17 12:46:44','art-supplies'),(16,'7','AICRANE Nylon Artist Paint Brush ',200.00,15,'12Pcs/set Professional Watercolor Acrylic Wooden Handle Brush','1721220403979-brush-4.jpeg','2024-07-17 12:46:44','art-supplies'),(17,'8','Trekell Red Sable Brush',300.00,15,'Multi-Media Brush ΓÇô Trekell Art Supplies','1721220403991-brush.jpg','2024-07-17 12:46:44','art-supplies'),(19,'11','Enemy of the State',1300.00,20,'Mitch Rapp is tasked with uncovering a high-level Saudi conspiracy and eliminating those involved, but he faces opposition from both the Saudis and his own government, leading to a dangerous and suspenseful mission.','1721275660833-enemy-of-the-state.jpg','2024-07-18 04:07:41','novel'),(20,'12','Total Power',1500.00,15,'When Mitch Rapp captures ISISΓÇÖs top technology expert, he reveals that he was on his way to meet a man who claims to have the ability to bring down AmericaΓÇÖs power grid. Rapp is determined to eliminate this shadowy figure, but the CIAΓÇÖs trap fails. The Agency is still trying to determine what went wrong when ISIS operatives help this cyber terrorist do what he said he couldΓÇöplunge the country into darkness. With no concept of how this unprecedented act was accomplished, the task of getting the power back on could take months. Perhaps even years.','1721275660909-Total-power.jpg','2024-07-18 04:07:41','novel'),(21,'13','Code Red',1300.00,15,'Mitch Rapp hates owing anyone a favor--especially when it\'s the world\'s most powerful crime lord. But when Damian Losa calls, Mitch is honor-bound to answer. The Syrian government appears to have created a highly addictive new narcotic that it plans to distribute throughout Europe. It\'s a major threat to Losa\'s business and he\'s determined to send someone to keep him on top by any means necessary.','1721275660913-code-red.jpg','2024-07-18 04:07:41','novel'),(22,'14','Assassin\'s Creed: Brotherhood',2000.00,20,'After his family was betrayed by the ruthless nobles of Renaissance Italy, young Ezio vowed to restore the honor of the da Firenze name at any cost. Learning the arts of the Assassins, he fought with both his mind and body, ultimately confronting and defeating a secret evil. Or so he thought... For the power of the dreaded Templars has not been broken. The sinister enemies of the Brotherhood are now aware of the threat Ezio poses to them and their plans to engulf the world in their dark shadow. And Ezio must once again walk the razor-thin line between preserving innocent lifeΓÇöand killing all in his pathΓÇª','1721275661017-AC-brother hood.jpg','2024-07-18 04:07:41','novel'),(23,'15','HB Pencil',15.00,50,'Office point HB pencil','1721275990640-office-point-pencil.jpg','2024-07-18 04:13:10','stationery'),(24,'20','Eraser',10.00,45,'Stadler Mars white','1721281304847-ereser.jpg','2024-07-18 05:41:44','stationery'),(25,'21','Oxford Set',200.00,30,'Helix Oxford Mathematical Set clear','1721281304848-oxford-set.jpg','2024-07-18 05:41:44','stationery');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('Wy831BC78hUkeyWAcG_JxWimyt0Pwkl_',1731744627,'{\"cookie\":{\"originalMaxAge\":3600000,\"expires\":\"2024-11-16T08:10:08.076Z\",\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"id\":3,\"email\":\"elton@gmail.com\",\"firstName\":\"Elton\",\"lastName\":\"Fadhili\"}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Paul','Adipo','paul@gmail.com','$2a$10$byf9xKlJJQpborr3.OWvxeT8sWuKjt8XoqOO94d9YL6Gb04Kp8Xna'),(2,'John','Doe','johndoe@gmail.com','$2a$10$/uOItAe5EteN1AgQpsZuHu.Od1wakg0hw2p8t8Y6nAJ.fZmsuktXS'),(3,'Elton','Fadhili','elton@gmail.com','$2b$10$OJodAqkeHNXhrGzC7oQ1K.hQXaaC8JTT8PurGRxPfjqUbFAhlPTmO');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-16 16:12:38
