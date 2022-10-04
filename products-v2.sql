-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: stylish
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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `category` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'men'),(2,'women'),(3,'accessories');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `imgid` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `img_tag` int DEFAULT '0',
  PRIMARY KEY (`imgid`),
  KEY `p_id_idx` (`p_id`),
  CONSTRAINT `p_id` FOREIGN KEY (`p_id`) REFERENCES `products` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,1,'https://www.modalovemoda.com/Shop/itemList.aspx?m=1&p=331&gclid=CjwKCAjw4c-ZBhAEEiwAZ105RQZxCH-j2fKnorQr-X9BFcYprzKlk4eXCu9df5kVgKJwOJdhXyskmxoCC1IQAvD_BwE',1),(2,2,'https://www.modalovemoda.com/Shop/itemList.aspx?m=1&p=331&gclid=CjwKCAjw4c-ZBhAEEiwAZ105RQZxCH-j2fKnorQr-X9BFcYprzKlk4eXCu9df5kVgKJwOJdhXyskmxoCC1IQAvD_BwE',1),(3,3,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58701&m=1&p=331',1),(4,4,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=55733&m=1&p=331',1),(5,5,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=58719&m=1&p=331',1),(6,6,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331',1),(7,3,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331',0),(8,7,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331',1),(9,8,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331',1),(10,9,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331',1),(11,13,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331',1),(12,2,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331',0),(13,2,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331',0),(14,10,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331',1),(15,11,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331',1),(16,12,'https://www.modalovemoda.com/Shop/itemDetail.aspx?mNo1=72591&m=1&p=331',1);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `c_id` int NOT NULL,
  `price` int NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `c_id_idx` (`c_id`),
  CONSTRAINT `c_id` FOREIGN KEY (`c_id`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,300,'細節長褲','平織布料長褲，拉鍊門襟配鈕扣，兩側有鏤空設計，寬直筒褲管。','95%聚酯纖維 5%氨綸'),(2,1,200,'飛鼠袖上衣','無袖上衣，柔軟嫘縈平紋布料，前後開V領，寬肩帶，直身下襬。','外層: 嫘縈 100%內裡: 嫘縈 100%'),(3,1,100,'連帽外套','長袖連帽外套，柔軟棉質混紡汗衫布料，連衣帽有內裡和抽繩，正面拉鍊開襟，有前袋，羅紋袖口和下襬。柔軟刷毛內裡。','棉 60%, 聚酯纖維 40%'),(4,2,300,'後打褶露背雪紡背心洋裝','有領襯衫式外套，柔軟平織布料，刷毛表面。正面按扣開襟，有外縫胸袋和嵌線側袋，垂肩長袖，袖口配鈕扣，兩側開衩','聚酯纖維 90%, 聚丙烯腈纖維 8%, 羊毛 1%, 聚醯胺纖維 1%'),(5,2,200,'微削肩感傘襬無袖洋裝','V領短洋裝，棉質嫘縈平織布料，長燈籠袖，肩部有抓皺，袖口有覆面細鬆緊帶。無內裡。','外層: 嫘縈 100%內裡: 嫘縈 100%'),(6,2,100,'海豚印花短袖','標準剪裁T恤，柔軟棉質平紋布料，羅紋圓領，直身下襬。','棉 100%'),(7,2,400,'海豚印花短褲','柔軟嫘縈平紋套裝，含短袖上衣和慢跑褲。上衣，方形剪裁；慢跑褲，縮褶寬鬆緊帶腰圍，褲腳有鬆緊帶。','嫘縈 100%'),(8,2,300,'格紋短袖','柔軟嫘縈平紋套裝，含短袖上衣和慢跑褲。上衣，方形剪裁；慢跑褲，縮褶寬鬆緊帶腰圍，褲腳有鬆緊帶。','嫘縈 100%'),(9,2,200,'v領素面','及膝洋裝，微亮面平織布料，V領，正面抓褶打造垂墜效果，短袖款式。無內裡。','聚酯纖維 55%, 嫘縈 45%'),(10,3,500,'手環','不同設計的手鏈，一條為金屬鏈，另一條飾水鑽，皆有摺疊扣。','黃銅 85%, 玻璃 15%'),(11,3,400,'耳環','金屬耳圈，有多款設計和多種尺寸。可隨意混搭，打造個人風格','金屬 95%, 鋼 5%'),(12,3,300,'戒指','鍍金金屬戒指。一枚為素面款式，兩枚飾玻璃水鑽。','金屬 95%, 鋼 5%'),(13,2,300,'海豚印花長褲','柔軟嫘縈平紋套裝，含短袖上衣和慢跑褲。上衣，方形剪裁；慢跑褲，縮褶寬鬆緊帶腰圍，褲腳有鬆緊帶。','嫘縈 100%');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spec`
--

DROP TABLE IF EXISTS `spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spec` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `color` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `size` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `p_id_idx` (`p_id`),
  KEY `p_id_idx1` (`p_id`),
  KEY `p_id_idx2` (`p_id`),
  CONSTRAINT `p_id1` FOREIGN KEY (`p_id`) REFERENCES `products` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spec`
--

LOCK TABLES `spec` WRITE;
/*!40000 ALTER TABLE `spec` DISABLE KEYS */;
INSERT INTO `spec` VALUES (1,1,'yellow','S',10),(2,2,'blue','M',20),(3,3,'grey','L',30),(4,4,'yellow','XL',10),(5,5,'blue','XL',20),(6,6,'yellow','M',10),(7,7,'blue','L',10),(8,8,'grey','XL',10),(9,9,'yellow','L',50),(10,13,'blue','XL',20),(11,2,'grey','M',10),(12,2,'yellow','XL',10),(13,10,'grey','L',20),(18,11,'yellow','L',10),(19,12,'blue','XL',20);
/*!40000 ALTER TABLE `spec` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-04 11:36:25
