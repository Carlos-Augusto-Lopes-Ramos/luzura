CREATE DATABASE  IF NOT EXISTS `luzura` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `luzura`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: luzura
-- ------------------------------------------------------
-- Server version	8.3.0

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
  `id` binary(16) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (_binary '<œq­\â®CñŸÓª\'#C','Impressora a cor multifuncional Epson EcoTank L3250 com wifi preta 220V','https://www.mercadolivre.com.br/impressora-a-cor-multifuncional-epson-ecotank-l3250-com-wifi-preta-220v/p/MLB18446929?pdp_filters=deal%3AMLB779362-1#polycard_client=homes-korribanSearchPromotions&searchVariation=MLB18446929&position=4&search_layout=grid&type=product&tracking_id=78a6b936-7af7-46b3-ab78-c5ac7ff86933&c_id=/home/promotions-recommendations/element&c_uid=53971285-cd06-4497-a48d-301c92c0fdc5',1042,'20/02/2024'),(_binary 'G[\ÇU[I4˜%\éúy','Samsung Galaxy A14 4G (Exynos) Dual SIM 128 GB preto 4 GB RAM','https://www.mercadolivre.com.br/samsung-galaxy-a14-4g-exynos-dual-sim-128-gb-preto-4-gb-ram/p/MLB23110203#c_id=/home/collections/item&c_campaign=MKTPLACE_CE_UNIVERSO_GAMER&c_uid=402d1fff-121f-4a53-9572-6fba52411b9d',829,'20/02/2024'),(_binary '‡¾\Z¶\ì\ÛMß¬ˆS>\Ë!','Bombom Cremoso Sonho De Valsa Pacote 1kg 50 Unidades Lacta','https://www.mercadolivre.com.br/bombom-cremoso-sonho-de-valsa-pacote-1kg-50-unidades-lacta/p/MLB21836683#polycard_client=recommendations_home_trend-function-recommendations&reco_backend=trend_function&reco_client=home_trend-function-recommendations&reco_item_pos=3&reco_backend_type=function&reco_id=68e9240c-a14f-469f-a64f-724de9f73849&wid=MLB2622075196&sid=recos&c_id=/home/trend-recommendations/element&c_uid=7cee553b-2f91-41f4-b0fb-419ab55de0f7',52.7,'20/02/2024');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'luzura'
--

--
-- Dumping routines for database 'luzura'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20 16:10:14
