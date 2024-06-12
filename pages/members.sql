DROP DATABASE IF EXISTS `members`;
CREATE DATABASE IF NOT EXISTS `members`; 

USE `members`;

DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` varchar(45) NOT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `members` VALUES ('test','1234');


DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `id` varchar(45) NOT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `register` VALUES ('test2', '1234', 'aa@gmail.com', '123');

DROP TABLE IF EXISTS `cus_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cus_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productsName` varchar(45) NOT NULL,
  `productsDescribe` varchar(100) NOT NULL,
  `instock` int NOT NULL,
  `defaultPrice` int NOT NULL,
  `defaultCPU` int NOT NULL,
  `defaultGPU` int NOT NULL,
  `defaultRAM` int NOT NULL,
  `defaultMEM` int NOT NULL,
  `defaultBW` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus_product`
--

LOCK TABLES `cus_product` WRITE;
/*!40000 ALTER TABLE `cus_product` DISABLE KEYS */;
INSERT INTO `cus_product` VALUES (1,'Customized VPS','Make the one you really needed',100,560,1,1,1,16,100);
/*!40000 ALTER TABLE `cus_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productsName` varchar(45) NOT NULL,
  `productsDescribe` varchar(100) NOT NULL,
  `instock` int NOT NULL,
  `price` int NOT NULL,
  `vcpu` int NOT NULL,
  `vgpu` int NOT NULL,
  `ram` int NOT NULL,
  `mem` int NOT NULL,
  `bw` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'App Base VPS','Build Your APP with Own VPS service',100,500,1,1,1,16,100);
INSERT INTO `products` VALUES (2,'App Pro','Pro Plan for Pro Users',100,800,1,1,2,32,200);
INSERT INTO `products` VALUES (3,'App Max','App Creation, Effortlessly Elegant',100,1200,2,1,4,32,400);
INSERT INTO `products` VALUES (4,'Website Based','Your Own Website Solution',100,650,1,1,1,16,200);
INSERT INTO `products` VALUES (5,'Web Pro','Web Hosting, Simply Powerful',100,950,1,1,2,32,300);
INSERT INTO `products` VALUES (6,'Web Max','The most Flexible web Hosting',100,1050,1,1,4,32,400);
INSERT INTO `products` VALUES (7,'Database VPS','Your Own Cloud Drive Solution',100,750,1,1,1,32,100);
INSERT INTO `products` VALUES (8,'DB Pro','Pro Plan for Pro Users',100,1200,1,1,2,64,200);
INSERT INTO `products` VALUES (9,'DB Max','It\'s Worth Having a Privacy Cloud',100,2000,1,1,4,128,400);
INSERT INTO `products` VALUES (10,'AI VPS ','Build the Personal LLM',100,650,1,2,1,16,100);
INSERT INTO `products` VALUES (11,'AI Pro','Pro Plan for Pro Users',100,1200,2,4,4,16,200);
INSERT INTO `products` VALUES (12,'AI Max','Best Building AI Solution',100,1700,2,4,8,32,400);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `message_id` INT AUTO_INCREMENT PRIMARY KEY,
  `email` VARCHAR(45) NOT NULL,
  `content` TEXT NOT NULL,
  `timestamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`email`, `content`) VALUES 
('user1@example.com', 'good!');