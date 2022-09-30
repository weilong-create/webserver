-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: stylish2
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `color` varchar(45) NOT NULL,
  `size` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'短袖上衣','https://www.modalovemoda.com/Shop/itemList.aspx?m=1&p=331&gclid=CjwKCAjw4c-ZBhAEEiwAZ105RQZxCH-j2fKnorQr-X9BFcYprzKlk4eXCu9df5kVgKJwOJdhXyskmxoCC1IQAvD_BwE','綠色','s','men',500),(2,'口袋工作褲','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58720&m=1&p=331','黃色','s','men',500),(3,'條紋短袖polo','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58701&m=1&p=331','灰色','s','men',500),(4,'海豚印花短褲','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=56028&m=1&p=331','綠色','s','men',50),(5,'海豚印花短袖','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=55553&m=1&p=331','黃色','s','men',550),(6,'短褲','https://www.vvdouble.com/products/22au0201-03-f','灰色','s','men',550),(7,'軍裝長袖','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=54956&m=1&p=331','黃色','m','men',520),(8,'休閒短褲','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=57877&m=1&p=331','黃色','l','women',50),(9,'格紋短袖','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=55733&m=1&p=331','黃色','l','women',500),(10,'細節長褲','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58719&m=1&p=331','灰色','l','women',55),(11,'飛鼠袖上衣','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331','灰色','l','women',55),(12,'連帽外套','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58596&m=1&p=331','灰色','m','women',100),(13,'圓領素t','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58720&m=1&p=331','黃色','m','women',100),(14,'素面牛仔褲','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58701&m=1&p=331','灰色','m','women',100),(15,'v領素面','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58736&m=1&p=331','灰色','m','accessories',100),(16,'交叉九分褲','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58720&m=1&p=331','黃色','l','accessories',100),(17,'長版外套','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58737&m=1&p=331','灰色','m','accessories',110),(18,'手環','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58638&m=1&p=331','灰色','m','accessories',110),(19,'耳環','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=56064&m=1&p=331','黃色','l','accessories',112),(20,'手套','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58722&m=1&p=331','灰色','l','accessories',310),(21,'戒指','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72630&m=1&p=331','黃色','m','accessories',210),(22,'對戒','https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=56203&m=1&p=331','灰色','m','accessories',300),(23,'後打褶露背雪紡背心洋裝','https://www.meierq.com/en-us/market/n/10228?c=27169','灰色','l','women',500),(24,'微削肩感傘襬無袖洋裝','https://www.meierq.com/en-us/category/outerclothing/dresses','藍色','m','women',600);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-30 13:39:40
