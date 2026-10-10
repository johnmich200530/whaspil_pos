-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: db_whaspil_pos
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) unsigned DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_logs_employee_id_foreign` (`employee_id`),
  CONSTRAINT `audit_logs_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`Employee_ID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
INSERT INTO `audit_logs` VALUES (7,2,'inventory.created','Stock item added: Coke (100 cans)','Coke','2026-10-09 20:14:08','2026-10-09 20:14:08'),(8,2,'menu.created','Menu item added: Coke','Coke','2026-10-09 20:14:36','2026-10-09 20:14:36'),(9,2,'order.created','New order placed for Table 2','Table 2','2026-10-09 20:31:18','2026-10-09 20:31:18'),(10,2,'order.status','Order status updated to preparing for Table 2','Table 2','2026-10-09 20:35:10','2026-10-09 20:35:10'),(11,2,'order.status','Order status updated to served for Table 2','Table 2','2026-10-09 20:35:12','2026-10-09 20:35:12'),(12,2,'order.status','Order status updated to preparing for Table 2','Table 2','2026-10-09 20:35:14','2026-10-09 20:35:14'),(13,2,'order.status','Order status updated to served for Table 2','Table 2','2026-10-09 20:36:18','2026-10-09 20:36:18'),(14,2,'payment.processed','Payment via cash for Table 2 — ₱135.00','Table 2','2026-10-09 20:47:12','2026-10-09 20:47:12'),(15,2,'menu.created','Menu item added: Butt','Butt','2026-10-09 20:52:02','2026-10-09 20:52:02'),(16,3,'order.created','New order placed for Table 2','Table 2','2026-10-09 20:54:21','2026-10-09 20:54:21'),(17,3,'order.status','Order status updated to served for Table 2','Table 2','2026-10-09 20:54:30','2026-10-09 20:54:30'),(18,3,'order.status','Order status updated to pending for Table 2','Table 2','2026-10-09 20:55:20','2026-10-09 20:55:20'),(19,4,'order.status','Order status updated to served for Table 2','Table 2','2026-10-09 20:56:02','2026-10-09 20:56:02'),(20,3,'order.created','New order placed for Table 2','Table 2','2026-10-09 21:00:49','2026-10-09 21:00:49'),(21,2,'menu.deleted','Menu item deleted: Test','Test','2026-10-09 21:01:14','2026-10-09 21:01:14'),(22,2,'payment.processed','Payment via gcash for Table 2 — ₱345.00','Table 2','2026-10-09 21:15:43','2026-10-09 21:15:43'),(23,2,'payment.processed','Payment via gcash for Table 2 — ₱345.00','Table 2','2026-10-09 21:30:17','2026-10-09 21:30:17'),(24,2,'menu.deleted','Menu item deleted: Test','Test','2026-10-09 22:03:21','2026-10-09 22:03:21'),(25,2,'menu.updated','Menu item updated: Buttered Chicken','Buttered Chicken','2026-10-09 22:03:33','2026-10-09 22:03:33'),(26,2,'order.created','New order placed for Table 2','Table 2','2026-10-09 22:05:54','2026-10-09 22:05:54'),(27,4,'order.status','Order status updated to preparing for Table 2','Table 2','2026-10-09 22:06:16','2026-10-09 22:06:16'),(28,4,'order.status','Order status updated to served for Table 2','Table 2','2026-10-09 22:06:19','2026-10-09 22:06:19'),(29,4,'order.cancelled','Order cancelled for Table 2','Table 2','2026-10-09 22:06:42','2026-10-09 22:06:42'),(30,2,'order.created','New order placed for Table 3','Table 3','2026-10-09 22:22:13','2026-10-09 22:22:13'),(31,2,'order.cancelled','Order cancelled for Table 3','Table 3','2026-10-09 22:22:41','2026-10-09 22:22:41'),(32,2,'order.created','New order placed for Table 2','Table 2','2026-10-09 22:28:58','2026-10-09 22:28:58'),(33,4,'order.cancelled','Order cancelled for Table 2','Table 2','2026-10-09 22:29:11','2026-10-09 22:29:11'),(34,2,'menu.deleted','Menu item deleted: Coke','Coke','2026-10-10 09:46:58','2026-10-10 09:46:58'),(35,2,'menu.deleted','Menu item deleted: Buttered Chicken','Buttered Chicken','2026-10-10 09:47:02','2026-10-10 09:47:02'),(36,2,'inventory.deleted','Stock item removed: Coke','Coke','2026-10-10 09:47:12','2026-10-10 09:47:12'),(37,2,'employee.updated','Employee updated: Ranel Catubigan','Ranel Catubigan','2026-10-10 09:48:03','2026-10-10 09:48:03'),(38,2,'employee.updated','Employee updated: Maria Santos','Maria Santos','2026-10-10 10:01:26','2026-10-10 10:01:26'),(39,2,'employee.updated','Employee updated: John Smith','John Smith','2026-10-10 10:01:33','2026-10-10 10:01:33'),(40,2,'employee.updated','Employee updated: Bea Trixie','Bea Trixie','2026-10-10 10:01:42','2026-10-10 10:01:42'),(41,2,'employee.updated','Employee updated: Sean Villiacampa','Sean Villiacampa','2026-10-10 10:01:56','2026-10-10 10:01:56'),(42,2,'employee.updated','Employee updated: Bea Trixie','Bea Trixie','2026-10-10 10:02:03','2026-10-10 10:02:03'),(43,2,'employee.updated','Employee updated: Maria Santos','Maria Santos','2026-10-10 10:02:09','2026-10-10 10:02:09'),(44,2,'employee.updated','Employee updated: Ranel Catubigan','Ranel Catubigan','2026-10-10 10:02:16','2026-10-10 10:02:16'),(45,2,'employee.updated','Employee updated: John Smith','John Smith','2026-10-10 10:02:23','2026-10-10 10:02:23'),(46,2,'menu.created','Menu item added: Buttered Chicken','Buttered Chicken','2026-10-10 10:17:28','2026-10-10 10:17:28'),(47,2,'menu.created','Menu item added: Rice','Rice','2026-10-10 11:22:10','2026-10-10 11:22:10'),(48,2,'menu.created','Menu item added: Adobong Baboy','Adobong Baboy','2026-10-10 11:23:41','2026-10-10 11:23:41'),(49,2,'menu.created','Menu item added: Sinigang Baboy','Sinigang Baboy','2026-10-10 11:24:03','2026-10-10 11:24:03'),(50,2,'menu.created','Menu item added: Tinolang Baboy','Tinolang Baboy','2026-10-10 11:24:28','2026-10-10 11:24:28'),(51,2,'menu.created','Menu item added: Pork Belly(Inihaw)','Pork Belly(Inihaw)','2026-10-10 11:25:02','2026-10-10 11:25:02'),(52,2,'menu.created','Menu item added: Pork Belly(Fried)','Pork Belly(Fried)','2026-10-10 11:25:26','2026-10-10 11:25:26'),(53,2,'menu.updated','Menu item updated: Pork Belly(Fried)','Pork Belly(Fried)','2026-10-10 11:25:47','2026-10-10 11:25:47'),(54,2,'menu.created','Menu item added: Sweet & Sour Pork','Sweet & Sour Pork','2026-10-10 11:26:21','2026-10-10 11:26:21'),(55,2,'menu.created','Menu item added: Lechon Kawali','Lechon Kawali','2026-10-10 11:26:42','2026-10-10 11:26:42'),(56,2,'menu.created','Menu item added: Fried Chicken','Fried Chicken','2026-10-10 11:27:10','2026-10-10 11:27:10'),(57,2,'menu.created','Menu item added: Garlic Chicken','Garlic Chicken','2026-10-10 11:27:34','2026-10-10 11:27:34'),(58,2,'menu.created','Menu item added: Adobong Manok','Adobong Manok','2026-10-10 11:27:56','2026-10-10 11:27:56'),(59,2,'menu.created','Menu item added: Sinampalokang Manok','Sinampalokang Manok','2026-10-10 11:28:28','2026-10-10 11:28:28'),(60,2,'menu.created','Menu item added: Tinolang Manok','Tinolang Manok','2026-10-10 11:28:51','2026-10-10 11:28:51'),(61,2,'menu.updated','Menu item updated: Tinolang Manok','Tinolang Manok','2026-10-10 11:29:13','2026-10-10 11:29:13'),(62,2,'menu.created','Menu item added: Sweet & Sour Chicken','Sweet & Sour Chicken','2026-10-10 11:30:06','2026-10-10 11:30:06'),(63,2,'menu.created','Menu item added: Chicken Sisig','Chicken Sisig','2026-10-10 11:31:33','2026-10-10 11:31:33'),(64,2,'menu.created','Menu item added: Pork Sisig','Pork Sisig','2026-10-10 11:35:34','2026-10-10 11:35:34'),(65,2,'menu.created','Menu item added: Sizzling Pusit','Sizzling Pusit','2026-10-10 11:35:54','2026-10-10 11:35:54'),(66,2,'menu.created','Menu item added: Calamares','Calamares','2026-10-10 11:36:21','2026-10-10 11:36:21'),(67,2,'menu.created','Menu item added: Chicharon Bulaklak','Chicharon Bulaklak','2026-10-10 11:37:03','2026-10-10 11:37:03'),(68,2,'menu.created','Menu item added: French Fries','French Fries','2026-10-10 11:37:30','2026-10-10 11:37:30'),(69,2,'menu.created','Menu item added: Lumpia(Chicken)','Lumpia(Chicken)','2026-10-10 11:37:55','2026-10-10 11:37:55'),(70,2,'menu.created','Menu item added: Kropek','Kropek','2026-10-10 11:38:09','2026-10-10 11:38:09'),(71,2,'menu.created','Menu item added: Crispy Hipon','Crispy Hipon','2026-10-10 11:53:03','2026-10-10 11:53:03'),(72,2,'menu.created','Menu item added: Garlic Hipon','Garlic Hipon','2026-10-10 11:53:57','2026-10-10 11:53:57'),(73,2,'menu.created','Menu item added: Ginisang Hipon','Ginisang Hipon','2026-10-10 11:54:26','2026-10-10 11:54:26'),(74,2,'menu.created','Menu item added: Sinigang Hipon','Sinigang Hipon','2026-10-10 11:55:08','2026-10-10 11:55:08'),(75,2,'menu.created','Menu item added: Fried Fish Fillet','Fried Fish Fillet','2026-10-10 11:55:40','2026-10-10 11:55:40'),(76,2,'menu.created','Menu item added: Fried Hito','Fried Hito','2026-10-10 11:56:20','2026-10-10 11:56:20'),(77,2,'menu.created','Menu item added: Sweet &','Sweet &','2026-10-10 11:57:32','2026-10-10 11:57:32'),(78,2,'menu.updated','Menu item updated: Sweet & Sour Fish Fillet','Sweet & Sour Fish Fillet','2026-10-10 11:57:46','2026-10-10 11:57:46'),(79,2,'menu.created','Menu item added: Sinigang Bangus','Sinigang Bangus','2026-10-10 12:01:06','2026-10-10 12:01:06'),(80,2,'menu.updated','Menu item updated: Sinigang Bangus','Sinigang Bangus','2026-10-10 12:01:45','2026-10-10 12:01:45'),(81,2,'menu.created','Menu item added: Tinolang Malasugue','Tinolang Malasugue','2026-10-10 12:02:10','2026-10-10 12:02:10'),(82,2,'menu.created','Menu item added: Tinolang Tuna','Tinolang Tuna','2026-10-10 12:02:31','2026-10-10 12:02:31'),(83,2,'menu.updated','Menu item updated: Sinigang Bangus','Sinigang Bangus','2026-10-10 12:02:40','2026-10-10 12:02:40'),(84,2,'menu.created','Menu item added: Inihaw Bangus','Inihaw Bangus','2026-10-10 12:03:08','2026-10-10 12:03:08'),(85,2,'menu.created','Menu item added: Kinilaw Malasugue','Kinilaw Malasugue','2026-10-10 12:03:27','2026-10-10 12:03:27'),(86,2,'menu.updated','Menu item updated: Kinilaw Malasugue','Kinilaw Malasugue','2026-10-10 12:04:31','2026-10-10 12:04:31'),(87,2,'menu.updated','Menu item updated: Kinilaw Malasugue','Kinilaw Malasugue','2026-10-10 12:06:02','2026-10-10 12:06:02'),(88,2,'menu.created','Menu item added: Kinilaw Tuna','Kinilaw Tuna','2026-10-10 12:06:30','2026-10-10 12:06:30'),(89,2,'menu.created','Menu item added: Pancit Canton','Pancit Canton','2026-10-10 12:07:03','2026-10-10 12:07:03'),(90,2,'menu.created','Menu item added: Sotanghon Guisado','Sotanghon Guisado','2026-10-10 12:07:21','2026-10-10 12:07:21'),(91,2,'menu.created','Menu item added: Sotanghon Soup','Sotanghon Soup','2026-10-10 12:08:03','2026-10-10 12:08:03'),(92,2,'menu.created','Menu item added: Bihon Guisado','Bihon Guisado','2026-10-10 12:08:34','2026-10-10 12:08:34'),(93,2,'menu.created','Menu item added: Lomi','Lomi','2026-10-10 12:08:48','2026-10-10 12:08:48'),(94,2,'menu.created','Menu item added: Chopsuey','Chopsuey','2026-10-10 12:09:13','2026-10-10 12:09:13'),(95,2,'menu.created','Menu item added: Coke 1.5','Coke 1.5','2026-10-10 12:09:57','2026-10-10 12:09:57'),(96,2,'menu.updated','Menu item updated: Coke 1.5','Coke 1.5','2026-10-10 12:10:19','2026-10-10 12:10:19'),(97,2,'menu.created','Menu item added: Sprite 1.5L','Sprite 1.5L','2026-10-10 12:11:50','2026-10-10 12:11:50'),(98,2,'menu.updated','Menu item updated: Sprite 1.5L','Sprite 1.5L','2026-10-10 12:13:04','2026-10-10 12:13:04'),(99,2,'menu.created','Menu item added: Sprite Mismo','Sprite Mismo','2026-10-10 12:13:42','2026-10-10 12:13:42'),(100,2,'menu.created','Menu item added: Coke Mismo','Coke Mismo','2026-10-10 12:14:36','2026-10-10 12:14:36'),(101,2,'menu.created','Menu item added: Coke Can','Coke Can','2026-10-10 12:14:58','2026-10-10 12:14:58'),(102,2,'menu.created','Menu item added: Royal Can','Royal Can','2026-10-10 12:15:17','2026-10-10 12:15:17'),(103,2,'menu.created','Menu item added: Gatorade','Gatorade','2026-10-10 12:15:57','2026-10-10 12:15:57'),(104,2,'menu.created','Menu item added: Mineral 1L','Mineral 1L','2026-10-10 12:16:19','2026-10-10 12:16:19'),(105,2,'menu.created','Menu item added: Mineral 500ml','Mineral 500ml','2026-10-10 12:16:38','2026-10-10 12:16:38'),(106,2,'menu.created','Menu item added: Cali','Cali','2026-10-10 12:16:55','2026-10-10 12:16:55'),(107,2,'menu.created','Menu item added: Mountain Dew','Mountain Dew','2026-10-10 12:17:21','2026-10-10 12:17:21'),(108,2,'menu.created','Menu item added: Pitcher Juice(Mango)','Pitcher Juice(Mango)','2026-10-10 12:21:01','2026-10-10 12:21:01'),(109,2,'menu.created','Menu item added: Pitcher Juice(Apple)','Pitcher Juice(Apple)','2026-10-10 12:21:30','2026-10-10 12:21:30'),(110,2,'menu.created','Menu item added: Pitcher Juice(Lemon)','Pitcher Juice(Lemon)','2026-10-10 12:21:53','2026-10-10 12:21:53'),(111,2,'inventory.created','Stock item added: Coke Can (50 cans)','Coke Can','2026-10-10 12:35:08','2026-10-10 12:35:08'),(112,2,'inventory.created','Stock item added: Royal Can (50 cans)','Royal Can','2026-10-10 12:35:21','2026-10-10 12:35:21'),(113,2,'inventory.created','Stock item added: Coke 1.5 (50 bottles)','Coke 1.5','2026-10-10 12:35:39','2026-10-10 12:35:39'),(114,2,'inventory.created','Stock item added: Royal 1.5 (50 bottles)','Royal 1.5','2026-10-10 12:35:55','2026-10-10 12:35:55'),(115,2,'inventory.created','Stock item added: Gatorade (19 bottles)','Gatorade','2026-10-10 12:36:26','2026-10-10 12:36:26'),(116,2,'inventory.updated','Stock updated: Gatorade → 14 bottles','Gatorade','2026-10-10 12:36:34','2026-10-10 12:36:34'),(117,2,'inventory.updated','Stock updated: Gatorade → 10 bottles','Gatorade','2026-10-10 12:36:40','2026-10-10 12:36:40'),(118,2,'inventory.updated','Stock updated: Gatorade → 9 bottles','Gatorade','2026-10-10 12:36:46','2026-10-10 12:36:46'),(119,2,'inventory.updated','Stock updated: Gatorade → 20 bottles','Gatorade','2026-10-10 12:36:57','2026-10-10 12:36:57'),(120,2,'inventory.created','Stock item added: Coke Mismo (20 bottles)','Coke Mismo','2026-10-10 12:37:07','2026-10-10 12:37:07'),(121,2,'inventory.created','Stock item added: Sprite Mismo (20 bottles)','Sprite Mismo','2026-10-10 12:37:18','2026-10-10 12:37:18'),(122,2,'inventory.created','Stock item added: Cali (20 cans)','Cali','2026-10-10 12:37:56','2026-10-10 12:37:56'),(123,2,'inventory.updated','Stock updated: Coke Can → 20 cans','Coke Can','2026-10-10 12:38:09','2026-10-10 12:38:09'),(124,2,'inventory.updated','Stock updated: Royal Can → 20 cans','Royal Can','2026-10-10 12:38:18','2026-10-10 12:38:18'),(125,2,'inventory.created','Stock item added: Nestea Apple (20 packs)','Nestea Apple','2026-10-10 12:39:31','2026-10-10 12:39:31'),(126,2,'inventory.created','Stock item added: Nestea Mango (20 packs)','Nestea Mango','2026-10-10 12:39:48','2026-10-10 12:39:48'),(127,2,'inventory.created','Stock item added: Nestea Lemon (20 packs)','Nestea Lemon','2026-10-10 12:40:05','2026-10-10 12:40:05'),(128,2,'inventory.created','Stock item added: Mineral 1L (20 bottles)','Mineral 1L','2026-10-10 12:40:54','2026-10-10 12:40:54'),(129,2,'inventory.created','Stock item added: Mineral Water 500ml (20 bottles)','Mineral Water 500ml','2026-10-10 12:41:23','2026-10-10 12:41:23'),(130,2,'inventory.updated','Stock updated: Mineral Water 1L → 20 bottles','Mineral Water 1L','2026-10-10 12:41:50','2026-10-10 12:41:50'),(131,2,'menu.updated','Menu item updated: Mineral Water 1L','Mineral Water 1L','2026-10-10 12:42:02','2026-10-10 12:42:02'),(132,2,'menu.updated','Menu item updated: Mineral Water 500ml','Mineral Water 500ml','2026-10-10 12:42:23','2026-10-10 12:42:23'),(133,2,'menu.updated','Menu item updated: Cali','Cali','2026-10-10 12:42:31','2026-10-10 12:42:31'),(135,2,'menu.updated','Menu item updated: Coke 1.5','Coke 1.5','2026-10-10 12:54:28','2026-10-10 12:54:28'),(136,2,'menu.updated','Menu item updated: Coke Can','Coke Can','2026-10-10 12:54:35','2026-10-10 12:54:35'),(137,2,'menu.updated','Menu item updated: Coke Mismo','Coke Mismo','2026-10-10 12:54:44','2026-10-10 12:54:44'),(138,2,'menu.updated','Menu item updated: Gatorade','Gatorade','2026-10-10 12:54:54','2026-10-10 12:54:54'),(139,2,'menu.updated','Menu item updated: Mineral Water 1L','Mineral Water 1L','2026-10-10 12:55:04','2026-10-10 12:55:04'),(140,2,'menu.updated','Menu item updated: Mineral Water 500ml','Mineral Water 500ml','2026-10-10 12:55:10','2026-10-10 12:55:10'),(141,2,'inventory.created','Stock item added: Mountain Dew (20 bottles)','Mountain Dew','2026-10-10 12:55:41','2026-10-10 12:55:41'),(142,2,'menu.updated','Menu item updated: Mountain Dew','Mountain Dew','2026-10-10 12:55:54','2026-10-10 12:55:54'),(143,2,'menu.updated','Menu item updated: Pitcher Juice(Apple)','Pitcher Juice(Apple)','2026-10-10 12:56:02','2026-10-10 12:56:02'),(144,2,'menu.updated','Menu item updated: Pitcher Juice(Lemon)','Pitcher Juice(Lemon)','2026-10-10 12:56:09','2026-10-10 12:56:09'),(145,2,'menu.updated','Menu item updated: Pitcher Juice(Mango)','Pitcher Juice(Mango)','2026-10-10 12:56:21','2026-10-10 12:56:21'),(146,2,'menu.updated','Menu item updated: Royal Can','Royal Can','2026-10-10 12:56:31','2026-10-10 12:56:31'),(147,2,'menu.updated','Menu item updated: Sprite Mismo','Sprite Mismo','2026-10-10 12:56:50','2026-10-10 12:56:50'),(148,2,'inventory.updated','Stock updated: Sprite 1.5 → 50 bottles','Sprite 1.5','2026-10-10 12:57:02','2026-10-10 12:57:02'),(149,2,'menu.updated','Menu item updated: Sprite 1.5L','Sprite 1.5L','2026-10-10 12:57:20','2026-10-10 12:57:20'),(150,2,'order.created','New order placed for Table 1','Table 1','2026-10-10 13:07:48','2026-10-10 13:07:48'),(151,2,'order.status','Order status updated to served for Table 1','Table 1','2026-10-10 13:07:56','2026-10-10 13:07:56'),(152,2,'order.status','Order status updated to preparing for Table 1','Table 1','2026-10-10 13:07:57','2026-10-10 13:07:57'),(153,2,'payment.processed','Payment via cash for Table 1 — ₱500.00','Table 1','2026-10-10 13:20:05','2026-10-10 13:20:05');
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `Employee_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `FNM` varchar(255) NOT NULL,
  `LNM` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Role` enum('manager','cashier','waiter','chef') NOT NULL,
  `Password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  UNIQUE KEY `employees_username_unique` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (2,'Maria','Santos','maria','manager','$2y$12$LDIXG8tOfBZrvXpYr0MTGOv4l0q1WcmR/ZdlO7eoS9ekJ1kP.loMS','2026-10-09 14:23:56','2026-10-10 14:07:03'),(3,'John','Smith','John@username','waiter','$2y$12$nEVVP8DHDSSK32WaKflxyudV.SiqqnwGVN/OepHlvC4EOixTtx56q','2026-10-09 15:50:55','2026-10-10 10:02:23'),(4,'Sean','Villiacampa','Sean@username','chef','$2y$12$teQM37pofHYGyatPH3wQiuThsEyZ169fVpom.JthihlHn8582UQAC','2026-10-09 15:51:48','2026-10-10 10:01:56'),(5,'Ranel','Catubigan','Ranel@username','waiter','$2y$12$JkfJptSb5uO1.cvFxmAKouJAVpgFlpjE4Zo6nn8KtzucAlR9JJUZa','2026-10-09 15:52:12','2026-10-10 10:02:16'),(6,'Bea','Trixie','Bea@username','cashier','$2y$12$hMu8ohLty6Mzg7LWk0ssT.OYNJkbS3qJWCb8zjTEjmBYmoTkbxBPO','2026-10-09 15:53:36','2026-10-10 10:02:03');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventories` (
  `Inventory_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Unit` varchar(255) NOT NULL,
  `Status` enum('in_stock','low_stock','out_of_stock') NOT NULL DEFAULT 'in_stock',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Inventory_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
INSERT INTO `inventories` VALUES (2,'Coke Can',20,'cans','in_stock','2026-10-10 12:35:08','2026-10-10 12:38:09'),(3,'Royal Can',20,'cans','in_stock','2026-10-10 12:35:21','2026-10-10 12:38:18'),(4,'Coke 1.5',50,'bottles','in_stock','2026-10-10 12:35:39','2026-10-10 12:35:39'),(5,'Sprite 1.5',50,'bottles','in_stock','2026-10-10 12:35:55','2026-10-10 12:57:02'),(6,'Gatorade',20,'bottles','in_stock','2026-10-10 12:36:26','2026-10-10 12:36:57'),(7,'Coke Mismo',20,'bottles','in_stock','2026-10-10 12:37:07','2026-10-10 12:37:07'),(8,'Sprite Mismo',20,'bottles','in_stock','2026-10-10 12:37:18','2026-10-10 12:37:18'),(9,'Cali',20,'cans','in_stock','2026-10-10 12:37:56','2026-10-10 12:37:56'),(10,'Nestea Apple',20,'packs','in_stock','2026-10-10 12:39:31','2026-10-10 12:39:31'),(11,'Nestea Mango',20,'packs','in_stock','2026-10-10 12:39:48','2026-10-10 12:39:48'),(12,'Nestea Lemon',20,'packs','in_stock','2026-10-10 12:40:05','2026-10-10 12:40:05'),(13,'Mineral Water 1L',20,'bottles','in_stock','2026-10-10 12:40:54','2026-10-10 12:41:50'),(14,'Mineral Water 500ml',20,'bottles','in_stock','2026-10-10 12:41:23','2026-10-10 12:41:23'),(15,'Mountain Dew',20,'bottles','in_stock','2026-10-10 12:55:40','2026-10-10 12:55:40');
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `Menu_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Inventory_ID` bigint(20) unsigned DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Availability` tinyint(1) NOT NULL DEFAULT 1,
  `Image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Menu_ID`),
  KEY `menus_inventory_id_foreign` (`Inventory_ID`),
  CONSTRAINT `menus_inventory_id_foreign` FOREIGN KEY (`Inventory_ID`) REFERENCES `inventories` (`Inventory_ID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (5,NULL,'Buttered Chicken',250.00,'Chicken',1,'menu-images/l5A9gbMEantuWJwT6AM2hm2abyzZuBXR9sbOUJG0.jpg','2026-10-10 10:17:27','2026-10-10 10:17:27'),(6,NULL,'Rice',15.00,'Rice',1,'menu-images/FxOPsr5bmtDUMOe6sURTjT7ZKr6YvZdKD6LIEsf5.jpg','2026-10-10 11:22:10','2026-10-10 11:22:10'),(7,NULL,'Adobong Baboy',250.00,'Pork',1,'menu-images/z2zZPzRx8Ch84gCN9CMvIOWi9aBt3kd3CghCTYbj.jpg','2026-10-10 11:23:41','2026-10-10 11:23:41'),(8,NULL,'Sinigang Baboy',250.00,'Pork',1,'menu-images/ncVxrsXteZJDcLlJRQQ9XN9Jdqdxqsqzhaj0wWlW.jpg','2026-10-10 11:24:03','2026-10-10 11:24:03'),(9,NULL,'Tinolang Baboy',250.00,'Pork',1,'menu-images/uFgN14WLIWK5thY5pIfI5pLXuBeQMza9rLfG6MPm.jpg','2026-10-10 11:24:28','2026-10-10 11:24:28'),(10,NULL,'Pork Belly(Inihaw)',250.00,'Pork',1,'menu-images/2AZ3dipCpnM9oUC2seKCOEkSzI73qyyTrzkw8Fdp.jpg','2026-10-10 11:25:02','2026-10-10 11:25:02'),(11,NULL,'Pork Belly(Fried)',250.00,'Pork',1,'menu-images/M5QyFc8auwTEtnj7If3p4KtIJg9VtnK0dmx6ocii.jpg','2026-10-10 11:25:26','2026-10-10 11:25:47'),(12,NULL,'Sweet & Sour Pork',300.00,'Pork',1,'menu-images/warbaVLhN1CtzfzJevRCXi9wojcLKoTLOx2kne1C.webp','2026-10-10 11:26:20','2026-10-10 11:26:20'),(13,NULL,'Lechon Kawali',300.00,'Pork',1,'menu-images/ZchTX14NQHloV8OOAReNg3oNLDhOFRAtq8Ux9DaR.jpg','2026-10-10 11:26:42','2026-10-10 11:26:42'),(14,NULL,'Fried Chicken',250.00,'Chicken',1,'menu-images/3yrxjzwU53HOkdabuzraWBsT87fDyCw6wwLZRmwe.jpg','2026-10-10 11:27:10','2026-10-10 11:27:10'),(15,NULL,'Garlic Chicken',250.00,'Chicken',1,'menu-images/c82yNLJXHYNKUMHPu5KOMx279tpvBJB1orqgmD3y.jpg','2026-10-10 11:27:34','2026-10-10 11:27:34'),(16,NULL,'Adobong Manok',250.00,'Chicken',1,'menu-images/186ZzRhsTjy6xCyQ2zdiGoWaxyl74kr9QVcsX5zJ.jpg','2026-10-10 11:27:56','2026-10-10 11:27:56'),(17,NULL,'Sinampalokang Manok',250.00,'Chicken',1,'menu-images/3jnpwBNKL10MoDoXKNnWSnNfjZU2UdSaTQLNBSRq.jpg','2026-10-10 11:28:28','2026-10-10 11:28:28'),(18,NULL,'Tinolang Manok',250.00,'Chicken',1,'menu-images/TUIdISyp6bG2swRzoTSTs4pdWb7PZE5Eg9Dvj1T0.jpg','2026-10-10 11:28:51','2026-10-10 11:29:13'),(19,NULL,'Sweet & Sour Chicken',300.00,'Chicken',1,'menu-images/ggVNE3XKURBmKhK2dT2k5QCxoJr3K3zbYLd3gXtu.jpg','2026-10-10 11:30:06','2026-10-10 11:30:06'),(20,NULL,'Chicken Sisig',250.00,'Sizzling',1,'menu-images/ohdeJIIzHvk80aoxvkTh7kEFBJqd3hHPir70SjWL.jpg','2026-10-10 11:31:33','2026-10-10 11:31:33'),(21,NULL,'Pork Sisig',250.00,'Sizzling',1,'menu-images/x3JzPhbaRnEzWMtnhQBjFI3o8kov0A4gzUvpD3EM.jpg','2026-10-10 11:35:34','2026-10-10 11:35:34'),(22,NULL,'Sizzling Pusit',250.00,'Sizzling',1,'menu-images/NTzf4eJ8oc76o6C35sztumnGJzBnRa4WVHgfNol3.jpg','2026-10-10 11:35:54','2026-10-10 11:35:54'),(23,NULL,'Calamares',250.00,'Appitizer',1,'menu-images/bDdg1pYWeZgj9A95Hj8qhFkQrBs4Fzer28sZVL4t.jpg','2026-10-10 11:36:21','2026-10-10 11:36:21'),(24,NULL,'Chicharon Bulaklak',250.00,'Appitizer',1,'menu-images/Khbvq21Rb4QkWfMiuRMbfB17gp4jX1UI1y7HEgVV.jpg','2026-10-10 11:37:03','2026-10-10 11:37:03'),(25,NULL,'French Fries',95.00,'Appitizer',1,'menu-images/VOT32arDKnSTVmU04YDHJIoKLKWq2giQbnr39GRV.jpg','2026-10-10 11:37:30','2026-10-10 11:37:30'),(26,NULL,'Lumpia(Chicken)',170.00,'Appitizer',1,'menu-images/XVCCBFJIwgtO1vWz3FFDd5U0FXDtEUa1qMGgVGu4.jpg','2026-10-10 11:37:55','2026-10-10 11:37:55'),(27,NULL,'Kropek',95.00,'Appitizer',1,'menu-images/VHqNQRRni6fncCmIDDqQA1qllsubJd5HP5mH22Lk.jpg','2026-10-10 11:38:08','2026-10-10 11:38:08'),(28,NULL,'Crispy Hipon',250.00,'Hipon',1,'menu-images/4FYDSruMfWuZi4djZBMhfU87762HPhjDQr5hbjCa.jpg','2026-10-10 11:53:03','2026-10-10 11:53:03'),(29,NULL,'Garlic Hipon',250.00,'Hipon',1,'menu-images/fuqt2L8rjdUYa6SWEYVPvkjdlAsPuVlQqQa2Pfnh.jpg','2026-10-10 11:53:57','2026-10-10 11:53:57'),(30,NULL,'Ginisang Hipon',250.00,'Hipon',1,'menu-images/pbqn2wbTWNLiGzbsa9uEl6MCVtzcy69aiWfV2RTK.jpg','2026-10-10 11:54:26','2026-10-10 11:54:26'),(31,NULL,'Sinigang Hipon',250.00,'Hipon',1,'menu-images/6YnAADno84D0vFlo2iK3ZPrwbBZuG8dDXvB9rXcO.jpg','2026-10-10 11:55:08','2026-10-10 11:55:08'),(32,NULL,'Fried Fish Fillet',280.00,'Fish',1,'menu-images/AyUmqcUbmZDCeZ6d55Eqge9vHeN5EahzOpsglQ5Z.jpg','2026-10-10 11:55:40','2026-10-10 11:55:40'),(33,NULL,'Fried Hito',150.00,'Fish',1,'menu-images/fkt2EtHcwBobYfpnIKa85PM4UO76XTtibhyobUBV.jpg','2026-10-10 11:56:20','2026-10-10 11:56:20'),(34,NULL,'Sweet & Sour Fish Fillet',300.00,'Fish',1,'menu-images/dwwztYZVd8YGBaJtQkWsgfgj4nvjVBtOlVntfeMv.jpg','2026-10-10 11:57:32','2026-10-10 11:57:46'),(35,NULL,'Sinigang Bangus',240.00,'Tinola/Sinigang',1,'menu-images/1riDR3wAhXcGrmmfI4x0daL5Jh1z143btFrluKl6.jpg','2026-10-10 12:01:06','2026-10-10 12:02:40'),(36,NULL,'Tinolang Malasugue',280.00,'Tinola/Sinigang',1,'menu-images/kPHFvSIUjreyri531XERcQgAgkBebhrCzyLDYwPe.jpg','2026-10-10 12:02:10','2026-10-10 12:02:10'),(37,NULL,'Tinolang Tuna',280.00,'Tinola/Sinigang',1,'menu-images/qFcPg41dFfJ9SaNapTBcKzH4mQPWcT6gk4Oyd8DW.jpg','2026-10-10 12:02:31','2026-10-10 12:02:31'),(38,NULL,'Inihaw Bangus',240.00,'Inihaw',1,'menu-images/qdWNoJzzar5zbyzzmn3JzCItazUjhiL6hoBZYRBx.jpg','2026-10-10 12:03:08','2026-10-10 12:03:08'),(39,NULL,'Kinilaw Malasugue',280.00,'Kinilaw',1,'menu-images/RByrArFDMP1kk1RQyS5umeaS7WdkFyC5N6xdPouG.jpg','2026-10-10 12:03:27','2026-10-10 12:06:02'),(40,NULL,'Kinilaw Tuna',280.00,'Kinilaw',1,'menu-images/i8K68Fpo260ei4xFvrxVPf7SPcAQSW5la5x5r0rX.jpg','2026-10-10 12:06:30','2026-10-10 12:06:30'),(41,NULL,'Pancit Canton',250.00,'Noodles',1,'menu-images/QGuhIlKtG12oAdN6QIBBlJOEkisSWUQLCy8x9UZC.webp','2026-10-10 12:07:03','2026-10-10 12:07:03'),(42,NULL,'Sotanghon Guisado',250.00,'Noodles',1,'menu-images/WWeaW8XSMOdnnIqmAuDiFs4uq8FwRr4ew6HWYkeM.jpg','2026-10-10 12:07:21','2026-10-10 12:07:21'),(43,NULL,'Sotanghon Soup',250.00,'Noodles',1,'menu-images/lhfJA7sJRRFUNrMLOxKdBbkXwSnS0e7fRWwB6PvF.jpg','2026-10-10 12:08:02','2026-10-10 12:08:02'),(44,NULL,'Bihon Guisado',250.00,'Noodles',1,'menu-images/fWwkj1DV2HNRxZMfUpQ9IgKvSecAFbWSvEMYKMmN.jpg','2026-10-10 12:08:34','2026-10-10 12:08:34'),(45,NULL,'Lomi',250.00,'Noodles',1,'menu-images/ZSdminuW3A0uaIPBGHOZlWzdhgu2r4FBrwROI5j3.jpg','2026-10-10 12:08:48','2026-10-10 12:08:48'),(46,NULL,'Chopsuey',290.00,'Vegetable',1,'menu-images/OYrc5duzWgh2RoVAFjgs9NYvLXB1YL2dKxujYvXz.webp','2026-10-10 12:09:13','2026-10-10 12:09:13'),(47,4,'Coke 1.5',120.00,'Drinks',1,'menu-images/C0K1FJ1haSQ2R3Yrz3d1gPyfdRCROwkxkiBmXdNe.jpg','2026-10-10 12:09:57','2026-10-10 12:54:28'),(48,5,'Sprite 1.5L',120.00,'Drinks',1,'menu-images/QZziIGEYPPHoVnLf2nnBfWqbZiJ1nPCHAFX9Dyky.jpg','2026-10-10 12:11:50','2026-10-10 12:57:20'),(49,8,'Sprite Mismo',30.00,'Drinks',1,'menu-images/AQj4Q7xshn4PBaSId0U8oKgtHHHF0GUJTMGPYmcD.webp','2026-10-10 12:13:42','2026-10-10 12:56:50'),(50,7,'Coke Mismo',30.00,'Drinks',1,'menu-images/Pss8oHNxJAbQsxsbKHz3XfmMEdWlkLpNPAEyJNuE.jpg','2026-10-10 12:14:36','2026-10-10 12:54:44'),(51,2,'Coke Can',35.00,'Drinks',1,'menu-images/q01nmC5xN1wWJSdwmKPfdlKrNxAy8JzsnyvLh9pK.webp','2026-10-10 12:14:58','2026-10-10 12:54:35'),(52,3,'Royal Can',35.00,'Drinks',1,'menu-images/N7DesIofkpAEXyHyYZqYDhczuWcT7RErUGV0Wzyy.jpg','2026-10-10 12:15:17','2026-10-10 12:56:31'),(53,6,'Gatorade',60.00,'Drinks',1,'menu-images/s8tMq99MIvtnkVGGIUZpozsYP6eZ3E6DYiWRdtlK.jpg','2026-10-10 12:15:57','2026-10-10 12:54:54'),(54,13,'Mineral Water 1L',40.00,'Drinks',1,'menu-images/DZPGgmBA4h6rKoPbZLclpE5piL8qbj2WhtMdSRpI.jpg','2026-10-10 12:16:19','2026-10-10 12:55:04'),(55,14,'Mineral Water 500ml',20.00,'Drinks',1,'menu-images/UAAU4WUGdWpIl56gvXlnXcrocCmkCp2YBMrYUJo0.jpg','2026-10-10 12:16:38','2026-10-10 12:55:10'),(56,9,'Cali',35.00,'Drinks',1,'menu-images/Vu4hOIVzGNHoJhMLNis6nQL1jlxmDqgZhDqc6ihP.jpg','2026-10-10 12:16:55','2026-10-10 12:42:31'),(57,15,'Mountain Dew',30.00,'Drinks',1,'menu-images/GbHK7j82FMks8jivnkOP8CFxwhqg2T1DN7AL37XG.jpg','2026-10-10 12:17:21','2026-10-10 12:55:54'),(58,11,'Pitcher Juice(Mango)',100.00,'Drinks',1,'menu-images/OLz3zeq5tXTmrqUlxLzICV7AkyCEjUxNECtbxVxe.jpg','2026-10-10 12:21:01','2026-10-10 12:56:21'),(59,10,'Pitcher Juice(Apple)',100.00,'Drinks',1,'menu-images/vPbHj3JrHRrDvxrL6jA3WzLiSx32KNFNIEZvodUj.jpg','2026-10-10 12:21:30','2026-10-10 12:56:02'),(60,12,'Pitcher Juice(Lemon)',100.00,'Drinks',1,'menu-images/6XwsJoBwBqMy2EZEgRmkOx7tzRnPEYx4zvnNprFT.webp','2026-10-10 12:21:53','2026-10-10 12:56:09');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2026_09_16_152331_create_employees_table',1),(2,'2026_09_16_152358_create_inventories_table',1),(3,'2026_09_16_152409_create_menus_table',1),(4,'2026_09_16_152422_create_orders_table',1),(5,'2026_09_16_152440_create_order_items_table',1),(6,'2026_09_16_152451_create_payments_table',1),(7,'2026_09_16_152500_create_receipts_table',1),(8,'2026_10_05_000001_create_audit_logs_table',1),(9,'2026_10_10_033855_add_image_to_menus_table',2),(10,'2026_10_10_044800_make_inventory_id_nullable_on_menus',3),(11,'2026_10_10_000000_remove_super_admin_role',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `OrderItem_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Order_ID` bigint(20) unsigned NOT NULL,
  `Menu_ID` bigint(20) unsigned NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`OrderItem_ID`),
  KEY `order_items_order_id_foreign` (`Order_ID`),
  KEY `order_items_menu_id_foreign` (`Menu_ID`),
  CONSTRAINT `order_items_menu_id_foreign` FOREIGN KEY (`Menu_ID`) REFERENCES `menus` (`Menu_ID`) ON DELETE CASCADE,
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (10,7,23,1,250.00,'2026-10-10 13:07:48','2026-10-10 13:07:48'),(11,7,24,1,250.00,'2026-10-10 13:07:48','2026-10-10 13:07:48');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `Order_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Employee_ID` bigint(20) unsigned NOT NULL,
  `Table_number` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Total_Amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Status` enum('pending','preparing','served','paid','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `orders_employee_id_foreign` (`Employee_ID`),
  CONSTRAINT `orders_employee_id_foreign` FOREIGN KEY (`Employee_ID`) REFERENCES `employees` (`Employee_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,2,'Table 2','2026-10-10',135.00,'paid','2026-10-09 20:31:18','2026-10-09 20:47:12'),(2,3,'Table 2','2026-10-10',345.00,'paid','2026-10-09 20:54:21','2026-10-09 21:30:17'),(3,3,'Table 2','2026-10-10',345.00,'paid','2026-10-09 21:00:49','2026-10-09 21:15:43'),(4,2,'Table 2','2026-10-10',285.00,'cancelled','2026-10-09 22:05:54','2026-10-09 22:06:42'),(5,2,'Table 3','2026-10-10',300.00,'cancelled','2026-10-09 22:22:13','2026-10-09 22:22:41'),(6,2,'Table 2','2026-10-10',45.00,'cancelled','2026-10-09 22:28:58','2026-10-09 22:29:11'),(7,2,'Table 1','2026-10-10',500.00,'paid','2026-10-10 13:07:48','2026-10-10 13:20:05');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `Payment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Order_ID` bigint(20) unsigned NOT NULL,
  `Date` date NOT NULL,
  `Method` enum('cash','gcash','card') NOT NULL,
  `amount_tendered` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`),
  KEY `payments_order_id_foreign` (`Order_ID`),
  CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'2026-10-10','cash',200.00,'2026-10-09 20:47:12','2026-10-09 20:47:12'),(2,3,'2026-10-10','gcash',345.00,'2026-10-09 21:15:43','2026-10-09 21:15:43'),(3,2,'2026-10-10','gcash',345.00,'2026-10-09 21:30:17','2026-10-09 21:30:17'),(4,7,'2026-10-10','cash',1000.00,'2026-10-10 13:20:05','2026-10-10 13:20:05');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipts` (
  `Receipt_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Payment_ID` bigint(20) unsigned NOT NULL,
  `Order_ID` bigint(20) unsigned NOT NULL,
  `Date` date NOT NULL,
  `Total_Amount` decimal(10,2) NOT NULL,
  `Status` enum('issued','voided') NOT NULL DEFAULT 'issued',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Receipt_ID`),
  KEY `receipts_payment_id_foreign` (`Payment_ID`),
  KEY `receipts_order_id_foreign` (`Order_ID`),
  CONSTRAINT `receipts_order_id_foreign` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE,
  CONSTRAINT `receipts_payment_id_foreign` FOREIGN KEY (`Payment_ID`) REFERENCES `payments` (`Payment_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` VALUES (1,1,1,'2026-10-10',135.00,'issued','2026-10-09 20:47:12','2026-10-09 20:47:12'),(2,2,3,'2026-10-10',345.00,'issued','2026-10-09 21:15:43','2026-10-09 21:15:43'),(3,3,2,'2026-10-10',345.00,'issued','2026-10-09 21:30:17','2026-10-09 21:30:17'),(4,4,7,'2026-10-10',500.00,'issued','2026-10-10 13:20:05','2026-10-10 13:20:05');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_whaspil_pos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-10 22:13:41
