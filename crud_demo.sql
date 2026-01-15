-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: crud_demo
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.1

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('laravel-cache-pokemon_dashboard_data','a:3:{s:12:\"totalPokemon\";i:200;s:14:\"pokemonPorTipo\";a:18:{s:5:\"grass\";i:23;s:6:\"poison\";i:36;s:4:\"fire\";i:15;s:6:\"flying\";i:32;s:5:\"water\";i:43;s:3:\"bug\";i:17;s:6:\"normal\";i:28;s:8:\"electric\";i:15;s:6:\"ground\";i:16;s:5:\"fairy\";i:11;s:8:\"fighting\";i:8;s:7:\"psychic\";i:18;s:4:\"rock\";i:12;s:5:\"steel\";i:2;s:3:\"ice\";i:5;s:5:\"ghost\";i:4;s:6:\"dragon\";i:3;s:4:\"dark\";i:2;}s:11:\"topPokemons\";a:5:{i:0;a:2:{s:4:\"name\";s:9:\"bulbasaur\";s:5:\"total\";i:1;}i:1;a:2:{s:4:\"name\";s:7:\"ivysaur\";s:5:\"total\";i:1;}i:2;a:2:{s:4:\"name\";s:8:\"venusaur\";s:5:\"total\";i:1;}i:3;a:2:{s:4:\"name\";s:10:\"charmander\";s:5:\"total\";i:1;}i:4;a:2:{s:4:\"name\";s:10:\"charmeleon\";s:5:\"total\";i:1;}}}',1759526012);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1);
INSERT INTO `migrations` VALUES (2,'0001_01_01_000001_create_cache_table',1);
INSERT INTO `migrations` VALUES (3,'0001_01_01_000002_create_jobs_table',1);
INSERT INTO `migrations` VALUES (4,'2025_09_22_144626_create_tasks_table',1);
INSERT INTO `migrations` VALUES (5,'2025_10_03_093609_create_pokemon_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `types` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'bulbasaur','[\"grass\", \"poison\"]','2025-10-03 09:50:18','2025-10-03 09:50:18');
INSERT INTO `pokemon` VALUES (2,'ivysaur','[\"grass\", \"poison\"]','2025-10-03 09:50:18','2025-10-03 09:50:18');
INSERT INTO `pokemon` VALUES (3,'venusaur','[\"grass\", \"poison\"]','2025-10-03 09:50:18','2025-10-03 09:50:18');
INSERT INTO `pokemon` VALUES (4,'charmander','[\"fire\"]','2025-10-03 09:50:18','2025-10-03 09:50:18');
INSERT INTO `pokemon` VALUES (5,'charmeleon','[\"fire\"]','2025-10-03 09:50:18','2025-10-03 09:50:18');
INSERT INTO `pokemon` VALUES (6,'charizard','[\"fire\", \"flying\"]','2025-10-03 09:50:18','2025-10-03 09:50:18');
INSERT INTO `pokemon` VALUES (7,'squirtle','[\"water\"]','2025-10-03 09:50:19','2025-10-03 09:50:19');
INSERT INTO `pokemon` VALUES (8,'wartortle','[\"water\"]','2025-10-03 09:50:19','2025-10-03 09:50:19');
INSERT INTO `pokemon` VALUES (9,'blastoise','[\"water\"]','2025-10-03 09:50:19','2025-10-03 09:50:19');
INSERT INTO `pokemon` VALUES (10,'caterpie','[\"bug\"]','2025-10-03 09:50:19','2025-10-03 09:50:19');
INSERT INTO `pokemon` VALUES (11,'metapod','[\"bug\"]','2025-10-03 09:50:19','2025-10-03 09:50:19');
INSERT INTO `pokemon` VALUES (12,'butterfree','[\"bug\", \"flying\"]','2025-10-03 09:50:19','2025-10-03 09:50:19');
INSERT INTO `pokemon` VALUES (13,'weedle','[\"bug\", \"poison\"]','2025-10-03 09:50:19','2025-10-03 09:50:19');
INSERT INTO `pokemon` VALUES (14,'kakuna','[\"bug\", \"poison\"]','2025-10-03 09:50:19','2025-10-03 09:50:19');
INSERT INTO `pokemon` VALUES (15,'beedrill','[\"bug\", \"poison\"]','2025-10-03 09:50:19','2025-10-03 09:50:19');
INSERT INTO `pokemon` VALUES (16,'pidgey','[\"normal\", \"flying\"]','2025-10-03 09:50:20','2025-10-03 09:50:20');
INSERT INTO `pokemon` VALUES (17,'pidgeotto','[\"normal\", \"flying\"]','2025-10-03 09:50:20','2025-10-03 09:50:20');
INSERT INTO `pokemon` VALUES (18,'pidgeot','[\"normal\", \"flying\"]','2025-10-03 09:50:20','2025-10-03 09:50:20');
INSERT INTO `pokemon` VALUES (19,'rattata','[\"normal\"]','2025-10-03 09:50:20','2025-10-03 09:50:20');
INSERT INTO `pokemon` VALUES (20,'raticate','[\"normal\"]','2025-10-03 09:50:20','2025-10-03 09:50:20');
INSERT INTO `pokemon` VALUES (21,'spearow','[\"normal\", \"flying\"]','2025-10-03 09:50:20','2025-10-03 09:50:20');
INSERT INTO `pokemon` VALUES (22,'fearow','[\"normal\", \"flying\"]','2025-10-03 09:50:21','2025-10-03 09:50:21');
INSERT INTO `pokemon` VALUES (23,'ekans','[\"poison\"]','2025-10-03 09:50:21','2025-10-03 09:50:21');
INSERT INTO `pokemon` VALUES (24,'arbok','[\"poison\"]','2025-10-03 09:50:21','2025-10-03 09:50:21');
INSERT INTO `pokemon` VALUES (25,'pikachu','[\"electric\"]','2025-10-03 09:50:21','2025-10-03 09:50:21');
INSERT INTO `pokemon` VALUES (26,'raichu','[\"electric\"]','2025-10-03 09:50:21','2025-10-03 09:50:21');
INSERT INTO `pokemon` VALUES (27,'sandshrew','[\"ground\"]','2025-10-03 09:50:21','2025-10-03 09:50:21');
INSERT INTO `pokemon` VALUES (28,'sandslash','[\"ground\"]','2025-10-03 09:50:21','2025-10-03 09:50:21');
INSERT INTO `pokemon` VALUES (29,'nidoran-f','[\"poison\"]','2025-10-03 09:50:22','2025-10-03 09:50:22');
INSERT INTO `pokemon` VALUES (30,'nidorina','[\"poison\"]','2025-10-03 09:50:22','2025-10-03 09:50:22');
INSERT INTO `pokemon` VALUES (31,'nidoqueen','[\"poison\", \"ground\"]','2025-10-03 09:50:22','2025-10-03 09:50:22');
INSERT INTO `pokemon` VALUES (32,'nidoran-m','[\"poison\"]','2025-10-03 09:50:22','2025-10-03 09:50:22');
INSERT INTO `pokemon` VALUES (33,'nidorino','[\"poison\"]','2025-10-03 09:50:22','2025-10-03 09:50:22');
INSERT INTO `pokemon` VALUES (34,'nidoking','[\"poison\", \"ground\"]','2025-10-03 09:50:22','2025-10-03 09:50:22');
INSERT INTO `pokemon` VALUES (35,'clefairy','[\"fairy\"]','2025-10-03 09:50:23','2025-10-03 09:50:23');
INSERT INTO `pokemon` VALUES (36,'clefable','[\"fairy\"]','2025-10-03 09:50:23','2025-10-03 09:50:23');
INSERT INTO `pokemon` VALUES (37,'vulpix','[\"fire\"]','2025-10-03 09:50:23','2025-10-03 09:50:23');
INSERT INTO `pokemon` VALUES (38,'ninetales','[\"fire\"]','2025-10-03 09:50:23','2025-10-03 09:50:23');
INSERT INTO `pokemon` VALUES (39,'jigglypuff','[\"normal\", \"fairy\"]','2025-10-03 09:50:23','2025-10-03 09:50:23');
INSERT INTO `pokemon` VALUES (40,'wigglytuff','[\"normal\", \"fairy\"]','2025-10-03 09:50:23','2025-10-03 09:50:23');
INSERT INTO `pokemon` VALUES (41,'zubat','[\"poison\", \"flying\"]','2025-10-03 09:50:24','2025-10-03 09:50:24');
INSERT INTO `pokemon` VALUES (42,'golbat','[\"poison\", \"flying\"]','2025-10-03 09:50:24','2025-10-03 09:50:24');
INSERT INTO `pokemon` VALUES (43,'oddish','[\"grass\", \"poison\"]','2025-10-03 09:50:24','2025-10-03 09:50:24');
INSERT INTO `pokemon` VALUES (44,'gloom','[\"grass\", \"poison\"]','2025-10-03 09:50:24','2025-10-03 09:50:24');
INSERT INTO `pokemon` VALUES (45,'vileplume','[\"grass\", \"poison\"]','2025-10-03 09:50:24','2025-10-03 09:50:24');
INSERT INTO `pokemon` VALUES (46,'paras','[\"bug\", \"grass\"]','2025-10-03 09:50:24','2025-10-03 09:50:24');
INSERT INTO `pokemon` VALUES (47,'parasect','[\"bug\", \"grass\"]','2025-10-03 09:50:24','2025-10-03 09:50:24');
INSERT INTO `pokemon` VALUES (48,'venonat','[\"bug\", \"poison\"]','2025-10-03 09:50:25','2025-10-03 09:50:25');
INSERT INTO `pokemon` VALUES (49,'venomoth','[\"bug\", \"poison\"]','2025-10-03 09:50:25','2025-10-03 09:50:25');
INSERT INTO `pokemon` VALUES (50,'diglett','[\"ground\"]','2025-10-03 09:50:25','2025-10-03 09:50:25');
INSERT INTO `pokemon` VALUES (51,'dugtrio','[\"ground\"]','2025-10-03 09:50:25','2025-10-03 09:50:25');
INSERT INTO `pokemon` VALUES (52,'meowth','[\"normal\"]','2025-10-03 09:50:25','2025-10-03 09:50:25');
INSERT INTO `pokemon` VALUES (53,'persian','[\"normal\"]','2025-10-03 09:50:25','2025-10-03 09:50:25');
INSERT INTO `pokemon` VALUES (54,'psyduck','[\"water\"]','2025-10-03 09:50:26','2025-10-03 09:50:26');
INSERT INTO `pokemon` VALUES (55,'golduck','[\"water\"]','2025-10-03 09:50:26','2025-10-03 09:50:26');
INSERT INTO `pokemon` VALUES (56,'mankey','[\"fighting\"]','2025-10-03 09:50:26','2025-10-03 09:50:26');
INSERT INTO `pokemon` VALUES (57,'primeape','[\"fighting\"]','2025-10-03 09:50:26','2025-10-03 09:50:26');
INSERT INTO `pokemon` VALUES (58,'growlithe','[\"fire\"]','2025-10-03 09:50:26','2025-10-03 09:50:26');
INSERT INTO `pokemon` VALUES (59,'arcanine','[\"fire\"]','2025-10-03 09:50:26','2025-10-03 09:50:26');
INSERT INTO `pokemon` VALUES (60,'poliwag','[\"water\"]','2025-10-03 09:50:26','2025-10-03 09:50:26');
INSERT INTO `pokemon` VALUES (61,'poliwhirl','[\"water\"]','2025-10-03 09:50:27','2025-10-03 09:50:27');
INSERT INTO `pokemon` VALUES (62,'poliwrath','[\"water\", \"fighting\"]','2025-10-03 09:50:27','2025-10-03 09:50:27');
INSERT INTO `pokemon` VALUES (63,'abra','[\"psychic\"]','2025-10-03 09:50:27','2025-10-03 09:50:27');
INSERT INTO `pokemon` VALUES (64,'kadabra','[\"psychic\"]','2025-10-03 09:50:27','2025-10-03 09:50:27');
INSERT INTO `pokemon` VALUES (65,'alakazam','[\"psychic\"]','2025-10-03 09:50:27','2025-10-03 09:50:27');
INSERT INTO `pokemon` VALUES (66,'machop','[\"fighting\"]','2025-10-03 09:50:27','2025-10-03 09:50:27');
INSERT INTO `pokemon` VALUES (67,'machoke','[\"fighting\"]','2025-10-03 09:50:28','2025-10-03 09:50:28');
INSERT INTO `pokemon` VALUES (68,'machamp','[\"fighting\"]','2025-10-03 09:50:28','2025-10-03 09:50:28');
INSERT INTO `pokemon` VALUES (69,'bellsprout','[\"grass\", \"poison\"]','2025-10-03 09:50:28','2025-10-03 09:50:28');
INSERT INTO `pokemon` VALUES (70,'weepinbell','[\"grass\", \"poison\"]','2025-10-03 09:50:28','2025-10-03 09:50:28');
INSERT INTO `pokemon` VALUES (71,'victreebel','[\"grass\", \"poison\"]','2025-10-03 09:50:28','2025-10-03 09:50:28');
INSERT INTO `pokemon` VALUES (72,'tentacool','[\"water\", \"poison\"]','2025-10-03 09:50:28','2025-10-03 09:50:28');
INSERT INTO `pokemon` VALUES (73,'tentacruel','[\"water\", \"poison\"]','2025-10-03 09:50:29','2025-10-03 09:50:29');
INSERT INTO `pokemon` VALUES (74,'geodude','[\"rock\", \"ground\"]','2025-10-03 09:50:29','2025-10-03 09:50:29');
INSERT INTO `pokemon` VALUES (75,'graveler','[\"rock\", \"ground\"]','2025-10-03 09:50:29','2025-10-03 09:50:29');
INSERT INTO `pokemon` VALUES (76,'golem','[\"rock\", \"ground\"]','2025-10-03 09:50:29','2025-10-03 09:50:29');
INSERT INTO `pokemon` VALUES (77,'ponyta','[\"fire\"]','2025-10-03 09:50:29','2025-10-03 09:50:29');
INSERT INTO `pokemon` VALUES (78,'rapidash','[\"fire\"]','2025-10-03 09:50:29','2025-10-03 09:50:29');
INSERT INTO `pokemon` VALUES (79,'slowpoke','[\"water\", \"psychic\"]','2025-10-03 09:50:30','2025-10-03 09:50:30');
INSERT INTO `pokemon` VALUES (80,'slowbro','[\"water\", \"psychic\"]','2025-10-03 09:50:30','2025-10-03 09:50:30');
INSERT INTO `pokemon` VALUES (81,'magnemite','[\"electric\", \"steel\"]','2025-10-03 09:50:30','2025-10-03 09:50:30');
INSERT INTO `pokemon` VALUES (82,'magneton','[\"electric\", \"steel\"]','2025-10-03 09:50:30','2025-10-03 09:50:30');
INSERT INTO `pokemon` VALUES (83,'farfetchd','[\"normal\", \"flying\"]','2025-10-03 09:50:30','2025-10-03 09:50:30');
INSERT INTO `pokemon` VALUES (84,'doduo','[\"normal\", \"flying\"]','2025-10-03 09:50:30','2025-10-03 09:50:30');
INSERT INTO `pokemon` VALUES (85,'dodrio','[\"normal\", \"flying\"]','2025-10-03 09:50:30','2025-10-03 09:50:30');
INSERT INTO `pokemon` VALUES (86,'seel','[\"water\"]','2025-10-03 09:50:31','2025-10-03 09:50:31');
INSERT INTO `pokemon` VALUES (87,'dewgong','[\"water\", \"ice\"]','2025-10-03 09:50:31','2025-10-03 09:50:31');
INSERT INTO `pokemon` VALUES (88,'grimer','[\"poison\"]','2025-10-03 09:50:31','2025-10-03 09:50:31');
INSERT INTO `pokemon` VALUES (89,'muk','[\"poison\"]','2025-10-03 09:50:31','2025-10-03 09:50:31');
INSERT INTO `pokemon` VALUES (90,'shellder','[\"water\"]','2025-10-03 09:50:31','2025-10-03 09:50:31');
INSERT INTO `pokemon` VALUES (91,'cloyster','[\"water\", \"ice\"]','2025-10-03 09:50:31','2025-10-03 09:50:31');
INSERT INTO `pokemon` VALUES (92,'gastly','[\"ghost\", \"poison\"]','2025-10-03 09:50:31','2025-10-03 09:50:31');
INSERT INTO `pokemon` VALUES (93,'haunter','[\"ghost\", \"poison\"]','2025-10-03 09:50:32','2025-10-03 09:50:32');
INSERT INTO `pokemon` VALUES (94,'gengar','[\"ghost\", \"poison\"]','2025-10-03 09:50:32','2025-10-03 09:50:32');
INSERT INTO `pokemon` VALUES (95,'onix','[\"rock\", \"ground\"]','2025-10-03 09:50:32','2025-10-03 09:50:32');
INSERT INTO `pokemon` VALUES (96,'drowzee','[\"psychic\"]','2025-10-03 09:50:32','2025-10-03 09:50:32');
INSERT INTO `pokemon` VALUES (97,'hypno','[\"psychic\"]','2025-10-03 09:50:32','2025-10-03 09:50:32');
INSERT INTO `pokemon` VALUES (98,'krabby','[\"water\"]','2025-10-03 09:50:32','2025-10-03 09:50:32');
INSERT INTO `pokemon` VALUES (99,'kingler','[\"water\"]','2025-10-03 09:50:33','2025-10-03 09:50:33');
INSERT INTO `pokemon` VALUES (100,'voltorb','[\"electric\"]','2025-10-03 09:50:33','2025-10-03 09:50:33');
INSERT INTO `pokemon` VALUES (101,'electrode','[\"electric\"]','2025-10-03 09:50:33','2025-10-03 09:50:33');
INSERT INTO `pokemon` VALUES (102,'exeggcute','[\"grass\", \"psychic\"]','2025-10-03 09:50:33','2025-10-03 09:50:33');
INSERT INTO `pokemon` VALUES (103,'exeggutor','[\"grass\", \"psychic\"]','2025-10-03 09:50:33','2025-10-03 09:50:33');
INSERT INTO `pokemon` VALUES (104,'cubone','[\"ground\"]','2025-10-03 09:50:33','2025-10-03 09:50:33');
INSERT INTO `pokemon` VALUES (105,'marowak','[\"ground\"]','2025-10-03 09:50:33','2025-10-03 09:50:33');
INSERT INTO `pokemon` VALUES (106,'hitmonlee','[\"fighting\"]','2025-10-03 09:50:34','2025-10-03 09:50:34');
INSERT INTO `pokemon` VALUES (107,'hitmonchan','[\"fighting\"]','2025-10-03 09:50:34','2025-10-03 09:50:34');
INSERT INTO `pokemon` VALUES (108,'lickitung','[\"normal\"]','2025-10-03 09:50:34','2025-10-03 09:50:34');
INSERT INTO `pokemon` VALUES (109,'koffing','[\"poison\"]','2025-10-03 09:50:34','2025-10-03 09:50:34');
INSERT INTO `pokemon` VALUES (110,'weezing','[\"poison\"]','2025-10-03 09:50:34','2025-10-03 09:50:34');
INSERT INTO `pokemon` VALUES (111,'rhyhorn','[\"ground\", \"rock\"]','2025-10-03 09:50:34','2025-10-03 09:50:34');
INSERT INTO `pokemon` VALUES (112,'rhydon','[\"ground\", \"rock\"]','2025-10-03 09:50:35','2025-10-03 09:50:35');
INSERT INTO `pokemon` VALUES (113,'chansey','[\"normal\"]','2025-10-03 09:50:35','2025-10-03 09:50:35');
INSERT INTO `pokemon` VALUES (114,'tangela','[\"grass\"]','2025-10-03 09:50:35','2025-10-03 09:50:35');
INSERT INTO `pokemon` VALUES (115,'kangaskhan','[\"normal\"]','2025-10-03 09:50:35','2025-10-03 09:50:35');
INSERT INTO `pokemon` VALUES (116,'horsea','[\"water\"]','2025-10-03 09:50:35','2025-10-03 09:50:35');
INSERT INTO `pokemon` VALUES (117,'seadra','[\"water\"]','2025-10-03 09:50:36','2025-10-03 09:50:36');
INSERT INTO `pokemon` VALUES (118,'goldeen','[\"water\"]','2025-10-03 09:50:36','2025-10-03 09:50:36');
INSERT INTO `pokemon` VALUES (119,'seaking','[\"water\"]','2025-10-03 09:50:36','2025-10-03 09:50:36');
INSERT INTO `pokemon` VALUES (120,'staryu','[\"water\"]','2025-10-03 09:50:36','2025-10-03 09:50:36');
INSERT INTO `pokemon` VALUES (121,'starmie','[\"water\", \"psychic\"]','2025-10-03 09:50:36','2025-10-03 09:50:36');
INSERT INTO `pokemon` VALUES (122,'mr-mime','[\"psychic\", \"fairy\"]','2025-10-03 09:50:36','2025-10-03 09:50:36');
INSERT INTO `pokemon` VALUES (123,'scyther','[\"bug\", \"flying\"]','2025-10-03 09:50:37','2025-10-03 09:50:37');
INSERT INTO `pokemon` VALUES (124,'jynx','[\"ice\", \"psychic\"]','2025-10-03 09:50:37','2025-10-03 09:50:37');
INSERT INTO `pokemon` VALUES (125,'electabuzz','[\"electric\"]','2025-10-03 09:50:37','2025-10-03 09:50:37');
INSERT INTO `pokemon` VALUES (126,'magmar','[\"fire\"]','2025-10-03 09:50:37','2025-10-03 09:50:37');
INSERT INTO `pokemon` VALUES (127,'pinsir','[\"bug\"]','2025-10-03 09:50:37','2025-10-03 09:50:37');
INSERT INTO `pokemon` VALUES (128,'tauros','[\"normal\"]','2025-10-03 09:50:37','2025-10-03 09:50:37');
INSERT INTO `pokemon` VALUES (129,'magikarp','[\"water\"]','2025-10-03 09:50:37','2025-10-03 09:50:37');
INSERT INTO `pokemon` VALUES (130,'gyarados','[\"water\", \"flying\"]','2025-10-03 09:50:38','2025-10-03 09:50:38');
INSERT INTO `pokemon` VALUES (131,'lapras','[\"water\", \"ice\"]','2025-10-03 09:50:38','2025-10-03 09:50:38');
INSERT INTO `pokemon` VALUES (132,'ditto','[\"normal\"]','2025-10-03 09:50:38','2025-10-03 09:50:38');
INSERT INTO `pokemon` VALUES (133,'eevee','[\"normal\"]','2025-10-03 09:50:38','2025-10-03 09:50:38');
INSERT INTO `pokemon` VALUES (134,'vaporeon','[\"water\"]','2025-10-03 09:50:38','2025-10-03 09:50:38');
INSERT INTO `pokemon` VALUES (135,'jolteon','[\"electric\"]','2025-10-03 09:50:38','2025-10-03 09:50:38');
INSERT INTO `pokemon` VALUES (136,'flareon','[\"fire\"]','2025-10-03 09:50:38','2025-10-03 09:50:38');
INSERT INTO `pokemon` VALUES (137,'porygon','[\"normal\"]','2025-10-03 09:50:39','2025-10-03 09:50:39');
INSERT INTO `pokemon` VALUES (138,'omanyte','[\"rock\", \"water\"]','2025-10-03 09:50:39','2025-10-03 09:50:39');
INSERT INTO `pokemon` VALUES (139,'omastar','[\"rock\", \"water\"]','2025-10-03 09:50:39','2025-10-03 09:50:39');
INSERT INTO `pokemon` VALUES (140,'kabuto','[\"rock\", \"water\"]','2025-10-03 09:50:39','2025-10-03 09:50:39');
INSERT INTO `pokemon` VALUES (141,'kabutops','[\"rock\", \"water\"]','2025-10-03 09:50:39','2025-10-03 09:50:39');
INSERT INTO `pokemon` VALUES (142,'aerodactyl','[\"rock\", \"flying\"]','2025-10-03 09:50:39','2025-10-03 09:50:39');
INSERT INTO `pokemon` VALUES (143,'snorlax','[\"normal\"]','2025-10-03 09:50:40','2025-10-03 09:50:40');
INSERT INTO `pokemon` VALUES (144,'articuno','[\"ice\", \"flying\"]','2025-10-03 09:50:40','2025-10-03 09:50:40');
INSERT INTO `pokemon` VALUES (145,'zapdos','[\"electric\", \"flying\"]','2025-10-03 09:50:40','2025-10-03 09:50:40');
INSERT INTO `pokemon` VALUES (146,'moltres','[\"fire\", \"flying\"]','2025-10-03 09:50:40','2025-10-03 09:50:40');
INSERT INTO `pokemon` VALUES (147,'dratini','[\"dragon\"]','2025-10-03 09:50:40','2025-10-03 09:50:40');
INSERT INTO `pokemon` VALUES (148,'dragonair','[\"dragon\"]','2025-10-03 09:50:40','2025-10-03 09:50:40');
INSERT INTO `pokemon` VALUES (149,'dragonite','[\"dragon\", \"flying\"]','2025-10-03 09:50:41','2025-10-03 09:50:41');
INSERT INTO `pokemon` VALUES (150,'mewtwo','[\"psychic\"]','2025-10-03 09:50:41','2025-10-03 09:50:41');
INSERT INTO `pokemon` VALUES (151,'mew','[\"psychic\"]','2025-10-03 09:50:41','2025-10-03 09:50:41');
INSERT INTO `pokemon` VALUES (152,'chikorita','[\"grass\"]','2025-10-03 09:50:41','2025-10-03 09:50:41');
INSERT INTO `pokemon` VALUES (153,'bayleef','[\"grass\"]','2025-10-03 09:50:41','2025-10-03 09:50:41');
INSERT INTO `pokemon` VALUES (154,'meganium','[\"grass\"]','2025-10-03 09:50:41','2025-10-03 09:50:41');
INSERT INTO `pokemon` VALUES (155,'cyndaquil','[\"fire\"]','2025-10-03 09:50:41','2025-10-03 09:50:41');
INSERT INTO `pokemon` VALUES (156,'quilava','[\"fire\"]','2025-10-03 09:50:42','2025-10-03 09:50:42');
INSERT INTO `pokemon` VALUES (157,'typhlosion','[\"fire\"]','2025-10-03 09:50:42','2025-10-03 09:50:42');
INSERT INTO `pokemon` VALUES (158,'totodile','[\"water\"]','2025-10-03 09:50:42','2025-10-03 09:50:42');
INSERT INTO `pokemon` VALUES (159,'croconaw','[\"water\"]','2025-10-03 09:50:42','2025-10-03 09:50:42');
INSERT INTO `pokemon` VALUES (160,'feraligatr','[\"water\"]','2025-10-03 09:50:42','2025-10-03 09:50:42');
INSERT INTO `pokemon` VALUES (161,'sentret','[\"normal\"]','2025-10-03 09:50:42','2025-10-03 09:50:42');
INSERT INTO `pokemon` VALUES (162,'furret','[\"normal\"]','2025-10-03 09:50:43','2025-10-03 09:50:43');
INSERT INTO `pokemon` VALUES (163,'hoothoot','[\"normal\", \"flying\"]','2025-10-03 09:50:43','2025-10-03 09:50:43');
INSERT INTO `pokemon` VALUES (164,'noctowl','[\"normal\", \"flying\"]','2025-10-03 09:50:43','2025-10-03 09:50:43');
INSERT INTO `pokemon` VALUES (165,'ledyba','[\"bug\", \"flying\"]','2025-10-03 09:50:43','2025-10-03 09:50:43');
INSERT INTO `pokemon` VALUES (166,'ledian','[\"bug\", \"flying\"]','2025-10-03 09:50:43','2025-10-03 09:50:43');
INSERT INTO `pokemon` VALUES (167,'spinarak','[\"bug\", \"poison\"]','2025-10-03 09:50:43','2025-10-03 09:50:43');
INSERT INTO `pokemon` VALUES (168,'ariados','[\"bug\", \"poison\"]','2025-10-03 09:50:43','2025-10-03 09:50:43');
INSERT INTO `pokemon` VALUES (169,'crobat','[\"poison\", \"flying\"]','2025-10-03 09:50:44','2025-10-03 09:50:44');
INSERT INTO `pokemon` VALUES (170,'chinchou','[\"water\", \"electric\"]','2025-10-03 09:50:44','2025-10-03 09:50:44');
INSERT INTO `pokemon` VALUES (171,'lanturn','[\"water\", \"electric\"]','2025-10-03 09:50:44','2025-10-03 09:50:44');
INSERT INTO `pokemon` VALUES (172,'pichu','[\"electric\"]','2025-10-03 09:50:44','2025-10-03 09:50:44');
INSERT INTO `pokemon` VALUES (173,'cleffa','[\"fairy\"]','2025-10-03 09:50:44','2025-10-03 09:50:44');
INSERT INTO `pokemon` VALUES (174,'igglybuff','[\"normal\", \"fairy\"]','2025-10-03 09:50:44','2025-10-03 09:50:44');
INSERT INTO `pokemon` VALUES (175,'togepi','[\"fairy\"]','2025-10-03 09:50:45','2025-10-03 09:50:45');
INSERT INTO `pokemon` VALUES (176,'togetic','[\"fairy\", \"flying\"]','2025-10-03 09:50:45','2025-10-03 09:50:45');
INSERT INTO `pokemon` VALUES (177,'natu','[\"psychic\", \"flying\"]','2025-10-03 09:50:45','2025-10-03 09:50:45');
INSERT INTO `pokemon` VALUES (178,'xatu','[\"psychic\", \"flying\"]','2025-10-03 09:50:45','2025-10-03 09:50:45');
INSERT INTO `pokemon` VALUES (179,'mareep','[\"electric\"]','2025-10-03 09:50:45','2025-10-03 09:50:45');
INSERT INTO `pokemon` VALUES (180,'flaaffy','[\"electric\"]','2025-10-03 09:50:45','2025-10-03 09:50:45');
INSERT INTO `pokemon` VALUES (181,'ampharos','[\"electric\"]','2025-10-03 09:50:46','2025-10-03 09:50:46');
INSERT INTO `pokemon` VALUES (182,'bellossom','[\"grass\"]','2025-10-03 09:50:46','2025-10-03 09:50:46');
INSERT INTO `pokemon` VALUES (183,'marill','[\"water\", \"fairy\"]','2025-10-03 09:50:46','2025-10-03 09:50:46');
INSERT INTO `pokemon` VALUES (184,'azumarill','[\"water\", \"fairy\"]','2025-10-03 09:50:46','2025-10-03 09:50:46');
INSERT INTO `pokemon` VALUES (185,'sudowoodo','[\"rock\"]','2025-10-03 09:50:46','2025-10-03 09:50:46');
INSERT INTO `pokemon` VALUES (186,'politoed','[\"water\"]','2025-10-03 09:50:46','2025-10-03 09:50:46');
INSERT INTO `pokemon` VALUES (187,'hoppip','[\"grass\", \"flying\"]','2025-10-03 09:50:46','2025-10-03 09:50:46');
INSERT INTO `pokemon` VALUES (188,'skiploom','[\"grass\", \"flying\"]','2025-10-03 09:50:47','2025-10-03 09:50:47');
INSERT INTO `pokemon` VALUES (189,'jumpluff','[\"grass\", \"flying\"]','2025-10-03 09:50:47','2025-10-03 09:50:47');
INSERT INTO `pokemon` VALUES (190,'aipom','[\"normal\"]','2025-10-03 09:50:47','2025-10-03 09:50:47');
INSERT INTO `pokemon` VALUES (191,'sunkern','[\"grass\"]','2025-10-03 09:50:47','2025-10-03 09:50:47');
INSERT INTO `pokemon` VALUES (192,'sunflora','[\"grass\"]','2025-10-03 09:50:47','2025-10-03 09:50:47');
INSERT INTO `pokemon` VALUES (193,'yanma','[\"bug\", \"flying\"]','2025-10-03 09:50:47','2025-10-03 09:50:47');
INSERT INTO `pokemon` VALUES (194,'wooper','[\"water\", \"ground\"]','2025-10-03 09:50:47','2025-10-03 09:50:47');
INSERT INTO `pokemon` VALUES (195,'quagsire','[\"water\", \"ground\"]','2025-10-03 09:50:48','2025-10-03 09:50:48');
INSERT INTO `pokemon` VALUES (196,'espeon','[\"psychic\"]','2025-10-03 09:50:48','2025-10-03 09:50:48');
INSERT INTO `pokemon` VALUES (197,'umbreon','[\"dark\"]','2025-10-03 09:50:48','2025-10-03 09:50:48');
INSERT INTO `pokemon` VALUES (198,'murkrow','[\"dark\", \"flying\"]','2025-10-03 09:50:48','2025-10-03 09:50:48');
INSERT INTO `pokemon` VALUES (199,'slowking','[\"water\", \"psychic\"]','2025-10-03 09:50:48','2025-10-03 09:50:48');
INSERT INTO `pokemon` VALUES (200,'misdreavus','[\"ghost\"]','2025-10-03 09:50:48','2025-10-03 09:50:48');
INSERT INTO `pokemon` VALUES (201,'unown','[\"psychic\"]','2025-10-03 09:50:49','2025-10-03 09:50:49');
INSERT INTO `pokemon` VALUES (202,'wobbuffet','[\"psychic\"]','2025-10-03 09:50:49','2025-10-03 09:50:49');
INSERT INTO `pokemon` VALUES (203,'girafarig','[\"normal\", \"psychic\"]','2025-10-03 09:50:49','2025-10-03 09:50:49');
INSERT INTO `pokemon` VALUES (204,'pineco','[\"bug\"]','2025-10-03 09:50:49','2025-10-03 09:50:49');
INSERT INTO `pokemon` VALUES (205,'forretress','[\"bug\", \"steel\"]','2025-10-03 09:50:49','2025-10-03 09:50:49');
INSERT INTO `pokemon` VALUES (206,'dunsparce','[\"normal\"]','2025-10-03 09:50:49','2025-10-03 09:50:49');
INSERT INTO `pokemon` VALUES (207,'gligar','[\"ground\", \"flying\"]','2025-10-03 09:50:49','2025-10-03 09:50:49');
INSERT INTO `pokemon` VALUES (208,'steelix','[\"steel\", \"ground\"]','2025-10-03 09:50:50','2025-10-03 09:50:50');
INSERT INTO `pokemon` VALUES (209,'snubbull','[\"fairy\"]','2025-10-03 09:50:50','2025-10-03 09:50:50');
INSERT INTO `pokemon` VALUES (210,'granbull','[\"fairy\"]','2025-10-03 09:50:50','2025-10-03 09:50:50');
INSERT INTO `pokemon` VALUES (211,'qwilfish','[\"water\", \"poison\"]','2025-10-03 09:50:50','2025-10-03 09:50:50');
INSERT INTO `pokemon` VALUES (212,'scizor','[\"bug\", \"steel\"]','2025-10-03 09:50:50','2025-10-03 09:50:50');
INSERT INTO `pokemon` VALUES (213,'shuckle','[\"bug\", \"rock\"]','2025-10-03 09:50:50','2025-10-03 09:50:50');
INSERT INTO `pokemon` VALUES (214,'heracross','[\"bug\", \"fighting\"]','2025-10-03 09:50:51','2025-10-03 09:50:51');
INSERT INTO `pokemon` VALUES (215,'sneasel','[\"dark\", \"ice\"]','2025-10-03 09:50:51','2025-10-03 09:50:51');
INSERT INTO `pokemon` VALUES (216,'teddiursa','[\"normal\"]','2025-10-03 09:50:51','2025-10-03 09:50:51');
INSERT INTO `pokemon` VALUES (217,'ursaring','[\"normal\"]','2025-10-03 09:50:51','2025-10-03 09:50:51');
INSERT INTO `pokemon` VALUES (218,'slugma','[\"fire\"]','2025-10-03 09:50:51','2025-10-03 09:50:51');
INSERT INTO `pokemon` VALUES (219,'magcargo','[\"fire\", \"rock\"]','2025-10-03 09:50:51','2025-10-03 09:50:51');
INSERT INTO `pokemon` VALUES (220,'swinub','[\"ice\", \"ground\"]','2025-10-03 09:50:51','2025-10-03 09:50:51');
INSERT INTO `pokemon` VALUES (221,'piloswine','[\"ice\", \"ground\"]','2025-10-03 09:50:52','2025-10-03 09:50:52');
INSERT INTO `pokemon` VALUES (222,'corsola','[\"water\", \"rock\"]','2025-10-03 09:50:52','2025-10-03 09:50:52');
INSERT INTO `pokemon` VALUES (223,'remoraid','[\"water\"]','2025-10-03 09:50:52','2025-10-03 09:50:52');
INSERT INTO `pokemon` VALUES (224,'octillery','[\"water\"]','2025-10-03 09:50:52','2025-10-03 09:50:52');
INSERT INTO `pokemon` VALUES (225,'delibird','[\"ice\", \"flying\"]','2025-10-03 09:50:52','2025-10-03 09:50:52');
INSERT INTO `pokemon` VALUES (226,'mantine','[\"water\", \"flying\"]','2025-10-03 09:50:52','2025-10-03 09:50:52');
INSERT INTO `pokemon` VALUES (227,'skarmory','[\"steel\", \"flying\"]','2025-10-03 09:50:53','2025-10-03 09:50:53');
INSERT INTO `pokemon` VALUES (228,'houndour','[\"dark\", \"fire\"]','2025-10-03 09:50:53','2025-10-03 09:50:53');
INSERT INTO `pokemon` VALUES (229,'houndoom','[\"dark\", \"fire\"]','2025-10-03 09:50:53','2025-10-03 09:50:53');
INSERT INTO `pokemon` VALUES (230,'kingdra','[\"water\", \"dragon\"]','2025-10-03 09:50:53','2025-10-03 09:50:53');
INSERT INTO `pokemon` VALUES (231,'phanpy','[\"ground\"]','2025-10-03 09:50:53','2025-10-03 09:50:53');
INSERT INTO `pokemon` VALUES (232,'donphan','[\"ground\"]','2025-10-03 09:50:53','2025-10-03 09:50:53');
INSERT INTO `pokemon` VALUES (233,'porygon2','[\"normal\"]','2025-10-03 09:50:54','2025-10-03 09:50:54');
INSERT INTO `pokemon` VALUES (234,'stantler','[\"normal\"]','2025-10-03 09:50:54','2025-10-03 09:50:54');
INSERT INTO `pokemon` VALUES (235,'smeargle','[\"normal\"]','2025-10-03 09:50:54','2025-10-03 09:50:54');
INSERT INTO `pokemon` VALUES (236,'tyrogue','[\"fighting\"]','2025-10-03 09:50:54','2025-10-03 09:50:54');
INSERT INTO `pokemon` VALUES (237,'hitmontop','[\"fighting\"]','2025-10-03 09:50:54','2025-10-03 09:50:54');
INSERT INTO `pokemon` VALUES (238,'smoochum','[\"ice\", \"psychic\"]','2025-10-03 09:50:54','2025-10-03 09:50:54');
INSERT INTO `pokemon` VALUES (239,'elekid','[\"electric\"]','2025-10-03 09:50:54','2025-10-03 09:50:54');
INSERT INTO `pokemon` VALUES (240,'magby','[\"fire\"]','2025-10-03 09:50:55','2025-10-03 09:50:55');
INSERT INTO `pokemon` VALUES (241,'miltank','[\"normal\"]','2025-10-03 09:50:55','2025-10-03 09:50:55');
INSERT INTO `pokemon` VALUES (242,'blissey','[\"normal\"]','2025-10-03 09:50:55','2025-10-03 09:50:55');
INSERT INTO `pokemon` VALUES (243,'raikou','[\"electric\"]','2025-10-03 09:50:55','2025-10-03 09:50:55');
INSERT INTO `pokemon` VALUES (244,'entei','[\"fire\"]','2025-10-03 09:50:55','2025-10-03 09:50:55');
INSERT INTO `pokemon` VALUES (245,'suicune','[\"water\"]','2025-10-03 09:50:55','2025-10-03 09:50:55');
INSERT INTO `pokemon` VALUES (246,'larvitar','[\"rock\", \"ground\"]','2025-10-03 09:50:55','2025-10-03 09:50:55');
INSERT INTO `pokemon` VALUES (247,'pupitar','[\"rock\", \"ground\"]','2025-10-03 09:50:56','2025-10-03 09:50:56');
INSERT INTO `pokemon` VALUES (248,'tyranitar','[\"rock\", \"dark\"]','2025-10-03 09:50:56','2025-10-03 09:50:56');
INSERT INTO `pokemon` VALUES (249,'lugia','[\"psychic\", \"flying\"]','2025-10-03 09:50:56','2025-10-03 09:50:56');
INSERT INTO `pokemon` VALUES (250,'ho-oh','[\"fire\", \"flying\"]','2025-10-03 09:50:56','2025-10-03 09:50:56');
INSERT INTO `pokemon` VALUES (251,'celebi','[\"psychic\", \"grass\"]','2025-10-03 09:50:56','2025-10-03 09:50:56');
INSERT INTO `pokemon` VALUES (252,'treecko','[\"grass\"]','2025-10-03 09:50:56','2025-10-03 09:50:56');
INSERT INTO `pokemon` VALUES (253,'grovyle','[\"grass\"]','2025-10-03 09:50:57','2025-10-03 09:50:57');
INSERT INTO `pokemon` VALUES (254,'sceptile','[\"grass\"]','2025-10-03 09:50:57','2025-10-03 09:50:57');
INSERT INTO `pokemon` VALUES (255,'torchic','[\"fire\"]','2025-10-03 09:50:57','2025-10-03 09:50:57');
INSERT INTO `pokemon` VALUES (256,'combusken','[\"fire\", \"fighting\"]','2025-10-03 09:50:57','2025-10-03 09:50:57');
INSERT INTO `pokemon` VALUES (257,'blaziken','[\"fire\", \"fighting\"]','2025-10-03 09:50:57','2025-10-03 09:50:57');
INSERT INTO `pokemon` VALUES (258,'mudkip','[\"water\"]','2025-10-03 09:50:57','2025-10-03 09:50:57');
INSERT INTO `pokemon` VALUES (259,'marshtomp','[\"water\", \"ground\"]','2025-10-03 09:50:58','2025-10-03 09:50:58');
INSERT INTO `pokemon` VALUES (260,'swampert','[\"water\", \"ground\"]','2025-10-03 09:50:58','2025-10-03 09:50:58');
INSERT INTO `pokemon` VALUES (261,'poochyena','[\"dark\"]','2025-10-03 09:50:58','2025-10-03 09:50:58');
INSERT INTO `pokemon` VALUES (262,'mightyena','[\"dark\"]','2025-10-03 09:50:58','2025-10-03 09:50:58');
INSERT INTO `pokemon` VALUES (263,'zigzagoon','[\"normal\"]','2025-10-03 09:50:58','2025-10-03 09:50:58');
INSERT INTO `pokemon` VALUES (264,'linoone','[\"normal\"]','2025-10-03 09:50:58','2025-10-03 09:50:58');
INSERT INTO `pokemon` VALUES (265,'wurmple','[\"bug\"]','2025-10-03 09:50:58','2025-10-03 09:50:58');
INSERT INTO `pokemon` VALUES (266,'silcoon','[\"bug\"]','2025-10-03 09:50:59','2025-10-03 09:50:59');
INSERT INTO `pokemon` VALUES (267,'beautifly','[\"bug\", \"flying\"]','2025-10-03 09:50:59','2025-10-03 09:50:59');
INSERT INTO `pokemon` VALUES (268,'cascoon','[\"bug\"]','2025-10-03 09:50:59','2025-10-03 09:50:59');
INSERT INTO `pokemon` VALUES (269,'dustox','[\"bug\", \"poison\"]','2025-10-03 09:50:59','2025-10-03 09:50:59');
INSERT INTO `pokemon` VALUES (270,'lotad','[\"water\", \"grass\"]','2025-10-03 09:50:59','2025-10-03 09:50:59');
INSERT INTO `pokemon` VALUES (271,'lombre','[\"water\", \"grass\"]','2025-10-03 09:50:59','2025-10-03 09:50:59');
INSERT INTO `pokemon` VALUES (272,'ludicolo','[\"water\", \"grass\"]','2025-10-03 09:50:59','2025-10-03 09:50:59');
INSERT INTO `pokemon` VALUES (273,'seedot','[\"grass\"]','2025-10-03 09:51:00','2025-10-03 09:51:00');
INSERT INTO `pokemon` VALUES (274,'nuzleaf','[\"grass\", \"dark\"]','2025-10-03 09:51:00','2025-10-03 09:51:00');
INSERT INTO `pokemon` VALUES (275,'shiftry','[\"grass\", \"dark\"]','2025-10-03 09:51:00','2025-10-03 09:51:00');
INSERT INTO `pokemon` VALUES (276,'taillow','[\"normal\", \"flying\"]','2025-10-03 09:51:00','2025-10-03 09:51:00');
INSERT INTO `pokemon` VALUES (277,'swellow','[\"normal\", \"flying\"]','2025-10-03 09:51:00','2025-10-03 09:51:00');
INSERT INTO `pokemon` VALUES (278,'wingull','[\"water\", \"flying\"]','2025-10-03 09:51:00','2025-10-03 09:51:00');
INSERT INTO `pokemon` VALUES (279,'pelipper','[\"water\", \"flying\"]','2025-10-03 09:51:00','2025-10-03 09:51:00');
INSERT INTO `pokemon` VALUES (280,'ralts','[\"psychic\", \"fairy\"]','2025-10-03 09:51:02','2025-10-03 09:51:02');
INSERT INTO `pokemon` VALUES (281,'kirlia','[\"psychic\", \"fairy\"]','2025-10-03 09:51:02','2025-10-03 09:51:02');
INSERT INTO `pokemon` VALUES (282,'gardevoir','[\"psychic\", \"fairy\"]','2025-10-03 09:51:02','2025-10-03 09:51:02');
INSERT INTO `pokemon` VALUES (283,'surskit','[\"bug\", \"water\"]','2025-10-03 09:51:02','2025-10-03 09:51:02');
INSERT INTO `pokemon` VALUES (284,'masquerain','[\"bug\", \"flying\"]','2025-10-03 09:51:02','2025-10-03 09:51:02');
INSERT INTO `pokemon` VALUES (285,'shroomish','[\"grass\"]','2025-10-03 09:51:02','2025-10-03 09:51:02');
INSERT INTO `pokemon` VALUES (286,'breloom','[\"grass\", \"fighting\"]','2025-10-03 09:51:02','2025-10-03 09:51:02');
INSERT INTO `pokemon` VALUES (287,'slakoth','[\"normal\"]','2025-10-03 09:51:03','2025-10-03 09:51:03');
INSERT INTO `pokemon` VALUES (288,'vigoroth','[\"normal\"]','2025-10-03 09:51:03','2025-10-03 09:51:03');
INSERT INTO `pokemon` VALUES (289,'slaking','[\"normal\"]','2025-10-03 09:51:03','2025-10-03 09:51:03');
INSERT INTO `pokemon` VALUES (290,'nincada','[\"bug\", \"ground\"]','2025-10-03 09:51:03','2025-10-03 09:51:03');
INSERT INTO `pokemon` VALUES (291,'ninjask','[\"bug\", \"flying\"]','2025-10-03 09:51:03','2025-10-03 09:51:03');
INSERT INTO `pokemon` VALUES (292,'shedinja','[\"bug\", \"ghost\"]','2025-10-03 09:51:03','2025-10-03 09:51:03');
INSERT INTO `pokemon` VALUES (293,'whismur','[\"normal\"]','2025-10-03 09:51:03','2025-10-03 09:51:03');
INSERT INTO `pokemon` VALUES (294,'loudred','[\"normal\"]','2025-10-03 09:51:04','2025-10-03 09:51:04');
INSERT INTO `pokemon` VALUES (295,'exploud','[\"normal\"]','2025-10-03 09:51:04','2025-10-03 09:51:04');
INSERT INTO `pokemon` VALUES (296,'makuhita','[\"fighting\"]','2025-10-03 09:51:04','2025-10-03 09:51:04');
INSERT INTO `pokemon` VALUES (297,'hariyama','[\"fighting\"]','2025-10-03 09:51:04','2025-10-03 09:51:04');
INSERT INTO `pokemon` VALUES (298,'azurill','[\"normal\", \"fairy\"]','2025-10-03 09:51:04','2025-10-03 09:51:04');
INSERT INTO `pokemon` VALUES (299,'nosepass','[\"rock\"]','2025-10-03 09:51:04','2025-10-03 09:51:04');
INSERT INTO `pokemon` VALUES (300,'skitty','[\"normal\"]','2025-10-03 09:51:05','2025-10-03 09:51:05');
INSERT INTO `pokemon` VALUES (301,'delcatty','[\"normal\"]','2025-10-03 09:51:05','2025-10-03 09:51:05');
INSERT INTO `pokemon` VALUES (302,'sableye','[\"dark\", \"ghost\"]','2025-10-03 09:51:05','2025-10-03 09:51:05');
INSERT INTO `pokemon` VALUES (303,'mawile','[\"steel\", \"fairy\"]','2025-10-03 09:51:05','2025-10-03 09:51:05');
INSERT INTO `pokemon` VALUES (304,'aron','[\"steel\", \"rock\"]','2025-10-03 09:51:05','2025-10-03 09:51:05');
INSERT INTO `pokemon` VALUES (305,'lairon','[\"steel\", \"rock\"]','2025-10-03 09:51:05','2025-10-03 09:51:05');
INSERT INTO `pokemon` VALUES (306,'aggron','[\"steel\", \"rock\"]','2025-10-03 09:51:05','2025-10-03 09:51:05');
INSERT INTO `pokemon` VALUES (307,'meditite','[\"fighting\", \"psychic\"]','2025-10-03 09:51:06','2025-10-03 09:51:06');
INSERT INTO `pokemon` VALUES (308,'medicham','[\"fighting\", \"psychic\"]','2025-10-03 09:51:06','2025-10-03 09:51:06');
INSERT INTO `pokemon` VALUES (309,'electrike','[\"electric\"]','2025-10-03 09:51:06','2025-10-03 09:51:06');
INSERT INTO `pokemon` VALUES (310,'manectric','[\"electric\"]','2025-10-03 09:51:06','2025-10-03 09:51:06');
INSERT INTO `pokemon` VALUES (311,'plusle','[\"electric\"]','2025-10-03 09:51:06','2025-10-03 09:51:06');
INSERT INTO `pokemon` VALUES (312,'minun','[\"electric\"]','2025-10-03 09:51:06','2025-10-03 09:51:06');
INSERT INTO `pokemon` VALUES (313,'volbeat','[\"bug\"]','2025-10-03 09:51:07','2025-10-03 09:51:07');
INSERT INTO `pokemon` VALUES (314,'illumise','[\"bug\"]','2025-10-03 09:51:07','2025-10-03 09:51:07');
INSERT INTO `pokemon` VALUES (315,'roselia','[\"grass\", \"poison\"]','2025-10-03 09:51:07','2025-10-03 09:51:07');
INSERT INTO `pokemon` VALUES (316,'gulpin','[\"poison\"]','2025-10-03 09:51:07','2025-10-03 09:51:07');
INSERT INTO `pokemon` VALUES (317,'swalot','[\"poison\"]','2025-10-03 09:51:07','2025-10-03 09:51:07');
INSERT INTO `pokemon` VALUES (318,'carvanha','[\"water\", \"dark\"]','2025-10-03 09:51:07','2025-10-03 09:51:07');
INSERT INTO `pokemon` VALUES (319,'sharpedo','[\"water\", \"dark\"]','2025-10-03 09:51:08','2025-10-03 09:51:08');
INSERT INTO `pokemon` VALUES (320,'wailmer','[\"water\"]','2025-10-03 09:51:08','2025-10-03 09:51:08');
INSERT INTO `pokemon` VALUES (321,'wailord','[\"water\"]','2025-10-03 09:51:08','2025-10-03 09:51:08');
INSERT INTO `pokemon` VALUES (322,'numel','[\"fire\", \"ground\"]','2025-10-03 09:51:08','2025-10-03 09:51:08');
INSERT INTO `pokemon` VALUES (323,'camerupt','[\"fire\", \"ground\"]','2025-10-03 09:51:08','2025-10-03 09:51:08');
INSERT INTO `pokemon` VALUES (324,'torkoal','[\"fire\"]','2025-10-03 09:51:08','2025-10-03 09:51:08');
INSERT INTO `pokemon` VALUES (325,'spoink','[\"psychic\"]','2025-10-03 09:51:08','2025-10-03 09:51:08');
INSERT INTO `pokemon` VALUES (326,'grumpig','[\"psychic\"]','2025-10-03 09:51:09','2025-10-03 09:51:09');
INSERT INTO `pokemon` VALUES (327,'spinda','[\"normal\"]','2025-10-03 09:51:09','2025-10-03 09:51:09');
INSERT INTO `pokemon` VALUES (328,'trapinch','[\"ground\"]','2025-10-03 09:51:09','2025-10-03 09:51:09');
INSERT INTO `pokemon` VALUES (329,'vibrava','[\"ground\", \"dragon\"]','2025-10-03 09:51:09','2025-10-03 09:51:09');
INSERT INTO `pokemon` VALUES (330,'flygon','[\"ground\", \"dragon\"]','2025-10-03 09:51:09','2025-10-03 09:51:09');
INSERT INTO `pokemon` VALUES (331,'cacnea','[\"grass\"]','2025-10-03 09:51:09','2025-10-03 09:51:09');
INSERT INTO `pokemon` VALUES (332,'cacturne','[\"grass\", \"dark\"]','2025-10-03 09:51:10','2025-10-03 09:51:10');
INSERT INTO `pokemon` VALUES (333,'swablu','[\"normal\", \"flying\"]','2025-10-03 09:51:10','2025-10-03 09:51:10');
INSERT INTO `pokemon` VALUES (334,'altaria','[\"dragon\", \"flying\"]','2025-10-03 09:51:10','2025-10-03 09:51:10');
INSERT INTO `pokemon` VALUES (335,'zangoose','[\"normal\"]','2025-10-03 09:51:10','2025-10-03 09:51:10');
INSERT INTO `pokemon` VALUES (336,'seviper','[\"poison\"]','2025-10-03 09:51:10','2025-10-03 09:51:10');
INSERT INTO `pokemon` VALUES (337,'lunatone','[\"rock\", \"psychic\"]','2025-10-03 09:51:10','2025-10-03 09:51:10');
INSERT INTO `pokemon` VALUES (338,'solrock','[\"rock\", \"psychic\"]','2025-10-03 09:51:11','2025-10-03 09:51:11');
INSERT INTO `pokemon` VALUES (339,'barboach','[\"water\", \"ground\"]','2025-10-03 09:51:11','2025-10-03 09:51:11');
INSERT INTO `pokemon` VALUES (340,'whiscash','[\"water\", \"ground\"]','2025-10-03 09:51:11','2025-10-03 09:51:11');
INSERT INTO `pokemon` VALUES (341,'corphish','[\"water\"]','2025-10-03 09:51:11','2025-10-03 09:51:11');
INSERT INTO `pokemon` VALUES (342,'crawdaunt','[\"water\", \"dark\"]','2025-10-03 09:51:11','2025-10-03 09:51:11');
INSERT INTO `pokemon` VALUES (343,'baltoy','[\"ground\", \"psychic\"]','2025-10-03 09:51:11','2025-10-03 09:51:11');
INSERT INTO `pokemon` VALUES (344,'claydol','[\"ground\", \"psychic\"]','2025-10-03 09:51:11','2025-10-03 09:51:11');
INSERT INTO `pokemon` VALUES (345,'lileep','[\"rock\", \"grass\"]','2025-10-03 09:51:12','2025-10-03 09:51:12');
INSERT INTO `pokemon` VALUES (346,'cradily','[\"rock\", \"grass\"]','2025-10-03 09:51:12','2025-10-03 09:51:12');
INSERT INTO `pokemon` VALUES (347,'anorith','[\"rock\", \"bug\"]','2025-10-03 09:51:12','2025-10-03 09:51:12');
INSERT INTO `pokemon` VALUES (348,'armaldo','[\"rock\", \"bug\"]','2025-10-03 09:51:12','2025-10-03 09:51:12');
INSERT INTO `pokemon` VALUES (349,'feebas','[\"water\"]','2025-10-03 09:51:12','2025-10-03 09:51:12');
INSERT INTO `pokemon` VALUES (350,'milotic','[\"water\"]','2025-10-03 09:51:12','2025-10-03 09:51:12');
INSERT INTO `pokemon` VALUES (351,'castform','[\"normal\"]','2025-10-03 09:51:13','2025-10-03 09:51:13');
INSERT INTO `pokemon` VALUES (352,'kecleon','[\"normal\"]','2025-10-03 09:51:13','2025-10-03 09:51:13');
INSERT INTO `pokemon` VALUES (353,'shuppet','[\"ghost\"]','2025-10-03 09:51:13','2025-10-03 09:51:13');
INSERT INTO `pokemon` VALUES (354,'banette','[\"ghost\"]','2025-10-03 09:51:13','2025-10-03 09:51:13');
INSERT INTO `pokemon` VALUES (355,'duskull','[\"ghost\"]','2025-10-03 09:51:13','2025-10-03 09:51:13');
INSERT INTO `pokemon` VALUES (356,'dusclops','[\"ghost\"]','2025-10-03 09:51:13','2025-10-03 09:51:13');
INSERT INTO `pokemon` VALUES (357,'tropius','[\"grass\", \"flying\"]','2025-10-03 09:51:13','2025-10-03 09:51:13');
INSERT INTO `pokemon` VALUES (358,'chimecho','[\"psychic\"]','2025-10-03 09:51:14','2025-10-03 09:51:14');
INSERT INTO `pokemon` VALUES (359,'absol','[\"dark\"]','2025-10-03 09:51:14','2025-10-03 09:51:14');
INSERT INTO `pokemon` VALUES (360,'wynaut','[\"psychic\"]','2025-10-03 09:51:14','2025-10-03 09:51:14');
INSERT INTO `pokemon` VALUES (361,'snorunt','[\"ice\"]','2025-10-03 09:51:14','2025-10-03 09:51:14');
INSERT INTO `pokemon` VALUES (362,'glalie','[\"ice\"]','2025-10-03 09:51:14','2025-10-03 09:51:14');
INSERT INTO `pokemon` VALUES (363,'spheal','[\"ice\", \"water\"]','2025-10-03 09:51:14','2025-10-03 09:51:14');
INSERT INTO `pokemon` VALUES (364,'sealeo','[\"ice\", \"water\"]','2025-10-03 09:51:15','2025-10-03 09:51:15');
INSERT INTO `pokemon` VALUES (365,'walrein','[\"ice\", \"water\"]','2025-10-03 09:51:15','2025-10-03 09:51:15');
INSERT INTO `pokemon` VALUES (366,'clamperl','[\"water\"]','2025-10-03 09:51:15','2025-10-03 09:51:15');
INSERT INTO `pokemon` VALUES (367,'huntail','[\"water\"]','2025-10-03 09:51:15','2025-10-03 09:51:15');
INSERT INTO `pokemon` VALUES (368,'gorebyss','[\"water\"]','2025-10-03 09:51:15','2025-10-03 09:51:15');
INSERT INTO `pokemon` VALUES (369,'relicanth','[\"water\", \"rock\"]','2025-10-03 09:51:15','2025-10-03 09:51:15');
INSERT INTO `pokemon` VALUES (370,'luvdisc','[\"water\"]','2025-10-03 09:51:15','2025-10-03 09:51:15');
INSERT INTO `pokemon` VALUES (371,'bagon','[\"dragon\"]','2025-10-03 09:51:16','2025-10-03 09:51:16');
INSERT INTO `pokemon` VALUES (372,'shelgon','[\"dragon\"]','2025-10-03 09:51:16','2025-10-03 09:51:16');
INSERT INTO `pokemon` VALUES (373,'salamence','[\"dragon\", \"flying\"]','2025-10-03 09:51:16','2025-10-03 09:51:16');
INSERT INTO `pokemon` VALUES (374,'beldum','[\"steel\", \"psychic\"]','2025-10-03 09:51:16','2025-10-03 09:51:16');
INSERT INTO `pokemon` VALUES (375,'metang','[\"steel\", \"psychic\"]','2025-10-03 09:51:16','2025-10-03 09:51:16');
INSERT INTO `pokemon` VALUES (376,'metagross','[\"steel\", \"psychic\"]','2025-10-03 09:51:16','2025-10-03 09:51:16');
INSERT INTO `pokemon` VALUES (377,'regirock','[\"rock\"]','2025-10-03 09:51:16','2025-10-03 09:51:16');
INSERT INTO `pokemon` VALUES (378,'regice','[\"ice\"]','2025-10-03 09:51:17','2025-10-03 09:51:17');
INSERT INTO `pokemon` VALUES (379,'registeel','[\"steel\"]','2025-10-03 09:51:17','2025-10-03 09:51:17');
INSERT INTO `pokemon` VALUES (380,'latias','[\"dragon\", \"psychic\"]','2025-10-03 09:51:17','2025-10-03 09:51:17');
INSERT INTO `pokemon` VALUES (381,'latios','[\"dragon\", \"psychic\"]','2025-10-03 09:51:17','2025-10-03 09:51:17');
INSERT INTO `pokemon` VALUES (382,'kyogre','[\"water\"]','2025-10-03 09:51:17','2025-10-03 09:51:17');
INSERT INTO `pokemon` VALUES (383,'groudon','[\"ground\"]','2025-10-03 09:51:17','2025-10-03 09:51:17');
INSERT INTO `pokemon` VALUES (384,'rayquaza','[\"dragon\", \"flying\"]','2025-10-03 09:51:17','2025-10-03 09:51:17');
INSERT INTO `pokemon` VALUES (385,'jirachi','[\"steel\", \"psychic\"]','2025-10-03 09:51:18','2025-10-03 09:51:18');
INSERT INTO `pokemon` VALUES (386,'deoxys-normal','[\"psychic\"]','2025-10-03 09:51:18','2025-10-03 09:51:18');
INSERT INTO `pokemon` VALUES (387,'turtwig','[\"grass\"]','2025-10-03 09:51:18','2025-10-03 09:51:18');
INSERT INTO `pokemon` VALUES (388,'grotle','[\"grass\"]','2025-10-03 09:51:18','2025-10-03 09:51:18');
INSERT INTO `pokemon` VALUES (389,'torterra','[\"grass\", \"ground\"]','2025-10-03 09:51:18','2025-10-03 09:51:18');
INSERT INTO `pokemon` VALUES (390,'chimchar','[\"fire\"]','2025-10-03 09:51:18','2025-10-03 09:51:18');
INSERT INTO `pokemon` VALUES (391,'monferno','[\"fire\", \"fighting\"]','2025-10-03 09:51:18','2025-10-03 09:51:18');
INSERT INTO `pokemon` VALUES (392,'infernape','[\"fire\", \"fighting\"]','2025-10-03 09:51:19','2025-10-03 09:51:19');
INSERT INTO `pokemon` VALUES (393,'piplup','[\"water\"]','2025-10-03 09:51:19','2025-10-03 09:51:19');
INSERT INTO `pokemon` VALUES (394,'prinplup','[\"water\"]','2025-10-03 09:51:19','2025-10-03 09:51:19');
INSERT INTO `pokemon` VALUES (395,'empoleon','[\"water\", \"steel\"]','2025-10-03 09:51:19','2025-10-03 09:51:19');
INSERT INTO `pokemon` VALUES (396,'starly','[\"normal\", \"flying\"]','2025-10-03 09:51:19','2025-10-03 09:51:19');
INSERT INTO `pokemon` VALUES (397,'staravia','[\"normal\", \"flying\"]','2025-10-03 09:51:19','2025-10-03 09:51:19');
INSERT INTO `pokemon` VALUES (398,'staraptor','[\"normal\", \"flying\"]','2025-10-03 09:51:20','2025-10-03 09:51:20');
INSERT INTO `pokemon` VALUES (399,'bidoof','[\"normal\"]','2025-10-03 09:51:20','2025-10-03 09:51:20');
INSERT INTO `pokemon` VALUES (400,'bibarel','[\"normal\", \"water\"]','2025-10-03 09:51:20','2025-10-03 09:51:20');
INSERT INTO `pokemon` VALUES (401,'kricketot','[\"bug\"]','2025-10-03 09:51:20','2025-10-03 09:51:20');
INSERT INTO `pokemon` VALUES (402,'kricketune','[\"bug\"]','2025-10-03 09:51:20','2025-10-03 09:51:20');
INSERT INTO `pokemon` VALUES (403,'shinx','[\"electric\"]','2025-10-03 09:51:20','2025-10-03 09:51:20');
INSERT INTO `pokemon` VALUES (404,'luxio','[\"electric\"]','2025-10-03 09:51:20','2025-10-03 09:51:20');
INSERT INTO `pokemon` VALUES (405,'luxray','[\"electric\"]','2025-10-03 09:51:20','2025-10-03 09:51:20');
INSERT INTO `pokemon` VALUES (406,'budew','[\"grass\", \"poison\"]','2025-10-03 09:51:21','2025-10-03 09:51:21');
INSERT INTO `pokemon` VALUES (407,'roserade','[\"grass\", \"poison\"]','2025-10-03 09:51:21','2025-10-03 09:51:21');
INSERT INTO `pokemon` VALUES (408,'cranidos','[\"rock\"]','2025-10-03 09:51:21','2025-10-03 09:51:21');
INSERT INTO `pokemon` VALUES (409,'rampardos','[\"rock\"]','2025-10-03 09:51:21','2025-10-03 09:51:21');
INSERT INTO `pokemon` VALUES (410,'shieldon','[\"rock\", \"steel\"]','2025-10-03 09:51:21','2025-10-03 09:51:21');
INSERT INTO `pokemon` VALUES (411,'bastiodon','[\"rock\", \"steel\"]','2025-10-03 09:51:21','2025-10-03 09:51:21');
INSERT INTO `pokemon` VALUES (412,'burmy','[\"bug\"]','2025-10-03 09:51:21','2025-10-03 09:51:21');
INSERT INTO `pokemon` VALUES (413,'wormadam-plant','[\"bug\", \"grass\"]','2025-10-03 09:51:22','2025-10-03 09:51:22');
INSERT INTO `pokemon` VALUES (414,'mothim','[\"bug\", \"flying\"]','2025-10-03 09:51:22','2025-10-03 09:51:22');
INSERT INTO `pokemon` VALUES (415,'combee','[\"bug\", \"flying\"]','2025-10-03 09:51:22','2025-10-03 09:51:22');
INSERT INTO `pokemon` VALUES (416,'vespiquen','[\"bug\", \"flying\"]','2025-10-03 09:51:22','2025-10-03 09:51:22');
INSERT INTO `pokemon` VALUES (417,'pachirisu','[\"electric\"]','2025-10-03 09:51:22','2025-10-03 09:51:22');
INSERT INTO `pokemon` VALUES (418,'buizel','[\"water\"]','2025-10-03 09:51:22','2025-10-03 09:51:22');
INSERT INTO `pokemon` VALUES (419,'floatzel','[\"water\"]','2025-10-03 09:51:22','2025-10-03 09:51:22');
INSERT INTO `pokemon` VALUES (420,'cherubi','[\"grass\"]','2025-10-03 09:51:22','2025-10-03 09:51:22');
INSERT INTO `pokemon` VALUES (421,'cherrim','[\"grass\"]','2025-10-03 09:51:23','2025-10-03 09:51:23');
INSERT INTO `pokemon` VALUES (422,'shellos','[\"water\"]','2025-10-03 09:51:23','2025-10-03 09:51:23');
INSERT INTO `pokemon` VALUES (423,'gastrodon','[\"water\", \"ground\"]','2025-10-03 09:51:23','2025-10-03 09:51:23');
INSERT INTO `pokemon` VALUES (424,'ambipom','[\"normal\"]','2025-10-03 09:51:23','2025-10-03 09:51:23');
INSERT INTO `pokemon` VALUES (425,'drifloon','[\"ghost\", \"flying\"]','2025-10-03 09:51:23','2025-10-03 09:51:23');
INSERT INTO `pokemon` VALUES (426,'drifblim','[\"ghost\", \"flying\"]','2025-10-03 09:51:23','2025-10-03 09:51:23');
INSERT INTO `pokemon` VALUES (427,'buneary','[\"normal\"]','2025-10-03 09:51:23','2025-10-03 09:51:23');
INSERT INTO `pokemon` VALUES (428,'lopunny','[\"normal\"]','2025-10-03 09:51:24','2025-10-03 09:51:24');
INSERT INTO `pokemon` VALUES (429,'mismagius','[\"ghost\"]','2025-10-03 09:51:24','2025-10-03 09:51:24');
INSERT INTO `pokemon` VALUES (430,'honchkrow','[\"dark\", \"flying\"]','2025-10-03 09:51:24','2025-10-03 09:51:24');
INSERT INTO `pokemon` VALUES (431,'glameow','[\"normal\"]','2025-10-03 09:51:24','2025-10-03 09:51:24');
INSERT INTO `pokemon` VALUES (432,'purugly','[\"normal\"]','2025-10-03 09:51:24','2025-10-03 09:51:24');
INSERT INTO `pokemon` VALUES (433,'chingling','[\"psychic\"]','2025-10-03 09:51:24','2025-10-03 09:51:24');
INSERT INTO `pokemon` VALUES (434,'stunky','[\"poison\", \"dark\"]','2025-10-03 09:51:24','2025-10-03 09:51:24');
INSERT INTO `pokemon` VALUES (435,'skuntank','[\"poison\", \"dark\"]','2025-10-03 09:51:25','2025-10-03 09:51:25');
INSERT INTO `pokemon` VALUES (436,'bronzor','[\"steel\", \"psychic\"]','2025-10-03 09:51:25','2025-10-03 09:51:25');
INSERT INTO `pokemon` VALUES (437,'bronzong','[\"steel\", \"psychic\"]','2025-10-03 09:51:25','2025-10-03 09:51:25');
INSERT INTO `pokemon` VALUES (438,'bonsly','[\"rock\"]','2025-10-03 09:51:25','2025-10-03 09:51:25');
INSERT INTO `pokemon` VALUES (439,'mime-jr','[\"psychic\", \"fairy\"]','2025-10-03 09:51:25','2025-10-03 09:51:25');
INSERT INTO `pokemon` VALUES (440,'happiny','[\"normal\"]','2025-10-03 09:51:25','2025-10-03 09:51:25');
INSERT INTO `pokemon` VALUES (441,'chatot','[\"normal\", \"flying\"]','2025-10-03 09:51:26','2025-10-03 09:51:26');
INSERT INTO `pokemon` VALUES (442,'spiritomb','[\"ghost\", \"dark\"]','2025-10-03 09:51:26','2025-10-03 09:51:26');
INSERT INTO `pokemon` VALUES (443,'gible','[\"dragon\", \"ground\"]','2025-10-03 09:51:26','2025-10-03 09:51:26');
INSERT INTO `pokemon` VALUES (444,'gabite','[\"dragon\", \"ground\"]','2025-10-03 09:51:26','2025-10-03 09:51:26');
INSERT INTO `pokemon` VALUES (445,'garchomp','[\"dragon\", \"ground\"]','2025-10-03 09:51:26','2025-10-03 09:51:26');
INSERT INTO `pokemon` VALUES (446,'munchlax','[\"normal\"]','2025-10-03 09:51:26','2025-10-03 09:51:26');
INSERT INTO `pokemon` VALUES (447,'riolu','[\"fighting\"]','2025-10-03 09:51:26','2025-10-03 09:51:26');
INSERT INTO `pokemon` VALUES (448,'lucario','[\"fighting\", \"steel\"]','2025-10-03 09:51:27','2025-10-03 09:51:27');
INSERT INTO `pokemon` VALUES (449,'hippopotas','[\"ground\"]','2025-10-03 09:51:27','2025-10-03 09:51:27');
INSERT INTO `pokemon` VALUES (450,'hippowdon','[\"ground\"]','2025-10-03 09:51:27','2025-10-03 09:51:27');
INSERT INTO `pokemon` VALUES (451,'skorupi','[\"poison\", \"bug\"]','2025-10-03 09:51:27','2025-10-03 09:51:27');
INSERT INTO `pokemon` VALUES (452,'drapion','[\"poison\", \"dark\"]','2025-10-03 09:51:27','2025-10-03 09:51:27');
INSERT INTO `pokemon` VALUES (453,'croagunk','[\"poison\", \"fighting\"]','2025-10-03 09:51:27','2025-10-03 09:51:27');
INSERT INTO `pokemon` VALUES (454,'toxicroak','[\"poison\", \"fighting\"]','2025-10-03 09:51:27','2025-10-03 09:51:27');
INSERT INTO `pokemon` VALUES (455,'carnivine','[\"grass\"]','2025-10-03 09:51:28','2025-10-03 09:51:28');
INSERT INTO `pokemon` VALUES (456,'finneon','[\"water\"]','2025-10-03 09:51:28','2025-10-03 09:51:28');
INSERT INTO `pokemon` VALUES (457,'lumineon','[\"water\"]','2025-10-03 09:51:28','2025-10-03 09:51:28');
INSERT INTO `pokemon` VALUES (458,'mantyke','[\"water\", \"flying\"]','2025-10-03 09:51:28','2025-10-03 09:51:28');
INSERT INTO `pokemon` VALUES (459,'snover','[\"grass\", \"ice\"]','2025-10-03 09:51:28','2025-10-03 09:51:28');
INSERT INTO `pokemon` VALUES (460,'abomasnow','[\"grass\", \"ice\"]','2025-10-03 09:51:28','2025-10-03 09:51:28');
INSERT INTO `pokemon` VALUES (461,'weavile','[\"dark\", \"ice\"]','2025-10-03 09:51:28','2025-10-03 09:51:28');
INSERT INTO `pokemon` VALUES (462,'magnezone','[\"electric\", \"steel\"]','2025-10-03 09:51:29','2025-10-03 09:51:29');
INSERT INTO `pokemon` VALUES (463,'lickilicky','[\"normal\"]','2025-10-03 09:51:29','2025-10-03 09:51:29');
INSERT INTO `pokemon` VALUES (464,'rhyperior','[\"ground\", \"rock\"]','2025-10-03 09:51:29','2025-10-03 09:51:29');
INSERT INTO `pokemon` VALUES (465,'tangrowth','[\"grass\"]','2025-10-03 09:51:29','2025-10-03 09:51:29');
INSERT INTO `pokemon` VALUES (466,'electivire','[\"electric\"]','2025-10-03 09:51:29','2025-10-03 09:51:29');
INSERT INTO `pokemon` VALUES (467,'magmortar','[\"fire\"]','2025-10-03 09:51:29','2025-10-03 09:51:29');
INSERT INTO `pokemon` VALUES (468,'togekiss','[\"fairy\", \"flying\"]','2025-10-03 09:51:30','2025-10-03 09:51:30');
INSERT INTO `pokemon` VALUES (469,'yanmega','[\"bug\", \"flying\"]','2025-10-03 09:51:30','2025-10-03 09:51:30');
INSERT INTO `pokemon` VALUES (470,'leafeon','[\"grass\"]','2025-10-03 09:51:30','2025-10-03 09:51:30');
INSERT INTO `pokemon` VALUES (471,'glaceon','[\"ice\"]','2025-10-03 09:51:30','2025-10-03 09:51:30');
INSERT INTO `pokemon` VALUES (472,'gliscor','[\"ground\", \"flying\"]','2025-10-03 09:51:30','2025-10-03 09:51:30');
INSERT INTO `pokemon` VALUES (473,'mamoswine','[\"ice\", \"ground\"]','2025-10-03 09:51:30','2025-10-03 09:51:30');
INSERT INTO `pokemon` VALUES (474,'porygon-z','[\"normal\"]','2025-10-03 09:51:30','2025-10-03 09:51:30');
INSERT INTO `pokemon` VALUES (475,'gallade','[\"psychic\", \"fighting\"]','2025-10-03 09:51:31','2025-10-03 09:51:31');
INSERT INTO `pokemon` VALUES (476,'probopass','[\"rock\", \"steel\"]','2025-10-03 09:51:31','2025-10-03 09:51:31');
INSERT INTO `pokemon` VALUES (477,'dusknoir','[\"ghost\"]','2025-10-03 09:51:31','2025-10-03 09:51:31');
INSERT INTO `pokemon` VALUES (478,'froslass','[\"ice\", \"ghost\"]','2025-10-03 09:51:31','2025-10-03 09:51:31');
INSERT INTO `pokemon` VALUES (479,'rotom','[\"electric\", \"ghost\"]','2025-10-03 09:51:31','2025-10-03 09:51:31');
INSERT INTO `pokemon` VALUES (480,'uxie','[\"psychic\"]','2025-10-03 09:51:31','2025-10-03 09:51:31');
INSERT INTO `pokemon` VALUES (481,'mesprit','[\"psychic\"]','2025-10-03 09:51:31','2025-10-03 09:51:31');
INSERT INTO `pokemon` VALUES (482,'azelf','[\"psychic\"]','2025-10-03 09:51:32','2025-10-03 09:51:32');
INSERT INTO `pokemon` VALUES (483,'dialga','[\"steel\", \"dragon\"]','2025-10-03 09:51:32','2025-10-03 09:51:32');
INSERT INTO `pokemon` VALUES (484,'palkia','[\"water\", \"dragon\"]','2025-10-03 09:51:32','2025-10-03 09:51:32');
INSERT INTO `pokemon` VALUES (485,'heatran','[\"fire\", \"steel\"]','2025-10-03 09:51:32','2025-10-03 09:51:32');
INSERT INTO `pokemon` VALUES (486,'regigigas','[\"normal\"]','2025-10-03 09:51:32','2025-10-03 09:51:32');
INSERT INTO `pokemon` VALUES (487,'giratina-altered','[\"ghost\", \"dragon\"]','2025-10-03 09:51:32','2025-10-03 09:51:32');
INSERT INTO `pokemon` VALUES (488,'cresselia','[\"psychic\"]','2025-10-03 09:51:33','2025-10-03 09:51:33');
INSERT INTO `pokemon` VALUES (489,'phione','[\"water\"]','2025-10-03 09:51:33','2025-10-03 09:51:33');
INSERT INTO `pokemon` VALUES (490,'manaphy','[\"water\"]','2025-10-03 09:51:33','2025-10-03 09:51:33');
INSERT INTO `pokemon` VALUES (491,'darkrai','[\"dark\"]','2025-10-03 09:51:33','2025-10-03 09:51:33');
INSERT INTO `pokemon` VALUES (492,'shaymin-land','[\"grass\"]','2025-10-03 09:51:33','2025-10-03 09:51:33');
INSERT INTO `pokemon` VALUES (493,'arceus','[\"normal\"]','2025-10-03 09:51:33','2025-10-03 09:51:33');
INSERT INTO `pokemon` VALUES (494,'victini','[\"psychic\", \"fire\"]','2025-10-03 09:51:33','2025-10-03 09:51:33');
INSERT INTO `pokemon` VALUES (495,'snivy','[\"grass\"]','2025-10-03 09:51:34','2025-10-03 09:51:34');
INSERT INTO `pokemon` VALUES (496,'servine','[\"grass\"]','2025-10-03 09:51:34','2025-10-03 09:51:34');
INSERT INTO `pokemon` VALUES (497,'serperior','[\"grass\"]','2025-10-03 09:51:34','2025-10-03 09:51:34');
INSERT INTO `pokemon` VALUES (498,'tepig','[\"fire\"]','2025-10-03 09:51:34','2025-10-03 09:51:34');
INSERT INTO `pokemon` VALUES (499,'pignite','[\"fire\", \"fighting\"]','2025-10-03 09:51:34','2025-10-03 09:51:34');
INSERT INTO `pokemon` VALUES (500,'emboar','[\"fire\", \"fighting\"]','2025-10-03 09:51:34','2025-10-03 09:51:34');
INSERT INTO `pokemon` VALUES (501,'oshawott','[\"water\"]','2025-10-03 09:51:34','2025-10-03 09:51:34');
INSERT INTO `pokemon` VALUES (502,'dewott','[\"water\"]','2025-10-03 09:51:34','2025-10-03 09:51:34');
INSERT INTO `pokemon` VALUES (503,'samurott','[\"water\"]','2025-10-03 09:51:35','2025-10-03 09:51:35');
INSERT INTO `pokemon` VALUES (504,'patrat','[\"normal\"]','2025-10-03 09:51:35','2025-10-03 09:51:35');
INSERT INTO `pokemon` VALUES (505,'watchog','[\"normal\"]','2025-10-03 09:51:35','2025-10-03 09:51:35');
INSERT INTO `pokemon` VALUES (506,'lillipup','[\"normal\"]','2025-10-03 09:51:35','2025-10-03 09:51:35');
INSERT INTO `pokemon` VALUES (507,'herdier','[\"normal\"]','2025-10-03 09:51:35','2025-10-03 09:51:35');
INSERT INTO `pokemon` VALUES (508,'stoutland','[\"normal\"]','2025-10-03 09:51:35','2025-10-03 09:51:35');
INSERT INTO `pokemon` VALUES (509,'purrloin','[\"dark\"]','2025-10-03 09:51:35','2025-10-03 09:51:35');
INSERT INTO `pokemon` VALUES (510,'liepard','[\"dark\"]','2025-10-03 09:51:35','2025-10-03 09:51:35');
INSERT INTO `pokemon` VALUES (511,'pansage','[\"grass\"]','2025-10-03 09:51:36','2025-10-03 09:51:36');
INSERT INTO `pokemon` VALUES (512,'simisage','[\"grass\"]','2025-10-03 09:51:36','2025-10-03 09:51:36');
INSERT INTO `pokemon` VALUES (513,'pansear','[\"fire\"]','2025-10-03 09:51:36','2025-10-03 09:51:36');
INSERT INTO `pokemon` VALUES (514,'simisear','[\"fire\"]','2025-10-03 09:51:36','2025-10-03 09:51:36');
INSERT INTO `pokemon` VALUES (515,'panpour','[\"water\"]','2025-10-03 09:51:36','2025-10-03 09:51:36');
INSERT INTO `pokemon` VALUES (516,'simipour','[\"water\"]','2025-10-03 09:51:36','2025-10-03 09:51:36');
INSERT INTO `pokemon` VALUES (517,'munna','[\"psychic\"]','2025-10-03 09:51:36','2025-10-03 09:51:36');
INSERT INTO `pokemon` VALUES (518,'musharna','[\"psychic\"]','2025-10-03 09:51:36','2025-10-03 09:51:36');
INSERT INTO `pokemon` VALUES (519,'pidove','[\"normal\", \"flying\"]','2025-10-03 09:51:36','2025-10-03 09:51:36');
INSERT INTO `pokemon` VALUES (520,'tranquill','[\"normal\", \"flying\"]','2025-10-03 09:51:37','2025-10-03 09:51:37');
INSERT INTO `pokemon` VALUES (521,'unfezant','[\"normal\", \"flying\"]','2025-10-03 09:51:37','2025-10-03 09:51:37');
INSERT INTO `pokemon` VALUES (522,'blitzle','[\"electric\"]','2025-10-03 09:51:37','2025-10-03 09:51:37');
INSERT INTO `pokemon` VALUES (523,'zebstrika','[\"electric\"]','2025-10-03 09:51:37','2025-10-03 09:51:37');
INSERT INTO `pokemon` VALUES (524,'roggenrola','[\"rock\"]','2025-10-03 09:51:37','2025-10-03 09:51:37');
INSERT INTO `pokemon` VALUES (525,'boldore','[\"rock\"]','2025-10-03 09:51:37','2025-10-03 09:51:37');
INSERT INTO `pokemon` VALUES (526,'gigalith','[\"rock\"]','2025-10-03 09:51:37','2025-10-03 09:51:37');
INSERT INTO `pokemon` VALUES (527,'woobat','[\"psychic\", \"flying\"]','2025-10-03 09:51:37','2025-10-03 09:51:37');
INSERT INTO `pokemon` VALUES (528,'swoobat','[\"psychic\", \"flying\"]','2025-10-03 09:51:38','2025-10-03 09:51:38');
INSERT INTO `pokemon` VALUES (529,'drilbur','[\"ground\"]','2025-10-03 09:51:38','2025-10-03 09:51:38');
INSERT INTO `pokemon` VALUES (530,'excadrill','[\"ground\", \"steel\"]','2025-10-03 09:51:38','2025-10-03 09:51:38');
INSERT INTO `pokemon` VALUES (531,'audino','[\"normal\"]','2025-10-03 09:51:38','2025-10-03 09:51:38');
INSERT INTO `pokemon` VALUES (532,'timburr','[\"fighting\"]','2025-10-03 09:51:38','2025-10-03 09:51:38');
INSERT INTO `pokemon` VALUES (533,'gurdurr','[\"fighting\"]','2025-10-03 09:51:38','2025-10-03 09:51:38');
INSERT INTO `pokemon` VALUES (534,'conkeldurr','[\"fighting\"]','2025-10-03 09:51:38','2025-10-03 09:51:38');
INSERT INTO `pokemon` VALUES (535,'tympole','[\"water\"]','2025-10-03 09:51:39','2025-10-03 09:51:39');
INSERT INTO `pokemon` VALUES (536,'palpitoad','[\"water\", \"ground\"]','2025-10-03 09:51:39','2025-10-03 09:51:39');
INSERT INTO `pokemon` VALUES (537,'seismitoad','[\"water\", \"ground\"]','2025-10-03 09:51:39','2025-10-03 09:51:39');
INSERT INTO `pokemon` VALUES (538,'throh','[\"fighting\"]','2025-10-03 09:51:39','2025-10-03 09:51:39');
INSERT INTO `pokemon` VALUES (539,'sawk','[\"fighting\"]','2025-10-03 09:51:39','2025-10-03 09:51:39');
INSERT INTO `pokemon` VALUES (540,'sewaddle','[\"bug\", \"grass\"]','2025-10-03 09:51:39','2025-10-03 09:51:39');
INSERT INTO `pokemon` VALUES (541,'swadloon','[\"bug\", \"grass\"]','2025-10-03 09:51:39','2025-10-03 09:51:39');
INSERT INTO `pokemon` VALUES (542,'leavanny','[\"bug\", \"grass\"]','2025-10-03 09:51:39','2025-10-03 09:51:39');
INSERT INTO `pokemon` VALUES (543,'venipede','[\"bug\", \"poison\"]','2025-10-03 09:51:39','2025-10-03 09:51:39');
INSERT INTO `pokemon` VALUES (544,'whirlipede','[\"bug\", \"poison\"]','2025-10-03 09:51:40','2025-10-03 09:51:40');
INSERT INTO `pokemon` VALUES (545,'scolipede','[\"bug\", \"poison\"]','2025-10-03 09:51:40','2025-10-03 09:51:40');
INSERT INTO `pokemon` VALUES (546,'cottonee','[\"grass\", \"fairy\"]','2025-10-03 09:51:40','2025-10-03 09:51:40');
INSERT INTO `pokemon` VALUES (547,'whimsicott','[\"grass\", \"fairy\"]','2025-10-03 09:51:40','2025-10-03 09:51:40');
INSERT INTO `pokemon` VALUES (548,'petilil','[\"grass\"]','2025-10-03 09:51:40','2025-10-03 09:51:40');
INSERT INTO `pokemon` VALUES (549,'lilligant','[\"grass\"]','2025-10-03 09:51:40','2025-10-03 09:51:40');
INSERT INTO `pokemon` VALUES (550,'basculin-red-striped','[\"water\"]','2025-10-03 09:51:40','2025-10-03 09:51:40');
INSERT INTO `pokemon` VALUES (551,'sandile','[\"ground\", \"dark\"]','2025-10-03 09:51:41','2025-10-03 09:51:41');
INSERT INTO `pokemon` VALUES (552,'krokorok','[\"ground\", \"dark\"]','2025-10-03 09:51:41','2025-10-03 09:51:41');
INSERT INTO `pokemon` VALUES (553,'krookodile','[\"ground\", \"dark\"]','2025-10-03 09:51:42','2025-10-03 09:51:42');
INSERT INTO `pokemon` VALUES (554,'darumaka','[\"fire\"]','2025-10-03 09:51:42','2025-10-03 09:51:42');
INSERT INTO `pokemon` VALUES (555,'darmanitan-standard','[\"fire\"]','2025-10-03 09:51:42','2025-10-03 09:51:42');
INSERT INTO `pokemon` VALUES (556,'maractus','[\"grass\"]','2025-10-03 09:51:42','2025-10-03 09:51:42');
INSERT INTO `pokemon` VALUES (557,'dwebble','[\"bug\", \"rock\"]','2025-10-03 09:51:42','2025-10-03 09:51:42');
INSERT INTO `pokemon` VALUES (558,'crustle','[\"bug\", \"rock\"]','2025-10-03 09:51:42','2025-10-03 09:51:42');
INSERT INTO `pokemon` VALUES (559,'scraggy','[\"dark\", \"fighting\"]','2025-10-03 09:51:43','2025-10-03 09:51:43');
INSERT INTO `pokemon` VALUES (560,'scrafty','[\"dark\", \"fighting\"]','2025-10-03 09:51:43','2025-10-03 09:51:43');
INSERT INTO `pokemon` VALUES (561,'sigilyph','[\"psychic\", \"flying\"]','2025-10-03 09:51:43','2025-10-03 09:51:43');
INSERT INTO `pokemon` VALUES (562,'yamask','[\"ghost\"]','2025-10-03 09:51:43','2025-10-03 09:51:43');
INSERT INTO `pokemon` VALUES (563,'cofagrigus','[\"ghost\"]','2025-10-03 09:51:44','2025-10-03 09:51:44');
INSERT INTO `pokemon` VALUES (564,'tirtouga','[\"water\", \"rock\"]','2025-10-03 09:51:44','2025-10-03 09:51:44');
INSERT INTO `pokemon` VALUES (565,'carracosta','[\"water\", \"rock\"]','2025-10-03 09:51:44','2025-10-03 09:51:44');
INSERT INTO `pokemon` VALUES (566,'archen','[\"rock\", \"flying\"]','2025-10-03 09:51:44','2025-10-03 09:51:44');
INSERT INTO `pokemon` VALUES (567,'archeops','[\"rock\", \"flying\"]','2025-10-03 09:51:44','2025-10-03 09:51:44');
INSERT INTO `pokemon` VALUES (568,'trubbish','[\"poison\"]','2025-10-03 09:51:44','2025-10-03 09:51:44');
INSERT INTO `pokemon` VALUES (569,'garbodor','[\"poison\"]','2025-10-03 09:51:45','2025-10-03 09:51:45');
INSERT INTO `pokemon` VALUES (570,'zorua','[\"dark\"]','2025-10-03 09:51:45','2025-10-03 09:51:45');
INSERT INTO `pokemon` VALUES (571,'zoroark','[\"dark\"]','2025-10-03 09:51:45','2025-10-03 09:51:45');
INSERT INTO `pokemon` VALUES (572,'minccino','[\"normal\"]','2025-10-03 09:51:46','2025-10-03 09:51:46');
INSERT INTO `pokemon` VALUES (573,'cinccino','[\"normal\"]','2025-10-03 09:51:46','2025-10-03 09:51:46');
INSERT INTO `pokemon` VALUES (574,'gothita','[\"psychic\"]','2025-10-03 09:51:46','2025-10-03 09:51:46');
INSERT INTO `pokemon` VALUES (575,'gothorita','[\"psychic\"]','2025-10-03 09:51:46','2025-10-03 09:51:46');
INSERT INTO `pokemon` VALUES (576,'gothitelle','[\"psychic\"]','2025-10-03 09:51:46','2025-10-03 09:51:46');
INSERT INTO `pokemon` VALUES (577,'solosis','[\"psychic\"]','2025-10-03 09:51:46','2025-10-03 09:51:46');
INSERT INTO `pokemon` VALUES (578,'duosion','[\"psychic\"]','2025-10-03 09:51:46','2025-10-03 09:51:46');
INSERT INTO `pokemon` VALUES (579,'reuniclus','[\"psychic\"]','2025-10-03 09:51:47','2025-10-03 09:51:47');
INSERT INTO `pokemon` VALUES (580,'ducklett','[\"water\", \"flying\"]','2025-10-03 09:51:47','2025-10-03 09:51:47');
INSERT INTO `pokemon` VALUES (581,'swanna','[\"water\", \"flying\"]','2025-10-03 09:51:47','2025-10-03 09:51:47');
INSERT INTO `pokemon` VALUES (582,'vanillite','[\"ice\"]','2025-10-03 09:51:47','2025-10-03 09:51:47');
INSERT INTO `pokemon` VALUES (583,'vanillish','[\"ice\"]','2025-10-03 09:51:47','2025-10-03 09:51:47');
INSERT INTO `pokemon` VALUES (584,'vanilluxe','[\"ice\"]','2025-10-03 09:51:47','2025-10-03 09:51:47');
INSERT INTO `pokemon` VALUES (585,'deerling','[\"normal\", \"grass\"]','2025-10-03 09:51:48','2025-10-03 09:51:48');
INSERT INTO `pokemon` VALUES (586,'sawsbuck','[\"normal\", \"grass\"]','2025-10-03 09:51:48','2025-10-03 09:51:48');
INSERT INTO `pokemon` VALUES (587,'emolga','[\"electric\", \"flying\"]','2025-10-03 09:51:49','2025-10-03 09:51:49');
INSERT INTO `pokemon` VALUES (588,'karrablast','[\"bug\"]','2025-10-03 09:51:49','2025-10-03 09:51:49');
INSERT INTO `pokemon` VALUES (589,'escavalier','[\"bug\", \"steel\"]','2025-10-03 09:51:49','2025-10-03 09:51:49');
INSERT INTO `pokemon` VALUES (590,'foongus','[\"grass\", \"poison\"]','2025-10-03 09:51:49','2025-10-03 09:51:49');
INSERT INTO `pokemon` VALUES (591,'amoonguss','[\"grass\", \"poison\"]','2025-10-03 09:51:49','2025-10-03 09:51:49');
INSERT INTO `pokemon` VALUES (592,'frillish','[\"water\", \"ghost\"]','2025-10-03 09:51:49','2025-10-03 09:51:49');
INSERT INTO `pokemon` VALUES (593,'jellicent','[\"water\", \"ghost\"]','2025-10-03 09:51:49','2025-10-03 09:51:49');
INSERT INTO `pokemon` VALUES (594,'alomomola','[\"water\"]','2025-10-03 09:51:50','2025-10-03 09:51:50');
INSERT INTO `pokemon` VALUES (595,'joltik','[\"bug\", \"electric\"]','2025-10-03 09:51:50','2025-10-03 09:51:50');
INSERT INTO `pokemon` VALUES (596,'galvantula','[\"bug\", \"electric\"]','2025-10-03 09:51:50','2025-10-03 09:51:50');
INSERT INTO `pokemon` VALUES (597,'ferroseed','[\"grass\", \"steel\"]','2025-10-03 09:51:50','2025-10-03 09:51:50');
INSERT INTO `pokemon` VALUES (598,'ferrothorn','[\"grass\", \"steel\"]','2025-10-03 09:51:50','2025-10-03 09:51:50');
INSERT INTO `pokemon` VALUES (599,'klink','[\"steel\"]','2025-10-03 09:51:50','2025-10-03 09:51:50');
INSERT INTO `pokemon` VALUES (600,'klang','[\"steel\"]','2025-10-03 09:51:50','2025-10-03 09:51:50');
INSERT INTO `pokemon` VALUES (601,'klinklang','[\"steel\"]','2025-10-03 09:51:51','2025-10-03 09:51:51');
INSERT INTO `pokemon` VALUES (602,'tynamo','[\"electric\"]','2025-10-03 09:51:51','2025-10-03 09:51:51');
INSERT INTO `pokemon` VALUES (603,'eelektrik','[\"electric\"]','2025-10-03 09:51:51','2025-10-03 09:51:51');
INSERT INTO `pokemon` VALUES (604,'eelektross','[\"electric\"]','2025-10-03 09:51:51','2025-10-03 09:51:51');
INSERT INTO `pokemon` VALUES (605,'elgyem','[\"psychic\"]','2025-10-03 09:51:51','2025-10-03 09:51:51');
INSERT INTO `pokemon` VALUES (606,'beheeyem','[\"psychic\"]','2025-10-03 09:51:51','2025-10-03 09:51:51');
INSERT INTO `pokemon` VALUES (607,'litwick','[\"ghost\", \"fire\"]','2025-10-03 09:51:52','2025-10-03 09:51:52');
INSERT INTO `pokemon` VALUES (608,'lampent','[\"ghost\", \"fire\"]','2025-10-03 09:51:52','2025-10-03 09:51:52');
INSERT INTO `pokemon` VALUES (609,'chandelure','[\"ghost\", \"fire\"]','2025-10-03 09:51:52','2025-10-03 09:51:52');
INSERT INTO `pokemon` VALUES (610,'axew','[\"dragon\"]','2025-10-03 09:51:52','2025-10-03 09:51:52');
INSERT INTO `pokemon` VALUES (611,'fraxure','[\"dragon\"]','2025-10-03 09:51:52','2025-10-03 09:51:52');
INSERT INTO `pokemon` VALUES (612,'haxorus','[\"dragon\"]','2025-10-03 09:51:52','2025-10-03 09:51:52');
INSERT INTO `pokemon` VALUES (613,'cubchoo','[\"ice\"]','2025-10-03 09:51:52','2025-10-03 09:51:52');
INSERT INTO `pokemon` VALUES (614,'beartic','[\"ice\"]','2025-10-03 09:51:53','2025-10-03 09:51:53');
INSERT INTO `pokemon` VALUES (615,'cryogonal','[\"ice\"]','2025-10-03 09:51:54','2025-10-03 09:51:54');
INSERT INTO `pokemon` VALUES (616,'shelmet','[\"bug\"]','2025-10-03 09:51:54','2025-10-03 09:51:54');
INSERT INTO `pokemon` VALUES (617,'accelgor','[\"bug\"]','2025-10-03 09:51:54','2025-10-03 09:51:54');
INSERT INTO `pokemon` VALUES (618,'stunfisk','[\"ground\", \"electric\"]','2025-10-03 09:51:54','2025-10-03 09:51:54');
INSERT INTO `pokemon` VALUES (619,'mienfoo','[\"fighting\"]','2025-10-03 09:51:55','2025-10-03 09:51:55');
INSERT INTO `pokemon` VALUES (620,'mienshao','[\"fighting\"]','2025-10-03 09:51:55','2025-10-03 09:51:55');
INSERT INTO `pokemon` VALUES (621,'druddigon','[\"dragon\"]','2025-10-03 09:51:55','2025-10-03 09:51:55');
INSERT INTO `pokemon` VALUES (622,'golett','[\"ground\", \"ghost\"]','2025-10-03 09:51:56','2025-10-03 09:51:56');
INSERT INTO `pokemon` VALUES (623,'golurk','[\"ground\", \"ghost\"]','2025-10-03 09:51:56','2025-10-03 09:51:56');
INSERT INTO `pokemon` VALUES (624,'pawniard','[\"dark\", \"steel\"]','2025-10-03 09:51:56','2025-10-03 09:51:56');
INSERT INTO `pokemon` VALUES (625,'bisharp','[\"dark\", \"steel\"]','2025-10-03 09:51:56','2025-10-03 09:51:56');
INSERT INTO `pokemon` VALUES (626,'bouffalant','[\"normal\"]','2025-10-03 09:51:56','2025-10-03 09:51:56');
INSERT INTO `pokemon` VALUES (627,'rufflet','[\"normal\", \"flying\"]','2025-10-03 09:51:56','2025-10-03 09:51:56');
INSERT INTO `pokemon` VALUES (628,'braviary','[\"normal\", \"flying\"]','2025-10-03 09:51:56','2025-10-03 09:51:56');
INSERT INTO `pokemon` VALUES (629,'vullaby','[\"dark\", \"flying\"]','2025-10-03 09:51:57','2025-10-03 09:51:57');
INSERT INTO `pokemon` VALUES (630,'mandibuzz','[\"dark\", \"flying\"]','2025-10-03 09:51:57','2025-10-03 09:51:57');
INSERT INTO `pokemon` VALUES (631,'heatmor','[\"fire\"]','2025-10-03 09:51:58','2025-10-03 09:51:58');
INSERT INTO `pokemon` VALUES (632,'durant','[\"bug\", \"steel\"]','2025-10-03 09:51:58','2025-10-03 09:51:58');
INSERT INTO `pokemon` VALUES (633,'deino','[\"dark\", \"dragon\"]','2025-10-03 09:51:58','2025-10-03 09:51:58');
INSERT INTO `pokemon` VALUES (634,'zweilous','[\"dark\", \"dragon\"]','2025-10-03 09:51:58','2025-10-03 09:51:58');
INSERT INTO `pokemon` VALUES (635,'hydreigon','[\"dark\", \"dragon\"]','2025-10-03 09:51:58','2025-10-03 09:51:58');
INSERT INTO `pokemon` VALUES (636,'larvesta','[\"bug\", \"fire\"]','2025-10-03 09:51:58','2025-10-03 09:51:58');
INSERT INTO `pokemon` VALUES (637,'volcarona','[\"bug\", \"fire\"]','2025-10-03 09:51:59','2025-10-03 09:51:59');
INSERT INTO `pokemon` VALUES (638,'cobalion','[\"steel\", \"fighting\"]','2025-10-03 09:51:59','2025-10-03 09:51:59');
INSERT INTO `pokemon` VALUES (639,'terrakion','[\"rock\", \"fighting\"]','2025-10-03 09:52:00','2025-10-03 09:52:00');
INSERT INTO `pokemon` VALUES (640,'virizion','[\"grass\", \"fighting\"]','2025-10-03 09:52:00','2025-10-03 09:52:00');
INSERT INTO `pokemon` VALUES (641,'tornadus-incarnate','[\"flying\"]','2025-10-03 09:52:00','2025-10-03 09:52:00');
INSERT INTO `pokemon` VALUES (642,'thundurus-incarnate','[\"electric\", \"flying\"]','2025-10-03 09:52:00','2025-10-03 09:52:00');
INSERT INTO `pokemon` VALUES (643,'reshiram','[\"dragon\", \"fire\"]','2025-10-03 09:52:00','2025-10-03 09:52:00');
INSERT INTO `pokemon` VALUES (644,'zekrom','[\"dragon\", \"electric\"]','2025-10-03 09:52:01','2025-10-03 09:52:01');
INSERT INTO `pokemon` VALUES (645,'landorus-incarnate','[\"ground\", \"flying\"]','2025-10-03 09:52:01','2025-10-03 09:52:01');
INSERT INTO `pokemon` VALUES (646,'kyurem','[\"dragon\", \"ice\"]','2025-10-03 09:52:01','2025-10-03 09:52:01');
INSERT INTO `pokemon` VALUES (647,'keldeo-ordinary','[\"water\", \"fighting\"]','2025-10-03 09:52:01','2025-10-03 09:52:01');
INSERT INTO `pokemon` VALUES (648,'meloetta-aria','[\"normal\", \"psychic\"]','2025-10-03 09:52:01','2025-10-03 09:52:01');
INSERT INTO `pokemon` VALUES (649,'genesect','[\"bug\", \"steel\"]','2025-10-03 09:52:01','2025-10-03 09:52:01');
INSERT INTO `pokemon` VALUES (650,'chespin','[\"grass\"]','2025-10-03 09:52:02','2025-10-03 09:52:02');
INSERT INTO `pokemon` VALUES (651,'quilladin','[\"grass\"]','2025-10-03 09:52:02','2025-10-03 09:52:02');
INSERT INTO `pokemon` VALUES (652,'chesnaught','[\"grass\", \"fighting\"]','2025-10-03 09:52:02','2025-10-03 09:52:02');
INSERT INTO `pokemon` VALUES (653,'fennekin','[\"fire\"]','2025-10-03 09:52:03','2025-10-03 09:52:03');
INSERT INTO `pokemon` VALUES (654,'braixen','[\"fire\"]','2025-10-03 09:52:04','2025-10-03 09:52:04');
INSERT INTO `pokemon` VALUES (655,'delphox','[\"fire\", \"psychic\"]','2025-10-03 09:52:04','2025-10-03 09:52:04');
INSERT INTO `pokemon` VALUES (656,'froakie','[\"water\"]','2025-10-03 09:52:04','2025-10-03 09:52:04');
INSERT INTO `pokemon` VALUES (657,'frogadier','[\"water\"]','2025-10-03 09:52:04','2025-10-03 09:52:04');
INSERT INTO `pokemon` VALUES (658,'greninja','[\"water\", \"dark\"]','2025-10-03 09:52:05','2025-10-03 09:52:05');
INSERT INTO `pokemon` VALUES (659,'bunnelby','[\"normal\"]','2025-10-03 09:52:05','2025-10-03 09:52:05');
INSERT INTO `pokemon` VALUES (660,'diggersby','[\"normal\", \"ground\"]','2025-10-03 09:52:05','2025-10-03 09:52:05');
INSERT INTO `pokemon` VALUES (661,'fletchling','[\"normal\", \"flying\"]','2025-10-03 09:52:05','2025-10-03 09:52:05');
INSERT INTO `pokemon` VALUES (662,'fletchinder','[\"fire\", \"flying\"]','2025-10-03 09:52:05','2025-10-03 09:52:05');
INSERT INTO `pokemon` VALUES (663,'talonflame','[\"fire\", \"flying\"]','2025-10-03 09:52:05','2025-10-03 09:52:05');
INSERT INTO `pokemon` VALUES (664,'scatterbug','[\"bug\"]','2025-10-03 09:52:05','2025-10-03 09:52:05');
INSERT INTO `pokemon` VALUES (665,'spewpa','[\"bug\"]','2025-10-03 09:52:06','2025-10-03 09:52:06');
INSERT INTO `pokemon` VALUES (666,'vivillon','[\"bug\", \"flying\"]','2025-10-03 09:52:06','2025-10-03 09:52:06');
INSERT INTO `pokemon` VALUES (667,'litleo','[\"fire\", \"normal\"]','2025-10-03 09:52:06','2025-10-03 09:52:06');
INSERT INTO `pokemon` VALUES (668,'pyroar','[\"fire\", \"normal\"]','2025-10-03 09:52:06','2025-10-03 09:52:06');
INSERT INTO `pokemon` VALUES (669,'flabebe','[\"fairy\"]','2025-10-03 09:52:06','2025-10-03 09:52:06');
INSERT INTO `pokemon` VALUES (670,'floette','[\"fairy\"]','2025-10-03 09:52:06','2025-10-03 09:52:06');
INSERT INTO `pokemon` VALUES (671,'florges','[\"fairy\"]','2025-10-03 09:52:06','2025-10-03 09:52:06');
INSERT INTO `pokemon` VALUES (672,'skiddo','[\"grass\"]','2025-10-03 09:52:06','2025-10-03 09:52:06');
INSERT INTO `pokemon` VALUES (673,'gogoat','[\"grass\"]','2025-10-03 09:52:07','2025-10-03 09:52:07');
INSERT INTO `pokemon` VALUES (674,'pancham','[\"fighting\"]','2025-10-03 09:52:07','2025-10-03 09:52:07');
INSERT INTO `pokemon` VALUES (675,'pangoro','[\"fighting\", \"dark\"]','2025-10-03 09:52:07','2025-10-03 09:52:07');
INSERT INTO `pokemon` VALUES (676,'furfrou','[\"normal\"]','2025-10-03 09:52:07','2025-10-03 09:52:07');
INSERT INTO `pokemon` VALUES (677,'espurr','[\"psychic\"]','2025-10-03 09:52:07','2025-10-03 09:52:07');
INSERT INTO `pokemon` VALUES (678,'meowstic-male','[\"psychic\"]','2025-10-03 09:52:07','2025-10-03 09:52:07');
INSERT INTO `pokemon` VALUES (679,'honedge','[\"steel\", \"ghost\"]','2025-10-03 09:52:07','2025-10-03 09:52:07');
INSERT INTO `pokemon` VALUES (680,'doublade','[\"steel\", \"ghost\"]','2025-10-03 09:52:08','2025-10-03 09:52:08');
INSERT INTO `pokemon` VALUES (681,'aegislash-shield','[\"steel\", \"ghost\"]','2025-10-03 09:52:08','2025-10-03 09:52:08');
INSERT INTO `pokemon` VALUES (682,'spritzee','[\"fairy\"]','2025-10-03 09:52:08','2025-10-03 09:52:08');
INSERT INTO `pokemon` VALUES (683,'aromatisse','[\"fairy\"]','2025-10-03 09:52:08','2025-10-03 09:52:08');
INSERT INTO `pokemon` VALUES (684,'swirlix','[\"fairy\"]','2025-10-03 09:52:08','2025-10-03 09:52:08');
INSERT INTO `pokemon` VALUES (685,'slurpuff','[\"fairy\"]','2025-10-03 09:52:08','2025-10-03 09:52:08');
INSERT INTO `pokemon` VALUES (686,'inkay','[\"dark\", \"psychic\"]','2025-10-03 09:52:08','2025-10-03 09:52:08');
INSERT INTO `pokemon` VALUES (687,'malamar','[\"dark\", \"psychic\"]','2025-10-03 09:52:09','2025-10-03 09:52:09');
INSERT INTO `pokemon` VALUES (688,'binacle','[\"rock\", \"water\"]','2025-10-03 09:52:09','2025-10-03 09:52:09');
INSERT INTO `pokemon` VALUES (689,'barbaracle','[\"rock\", \"water\"]','2025-10-03 09:52:09','2025-10-03 09:52:09');
INSERT INTO `pokemon` VALUES (690,'skrelp','[\"poison\", \"water\"]','2025-10-03 09:52:10','2025-10-03 09:52:10');
INSERT INTO `pokemon` VALUES (691,'dragalge','[\"poison\", \"dragon\"]','2025-10-03 09:52:10','2025-10-03 09:52:10');
INSERT INTO `pokemon` VALUES (692,'clauncher','[\"water\"]','2025-10-03 09:52:10','2025-10-03 09:52:10');
INSERT INTO `pokemon` VALUES (693,'clawitzer','[\"water\"]','2025-10-03 09:52:10','2025-10-03 09:52:10');
INSERT INTO `pokemon` VALUES (694,'helioptile','[\"electric\", \"normal\"]','2025-10-03 09:52:10','2025-10-03 09:52:10');
INSERT INTO `pokemon` VALUES (695,'heliolisk','[\"electric\", \"normal\"]','2025-10-03 09:52:10','2025-10-03 09:52:10');
INSERT INTO `pokemon` VALUES (696,'tyrunt','[\"rock\", \"dragon\"]','2025-10-03 09:52:10','2025-10-03 09:52:10');
INSERT INTO `pokemon` VALUES (697,'tyrantrum','[\"rock\", \"dragon\"]','2025-10-03 09:52:11','2025-10-03 09:52:11');
INSERT INTO `pokemon` VALUES (698,'amaura','[\"rock\", \"ice\"]','2025-10-03 09:52:11','2025-10-03 09:52:11');
INSERT INTO `pokemon` VALUES (699,'aurorus','[\"rock\", \"ice\"]','2025-10-03 09:52:11','2025-10-03 09:52:11');
INSERT INTO `pokemon` VALUES (700,'sylveon','[\"fairy\"]','2025-10-03 09:52:11','2025-10-03 09:52:11');
INSERT INTO `pokemon` VALUES (701,'hawlucha','[\"fighting\", \"flying\"]','2025-10-03 09:52:12','2025-10-03 09:52:12');
INSERT INTO `pokemon` VALUES (702,'dedenne','[\"electric\", \"fairy\"]','2025-10-03 09:52:12','2025-10-03 09:52:12');
INSERT INTO `pokemon` VALUES (703,'carbink','[\"rock\", \"fairy\"]','2025-10-03 09:52:12','2025-10-03 09:52:12');
INSERT INTO `pokemon` VALUES (704,'goomy','[\"dragon\"]','2025-10-03 09:52:12','2025-10-03 09:52:12');
INSERT INTO `pokemon` VALUES (705,'sliggoo','[\"dragon\"]','2025-10-03 09:52:12','2025-10-03 09:52:12');
INSERT INTO `pokemon` VALUES (706,'goodra','[\"dragon\"]','2025-10-03 09:52:12','2025-10-03 09:52:12');
INSERT INTO `pokemon` VALUES (707,'klefki','[\"steel\", \"fairy\"]','2025-10-03 09:52:12','2025-10-03 09:52:12');
INSERT INTO `pokemon` VALUES (708,'phantump','[\"ghost\", \"grass\"]','2025-10-03 09:52:13','2025-10-03 09:52:13');
INSERT INTO `pokemon` VALUES (709,'trevenant','[\"ghost\", \"grass\"]','2025-10-03 09:52:13','2025-10-03 09:52:13');
INSERT INTO `pokemon` VALUES (710,'pumpkaboo-average','[\"ghost\", \"grass\"]','2025-10-03 09:52:13','2025-10-03 09:52:13');
INSERT INTO `pokemon` VALUES (711,'gourgeist-average','[\"ghost\", \"grass\"]','2025-10-03 09:52:14','2025-10-03 09:52:14');
INSERT INTO `pokemon` VALUES (712,'bergmite','[\"ice\"]','2025-10-03 09:52:14','2025-10-03 09:52:14');
INSERT INTO `pokemon` VALUES (713,'avalugg','[\"ice\"]','2025-10-03 09:52:14','2025-10-03 09:52:14');
INSERT INTO `pokemon` VALUES (714,'noibat','[\"flying\", \"dragon\"]','2025-10-03 09:52:14','2025-10-03 09:52:14');
INSERT INTO `pokemon` VALUES (715,'noivern','[\"flying\", \"dragon\"]','2025-10-03 09:52:14','2025-10-03 09:52:14');
INSERT INTO `pokemon` VALUES (716,'xerneas','[\"fairy\"]','2025-10-03 09:52:14','2025-10-03 09:52:14');
INSERT INTO `pokemon` VALUES (717,'yveltal','[\"dark\", \"flying\"]','2025-10-03 09:52:14','2025-10-03 09:52:14');
INSERT INTO `pokemon` VALUES (718,'zygarde-50','[\"dragon\", \"ground\"]','2025-10-03 09:52:15','2025-10-03 09:52:15');
INSERT INTO `pokemon` VALUES (719,'diancie','[\"rock\", \"fairy\"]','2025-10-03 09:52:15','2025-10-03 09:52:15');
INSERT INTO `pokemon` VALUES (720,'hoopa','[\"psychic\", \"ghost\"]','2025-10-03 09:52:15','2025-10-03 09:52:15');
INSERT INTO `pokemon` VALUES (721,'volcanion','[\"fire\", \"water\"]','2025-10-03 09:52:15','2025-10-03 09:52:15');
INSERT INTO `pokemon` VALUES (722,'rowlet','[\"grass\", \"flying\"]','2025-10-03 09:52:15','2025-10-03 09:52:15');
INSERT INTO `pokemon` VALUES (723,'dartrix','[\"grass\", \"flying\"]','2025-10-03 09:52:15','2025-10-03 09:52:15');
INSERT INTO `pokemon` VALUES (724,'decidueye','[\"grass\", \"ghost\"]','2025-10-03 09:52:15','2025-10-03 09:52:15');
INSERT INTO `pokemon` VALUES (725,'litten','[\"fire\"]','2025-10-03 09:52:16','2025-10-03 09:52:16');
INSERT INTO `pokemon` VALUES (726,'torracat','[\"fire\"]','2025-10-03 09:52:16','2025-10-03 09:52:16');
INSERT INTO `pokemon` VALUES (727,'incineroar','[\"fire\", \"dark\"]','2025-10-03 09:52:16','2025-10-03 09:52:16');
INSERT INTO `pokemon` VALUES (728,'popplio','[\"water\"]','2025-10-03 09:52:16','2025-10-03 09:52:16');
INSERT INTO `pokemon` VALUES (729,'brionne','[\"water\"]','2025-10-03 09:52:16','2025-10-03 09:52:16');
INSERT INTO `pokemon` VALUES (730,'primarina','[\"water\", \"fairy\"]','2025-10-03 09:52:16','2025-10-03 09:52:16');
INSERT INTO `pokemon` VALUES (731,'pikipek','[\"normal\", \"flying\"]','2025-10-03 09:52:16','2025-10-03 09:52:16');
INSERT INTO `pokemon` VALUES (732,'trumbeak','[\"normal\", \"flying\"]','2025-10-03 09:52:17','2025-10-03 09:52:17');
INSERT INTO `pokemon` VALUES (733,'toucannon','[\"normal\", \"flying\"]','2025-10-03 09:52:17','2025-10-03 09:52:17');
INSERT INTO `pokemon` VALUES (734,'yungoos','[\"normal\"]','2025-10-03 09:52:17','2025-10-03 09:52:17');
INSERT INTO `pokemon` VALUES (735,'gumshoos','[\"normal\"]','2025-10-03 09:52:17','2025-10-03 09:52:17');
INSERT INTO `pokemon` VALUES (736,'grubbin','[\"bug\"]','2025-10-03 09:52:17','2025-10-03 09:52:17');
INSERT INTO `pokemon` VALUES (737,'charjabug','[\"bug\", \"electric\"]','2025-10-03 09:52:17','2025-10-03 09:52:17');
INSERT INTO `pokemon` VALUES (738,'vikavolt','[\"bug\", \"electric\"]','2025-10-03 09:52:17','2025-10-03 09:52:17');
INSERT INTO `pokemon` VALUES (739,'crabrawler','[\"fighting\"]','2025-10-03 09:52:17','2025-10-03 09:52:17');
INSERT INTO `pokemon` VALUES (740,'crabominable','[\"fighting\", \"ice\"]','2025-10-03 09:52:18','2025-10-03 09:52:18');
INSERT INTO `pokemon` VALUES (741,'oricorio-baile','[\"fire\", \"flying\"]','2025-10-03 09:52:18','2025-10-03 09:52:18');
INSERT INTO `pokemon` VALUES (742,'cutiefly','[\"bug\", \"fairy\"]','2025-10-03 09:52:18','2025-10-03 09:52:18');
INSERT INTO `pokemon` VALUES (743,'ribombee','[\"bug\", \"fairy\"]','2025-10-03 09:52:18','2025-10-03 09:52:18');
INSERT INTO `pokemon` VALUES (744,'rockruff','[\"rock\"]','2025-10-03 09:52:18','2025-10-03 09:52:18');
INSERT INTO `pokemon` VALUES (745,'lycanroc-midday','[\"rock\"]','2025-10-03 09:52:18','2025-10-03 09:52:18');
INSERT INTO `pokemon` VALUES (746,'wishiwashi-solo','[\"water\"]','2025-10-03 09:52:18','2025-10-03 09:52:18');
INSERT INTO `pokemon` VALUES (747,'mareanie','[\"poison\", \"water\"]','2025-10-03 09:52:18','2025-10-03 09:52:18');
INSERT INTO `pokemon` VALUES (748,'toxapex','[\"poison\", \"water\"]','2025-10-03 09:52:19','2025-10-03 09:52:19');
INSERT INTO `pokemon` VALUES (749,'mudbray','[\"ground\"]','2025-10-03 09:52:19','2025-10-03 09:52:19');
INSERT INTO `pokemon` VALUES (750,'mudsdale','[\"ground\"]','2025-10-03 09:52:19','2025-10-03 09:52:19');
INSERT INTO `pokemon` VALUES (751,'dewpider','[\"water\", \"bug\"]','2025-10-03 09:52:20','2025-10-03 09:52:20');
INSERT INTO `pokemon` VALUES (752,'araquanid','[\"water\", \"bug\"]','2025-10-03 09:52:20','2025-10-03 09:52:20');
INSERT INTO `pokemon` VALUES (753,'fomantis','[\"grass\"]','2025-10-03 09:52:20','2025-10-03 09:52:20');
INSERT INTO `pokemon` VALUES (754,'lurantis','[\"grass\"]','2025-10-03 09:52:20','2025-10-03 09:52:20');
INSERT INTO `pokemon` VALUES (755,'morelull','[\"grass\", \"fairy\"]','2025-10-03 09:52:21','2025-10-03 09:52:21');
INSERT INTO `pokemon` VALUES (756,'shiinotic','[\"grass\", \"fairy\"]','2025-10-03 09:52:21','2025-10-03 09:52:21');
INSERT INTO `pokemon` VALUES (757,'salandit','[\"poison\", \"fire\"]','2025-10-03 09:52:21','2025-10-03 09:52:21');
INSERT INTO `pokemon` VALUES (758,'salazzle','[\"poison\", \"fire\"]','2025-10-03 09:52:21','2025-10-03 09:52:21');
INSERT INTO `pokemon` VALUES (759,'stufful','[\"normal\", \"fighting\"]','2025-10-03 09:52:21','2025-10-03 09:52:21');
INSERT INTO `pokemon` VALUES (760,'bewear','[\"normal\", \"fighting\"]','2025-10-03 09:52:21','2025-10-03 09:52:21');
INSERT INTO `pokemon` VALUES (761,'bounsweet','[\"grass\"]','2025-10-03 09:52:21','2025-10-03 09:52:21');
INSERT INTO `pokemon` VALUES (762,'steenee','[\"grass\"]','2025-10-03 09:52:22','2025-10-03 09:52:22');
INSERT INTO `pokemon` VALUES (763,'tsareena','[\"grass\"]','2025-10-03 09:52:22','2025-10-03 09:52:22');
INSERT INTO `pokemon` VALUES (764,'comfey','[\"fairy\"]','2025-10-03 09:52:22','2025-10-03 09:52:22');
INSERT INTO `pokemon` VALUES (765,'oranguru','[\"normal\", \"psychic\"]','2025-10-03 09:52:22','2025-10-03 09:52:22');
INSERT INTO `pokemon` VALUES (766,'passimian','[\"fighting\"]','2025-10-03 09:52:22','2025-10-03 09:52:22');
INSERT INTO `pokemon` VALUES (767,'wimpod','[\"bug\", \"water\"]','2025-10-03 09:52:22','2025-10-03 09:52:22');
INSERT INTO `pokemon` VALUES (768,'golisopod','[\"bug\", \"water\"]','2025-10-03 09:52:22','2025-10-03 09:52:22');
INSERT INTO `pokemon` VALUES (769,'sandygast','[\"ghost\", \"ground\"]','2025-10-03 09:52:22','2025-10-03 09:52:22');
INSERT INTO `pokemon` VALUES (770,'palossand','[\"ghost\", \"ground\"]','2025-10-03 09:52:23','2025-10-03 09:52:23');
INSERT INTO `pokemon` VALUES (771,'pyukumuku','[\"water\"]','2025-10-03 09:52:23','2025-10-03 09:52:23');
INSERT INTO `pokemon` VALUES (772,'type-null','[\"normal\"]','2025-10-03 09:52:23','2025-10-03 09:52:23');
INSERT INTO `pokemon` VALUES (773,'silvally','[\"normal\"]','2025-10-03 09:52:23','2025-10-03 09:52:23');
INSERT INTO `pokemon` VALUES (774,'minior-red-meteor','[\"rock\", \"flying\"]','2025-10-03 09:52:24','2025-10-03 09:52:24');
INSERT INTO `pokemon` VALUES (775,'komala','[\"normal\"]','2025-10-03 09:52:24','2025-10-03 09:52:24');
INSERT INTO `pokemon` VALUES (776,'turtonator','[\"fire\", \"dragon\"]','2025-10-03 09:52:24','2025-10-03 09:52:24');
INSERT INTO `pokemon` VALUES (777,'togedemaru','[\"electric\", \"steel\"]','2025-10-03 09:52:24','2025-10-03 09:52:24');
INSERT INTO `pokemon` VALUES (778,'mimikyu-disguised','[\"ghost\", \"fairy\"]','2025-10-03 09:52:24','2025-10-03 09:52:24');
INSERT INTO `pokemon` VALUES (779,'bruxish','[\"water\", \"psychic\"]','2025-10-03 09:52:24','2025-10-03 09:52:24');
INSERT INTO `pokemon` VALUES (780,'drampa','[\"normal\", \"dragon\"]','2025-10-03 09:52:25','2025-10-03 09:52:25');
INSERT INTO `pokemon` VALUES (781,'dhelmise','[\"ghost\", \"grass\"]','2025-10-03 09:52:25','2025-10-03 09:52:25');
INSERT INTO `pokemon` VALUES (782,'jangmo-o','[\"dragon\"]','2025-10-03 09:52:25','2025-10-03 09:52:25');
INSERT INTO `pokemon` VALUES (783,'hakamo-o','[\"dragon\", \"fighting\"]','2025-10-03 09:52:25','2025-10-03 09:52:25');
INSERT INTO `pokemon` VALUES (784,'kommo-o','[\"dragon\", \"fighting\"]','2025-10-03 09:52:25','2025-10-03 09:52:25');
INSERT INTO `pokemon` VALUES (785,'tapu-koko','[\"electric\", \"fairy\"]','2025-10-03 09:52:25','2025-10-03 09:52:25');
INSERT INTO `pokemon` VALUES (786,'tapu-lele','[\"psychic\", \"fairy\"]','2025-10-03 09:52:26','2025-10-03 09:52:26');
INSERT INTO `pokemon` VALUES (787,'tapu-bulu','[\"grass\", \"fairy\"]','2025-10-03 09:52:26','2025-10-03 09:52:26');
INSERT INTO `pokemon` VALUES (788,'tapu-fini','[\"water\", \"fairy\"]','2025-10-03 09:52:26','2025-10-03 09:52:26');
INSERT INTO `pokemon` VALUES (789,'cosmog','[\"psychic\"]','2025-10-03 09:52:26','2025-10-03 09:52:26');
INSERT INTO `pokemon` VALUES (790,'cosmoem','[\"psychic\"]','2025-10-03 09:52:26','2025-10-03 09:52:26');
INSERT INTO `pokemon` VALUES (791,'solgaleo','[\"psychic\", \"steel\"]','2025-10-03 09:52:26','2025-10-03 09:52:26');
INSERT INTO `pokemon` VALUES (792,'lunala','[\"psychic\", \"ghost\"]','2025-10-03 09:52:27','2025-10-03 09:52:27');
INSERT INTO `pokemon` VALUES (793,'nihilego','[\"rock\", \"poison\"]','2025-10-03 09:52:27','2025-10-03 09:52:27');
INSERT INTO `pokemon` VALUES (794,'buzzwole','[\"bug\", \"fighting\"]','2025-10-03 09:52:27','2025-10-03 09:52:27');
INSERT INTO `pokemon` VALUES (795,'pheromosa','[\"bug\", \"fighting\"]','2025-10-03 09:52:27','2025-10-03 09:52:27');
INSERT INTO `pokemon` VALUES (796,'xurkitree','[\"electric\"]','2025-10-03 09:52:27','2025-10-03 09:52:27');
INSERT INTO `pokemon` VALUES (797,'celesteela','[\"steel\", \"flying\"]','2025-10-03 09:52:27','2025-10-03 09:52:27');
INSERT INTO `pokemon` VALUES (798,'kartana','[\"grass\", \"steel\"]','2025-10-03 09:52:28','2025-10-03 09:52:28');
INSERT INTO `pokemon` VALUES (799,'guzzlord','[\"dark\", \"dragon\"]','2025-10-03 09:52:28','2025-10-03 09:52:28');
INSERT INTO `pokemon` VALUES (800,'necrozma','[\"psychic\"]','2025-10-03 09:52:28','2025-10-03 09:52:28');
INSERT INTO `pokemon` VALUES (801,'magearna','[\"steel\", \"fairy\"]','2025-10-03 09:52:28','2025-10-03 09:52:28');
INSERT INTO `pokemon` VALUES (802,'marshadow','[\"fighting\", \"ghost\"]','2025-10-03 09:52:28','2025-10-03 09:52:28');
INSERT INTO `pokemon` VALUES (803,'poipole','[\"poison\"]','2025-10-03 09:52:28','2025-10-03 09:52:28');
INSERT INTO `pokemon` VALUES (804,'naganadel','[\"poison\", \"dragon\"]','2025-10-03 09:52:28','2025-10-03 09:52:28');
INSERT INTO `pokemon` VALUES (805,'stakataka','[\"rock\", \"steel\"]','2025-10-03 09:52:29','2025-10-03 09:52:29');
INSERT INTO `pokemon` VALUES (806,'blacephalon','[\"fire\", \"ghost\"]','2025-10-03 09:52:29','2025-10-03 09:52:29');
INSERT INTO `pokemon` VALUES (807,'zeraora','[\"electric\"]','2025-10-03 09:52:29','2025-10-03 09:52:29');
INSERT INTO `pokemon` VALUES (808,'meltan','[\"steel\"]','2025-10-03 09:52:29','2025-10-03 09:52:29');
INSERT INTO `pokemon` VALUES (809,'melmetal','[\"steel\"]','2025-10-03 09:52:29','2025-10-03 09:52:29');
INSERT INTO `pokemon` VALUES (810,'grookey','[\"grass\"]','2025-10-03 09:52:29','2025-10-03 09:52:29');
INSERT INTO `pokemon` VALUES (811,'thwackey','[\"grass\"]','2025-10-03 09:52:30','2025-10-03 09:52:30');
INSERT INTO `pokemon` VALUES (812,'rillaboom','[\"grass\"]','2025-10-03 09:52:30','2025-10-03 09:52:30');
INSERT INTO `pokemon` VALUES (813,'scorbunny','[\"fire\"]','2025-10-03 09:52:30','2025-10-03 09:52:30');
INSERT INTO `pokemon` VALUES (814,'raboot','[\"fire\"]','2025-10-03 09:52:30','2025-10-03 09:52:30');
INSERT INTO `pokemon` VALUES (815,'cinderace','[\"fire\"]','2025-10-03 09:52:30','2025-10-03 09:52:30');
INSERT INTO `pokemon` VALUES (816,'sobble','[\"water\"]','2025-10-03 09:52:30','2025-10-03 09:52:30');
INSERT INTO `pokemon` VALUES (817,'drizzile','[\"water\"]','2025-10-03 09:52:30','2025-10-03 09:52:30');
INSERT INTO `pokemon` VALUES (818,'inteleon','[\"water\"]','2025-10-03 09:52:30','2025-10-03 09:52:30');
INSERT INTO `pokemon` VALUES (819,'skwovet','[\"normal\"]','2025-10-03 09:52:31','2025-10-03 09:52:31');
INSERT INTO `pokemon` VALUES (820,'greedent','[\"normal\"]','2025-10-03 09:52:31','2025-10-03 09:52:31');
INSERT INTO `pokemon` VALUES (821,'rookidee','[\"flying\"]','2025-10-03 09:52:31','2025-10-03 09:52:31');
INSERT INTO `pokemon` VALUES (822,'corvisquire','[\"flying\"]','2025-10-03 09:52:31','2025-10-03 09:52:31');
INSERT INTO `pokemon` VALUES (823,'corviknight','[\"flying\", \"steel\"]','2025-10-03 09:52:31','2025-10-03 09:52:31');
INSERT INTO `pokemon` VALUES (824,'blipbug','[\"bug\"]','2025-10-03 09:52:31','2025-10-03 09:52:31');
INSERT INTO `pokemon` VALUES (825,'dottler','[\"bug\", \"psychic\"]','2025-10-03 09:52:31','2025-10-03 09:52:31');
INSERT INTO `pokemon` VALUES (826,'orbeetle','[\"bug\", \"psychic\"]','2025-10-03 09:52:31','2025-10-03 09:52:31');
INSERT INTO `pokemon` VALUES (827,'nickit','[\"dark\"]','2025-10-03 09:52:32','2025-10-03 09:52:32');
INSERT INTO `pokemon` VALUES (828,'thievul','[\"dark\"]','2025-10-03 09:52:32','2025-10-03 09:52:32');
INSERT INTO `pokemon` VALUES (829,'gossifleur','[\"grass\"]','2025-10-03 09:52:32','2025-10-03 09:52:32');
INSERT INTO `pokemon` VALUES (830,'eldegoss','[\"grass\"]','2025-10-03 09:52:32','2025-10-03 09:52:32');
INSERT INTO `pokemon` VALUES (831,'wooloo','[\"normal\"]','2025-10-03 09:52:32','2025-10-03 09:52:32');
INSERT INTO `pokemon` VALUES (832,'dubwool','[\"normal\"]','2025-10-03 09:52:33','2025-10-03 09:52:33');
INSERT INTO `pokemon` VALUES (833,'chewtle','[\"water\"]','2025-10-03 09:52:33','2025-10-03 09:52:33');
INSERT INTO `pokemon` VALUES (834,'drednaw','[\"water\", \"rock\"]','2025-10-03 09:52:33','2025-10-03 09:52:33');
INSERT INTO `pokemon` VALUES (835,'yamper','[\"electric\"]','2025-10-03 09:52:33','2025-10-03 09:52:33');
INSERT INTO `pokemon` VALUES (836,'boltund','[\"electric\"]','2025-10-03 09:52:33','2025-10-03 09:52:33');
INSERT INTO `pokemon` VALUES (837,'rolycoly','[\"rock\"]','2025-10-03 09:52:34','2025-10-03 09:52:34');
INSERT INTO `pokemon` VALUES (838,'carkol','[\"rock\", \"fire\"]','2025-10-03 09:52:34','2025-10-03 09:52:34');
INSERT INTO `pokemon` VALUES (839,'coalossal','[\"rock\", \"fire\"]','2025-10-03 09:52:34','2025-10-03 09:52:34');
INSERT INTO `pokemon` VALUES (840,'applin','[\"grass\", \"dragon\"]','2025-10-03 09:52:34','2025-10-03 09:52:34');
INSERT INTO `pokemon` VALUES (841,'flapple','[\"grass\", \"dragon\"]','2025-10-03 09:52:34','2025-10-03 09:52:34');
INSERT INTO `pokemon` VALUES (842,'appletun','[\"grass\", \"dragon\"]','2025-10-03 09:52:34','2025-10-03 09:52:34');
INSERT INTO `pokemon` VALUES (843,'silicobra','[\"ground\"]','2025-10-03 09:52:34','2025-10-03 09:52:34');
INSERT INTO `pokemon` VALUES (844,'sandaconda','[\"ground\"]','2025-10-03 09:52:35','2025-10-03 09:52:35');
INSERT INTO `pokemon` VALUES (845,'cramorant','[\"flying\", \"water\"]','2025-10-03 09:52:35','2025-10-03 09:52:35');
INSERT INTO `pokemon` VALUES (846,'arrokuda','[\"water\"]','2025-10-03 09:52:35','2025-10-03 09:52:35');
INSERT INTO `pokemon` VALUES (847,'barraskewda','[\"water\"]','2025-10-03 09:52:35','2025-10-03 09:52:35');
INSERT INTO `pokemon` VALUES (848,'toxel','[\"electric\", \"poison\"]','2025-10-03 09:52:36','2025-10-03 09:52:36');
INSERT INTO `pokemon` VALUES (849,'toxtricity-amped','[\"electric\", \"poison\"]','2025-10-03 09:52:36','2025-10-03 09:52:36');
INSERT INTO `pokemon` VALUES (850,'sizzlipede','[\"fire\", \"bug\"]','2025-10-03 09:52:36','2025-10-03 09:52:36');
INSERT INTO `pokemon` VALUES (851,'centiskorch','[\"fire\", \"bug\"]','2025-10-03 09:52:36','2025-10-03 09:52:36');
INSERT INTO `pokemon` VALUES (852,'clobbopus','[\"fighting\"]','2025-10-03 09:52:36','2025-10-03 09:52:36');
INSERT INTO `pokemon` VALUES (853,'grapploct','[\"fighting\"]','2025-10-03 09:52:36','2025-10-03 09:52:36');
INSERT INTO `pokemon` VALUES (854,'sinistea','[\"ghost\"]','2025-10-03 09:52:36','2025-10-03 09:52:36');
INSERT INTO `pokemon` VALUES (855,'polteageist','[\"ghost\"]','2025-10-03 09:52:37','2025-10-03 09:52:37');
INSERT INTO `pokemon` VALUES (856,'hatenna','[\"psychic\"]','2025-10-03 09:52:37','2025-10-03 09:52:37');
INSERT INTO `pokemon` VALUES (857,'hattrem','[\"psychic\"]','2025-10-03 09:52:37','2025-10-03 09:52:37');
INSERT INTO `pokemon` VALUES (858,'hatterene','[\"psychic\", \"fairy\"]','2025-10-03 09:52:37','2025-10-03 09:52:37');
INSERT INTO `pokemon` VALUES (859,'impidimp','[\"dark\", \"fairy\"]','2025-10-03 09:52:37','2025-10-03 09:52:37');
INSERT INTO `pokemon` VALUES (860,'morgrem','[\"dark\", \"fairy\"]','2025-10-03 09:52:38','2025-10-03 09:52:38');
INSERT INTO `pokemon` VALUES (861,'grimmsnarl','[\"dark\", \"fairy\"]','2025-10-03 09:52:38','2025-10-03 09:52:38');
INSERT INTO `pokemon` VALUES (862,'obstagoon','[\"dark\", \"normal\"]','2025-10-03 09:52:38','2025-10-03 09:52:38');
INSERT INTO `pokemon` VALUES (863,'perrserker','[\"steel\"]','2025-10-03 09:52:38','2025-10-03 09:52:38');
INSERT INTO `pokemon` VALUES (864,'cursola','[\"ghost\"]','2025-10-03 09:52:39','2025-10-03 09:52:39');
INSERT INTO `pokemon` VALUES (865,'sirfetchd','[\"fighting\"]','2025-10-03 09:52:39','2025-10-03 09:52:39');
INSERT INTO `pokemon` VALUES (866,'mr-rime','[\"ice\", \"psychic\"]','2025-10-03 09:52:39','2025-10-03 09:52:39');
INSERT INTO `pokemon` VALUES (867,'runerigus','[\"ground\", \"ghost\"]','2025-10-03 09:52:40','2025-10-03 09:52:40');
INSERT INTO `pokemon` VALUES (868,'milcery','[\"fairy\"]','2025-10-03 09:52:40','2025-10-03 09:52:40');
INSERT INTO `pokemon` VALUES (869,'alcremie','[\"fairy\"]','2025-10-03 09:52:40','2025-10-03 09:52:40');
INSERT INTO `pokemon` VALUES (870,'falinks','[\"fighting\"]','2025-10-03 09:52:40','2025-10-03 09:52:40');
INSERT INTO `pokemon` VALUES (871,'pincurchin','[\"electric\"]','2025-10-03 09:52:40','2025-10-03 09:52:40');
INSERT INTO `pokemon` VALUES (872,'snom','[\"ice\", \"bug\"]','2025-10-03 09:52:41','2025-10-03 09:52:41');
INSERT INTO `pokemon` VALUES (873,'frosmoth','[\"ice\", \"bug\"]','2025-10-03 09:52:41','2025-10-03 09:52:41');
INSERT INTO `pokemon` VALUES (874,'stonjourner','[\"rock\"]','2025-10-03 09:52:41','2025-10-03 09:52:41');
INSERT INTO `pokemon` VALUES (875,'eiscue-ice','[\"ice\"]','2025-10-03 09:52:41','2025-10-03 09:52:41');
INSERT INTO `pokemon` VALUES (876,'indeedee-male','[\"psychic\", \"normal\"]','2025-10-03 09:52:42','2025-10-03 09:52:42');
INSERT INTO `pokemon` VALUES (877,'morpeko-full-belly','[\"electric\", \"dark\"]','2025-10-03 09:52:42','2025-10-03 09:52:42');
INSERT INTO `pokemon` VALUES (878,'cufant','[\"steel\"]','2025-10-03 09:52:42','2025-10-03 09:52:42');
INSERT INTO `pokemon` VALUES (879,'copperajah','[\"steel\"]','2025-10-03 09:52:42','2025-10-03 09:52:42');
INSERT INTO `pokemon` VALUES (880,'dracozolt','[\"electric\", \"dragon\"]','2025-10-03 09:52:42','2025-10-03 09:52:42');
INSERT INTO `pokemon` VALUES (881,'arctozolt','[\"electric\", \"ice\"]','2025-10-03 09:52:42','2025-10-03 09:52:42');
INSERT INTO `pokemon` VALUES (882,'dracovish','[\"water\", \"dragon\"]','2025-10-03 09:52:42','2025-10-03 09:52:42');
INSERT INTO `pokemon` VALUES (883,'arctovish','[\"water\", \"ice\"]','2025-10-03 09:52:43','2025-10-03 09:52:43');
INSERT INTO `pokemon` VALUES (884,'duraludon','[\"steel\", \"dragon\"]','2025-10-03 09:52:43','2025-10-03 09:52:43');
INSERT INTO `pokemon` VALUES (885,'dreepy','[\"dragon\", \"ghost\"]','2025-10-03 09:52:43','2025-10-03 09:52:43');
INSERT INTO `pokemon` VALUES (886,'drakloak','[\"dragon\", \"ghost\"]','2025-10-03 09:52:43','2025-10-03 09:52:43');
INSERT INTO `pokemon` VALUES (887,'dragapult','[\"dragon\", \"ghost\"]','2025-10-03 09:52:43','2025-10-03 09:52:43');
INSERT INTO `pokemon` VALUES (888,'zacian','[\"fairy\"]','2025-10-03 09:52:43','2025-10-03 09:52:43');
INSERT INTO `pokemon` VALUES (889,'zamazenta','[\"fighting\"]','2025-10-03 09:52:43','2025-10-03 09:52:43');
INSERT INTO `pokemon` VALUES (890,'eternatus','[\"poison\", \"dragon\"]','2025-10-03 09:52:43','2025-10-03 09:52:43');
INSERT INTO `pokemon` VALUES (891,'kubfu','[\"fighting\"]','2025-10-03 09:52:44','2025-10-03 09:52:44');
INSERT INTO `pokemon` VALUES (892,'urshifu-single-strike','[\"fighting\", \"dark\"]','2025-10-03 09:52:44','2025-10-03 09:52:44');
INSERT INTO `pokemon` VALUES (893,'zarude','[\"dark\", \"grass\"]','2025-10-03 09:52:44','2025-10-03 09:52:44');
INSERT INTO `pokemon` VALUES (894,'regieleki','[\"electric\"]','2025-10-03 09:52:44','2025-10-03 09:52:44');
INSERT INTO `pokemon` VALUES (895,'regidrago','[\"dragon\"]','2025-10-03 09:52:44','2025-10-03 09:52:44');
INSERT INTO `pokemon` VALUES (896,'glastrier','[\"ice\"]','2025-10-03 09:52:44','2025-10-03 09:52:44');
INSERT INTO `pokemon` VALUES (897,'spectrier','[\"ghost\"]','2025-10-03 09:52:44','2025-10-03 09:52:44');
INSERT INTO `pokemon` VALUES (898,'calyrex','[\"psychic\", \"grass\"]','2025-10-03 09:52:45','2025-10-03 09:52:45');
INSERT INTO `pokemon` VALUES (899,'wyrdeer','[\"normal\", \"psychic\"]','2025-10-03 09:52:46','2025-10-03 09:52:46');
INSERT INTO `pokemon` VALUES (900,'kleavor','[\"bug\", \"rock\"]','2025-10-03 09:52:46','2025-10-03 09:52:46');
INSERT INTO `pokemon` VALUES (901,'ursaluna','[\"ground\", \"normal\"]','2025-10-03 09:52:46','2025-10-03 09:52:46');
INSERT INTO `pokemon` VALUES (902,'basculegion-male','[\"water\", \"ghost\"]','2025-10-03 09:52:46','2025-10-03 09:52:46');
INSERT INTO `pokemon` VALUES (903,'sneasler','[\"fighting\", \"poison\"]','2025-10-03 09:52:46','2025-10-03 09:52:46');
INSERT INTO `pokemon` VALUES (904,'overqwil','[\"dark\", \"poison\"]','2025-10-03 09:52:48','2025-10-03 09:52:48');
INSERT INTO `pokemon` VALUES (905,'enamorus-incarnate','[\"fairy\", \"flying\"]','2025-10-03 09:52:48','2025-10-03 09:52:48');
INSERT INTO `pokemon` VALUES (906,'sprigatito','[\"grass\"]','2025-10-03 09:52:48','2025-10-03 09:52:48');
INSERT INTO `pokemon` VALUES (907,'floragato','[\"grass\"]','2025-10-03 09:52:48','2025-10-03 09:52:48');
INSERT INTO `pokemon` VALUES (908,'meowscarada','[\"grass\", \"dark\"]','2025-10-03 09:52:48','2025-10-03 09:52:48');
INSERT INTO `pokemon` VALUES (909,'fuecoco','[\"fire\"]','2025-10-03 09:52:48','2025-10-03 09:52:48');
INSERT INTO `pokemon` VALUES (910,'crocalor','[\"fire\"]','2025-10-03 09:52:48','2025-10-03 09:52:48');
INSERT INTO `pokemon` VALUES (911,'skeledirge','[\"fire\", \"ghost\"]','2025-10-03 09:52:49','2025-10-03 09:52:49');
INSERT INTO `pokemon` VALUES (912,'quaxly','[\"water\"]','2025-10-03 09:52:49','2025-10-03 09:52:49');
INSERT INTO `pokemon` VALUES (913,'quaxwell','[\"water\"]','2025-10-03 09:52:49','2025-10-03 09:52:49');
INSERT INTO `pokemon` VALUES (914,'quaquaval','[\"water\", \"fighting\"]','2025-10-03 09:52:49','2025-10-03 09:52:49');
INSERT INTO `pokemon` VALUES (915,'lechonk','[\"normal\"]','2025-10-03 09:52:49','2025-10-03 09:52:49');
INSERT INTO `pokemon` VALUES (916,'oinkologne-male','[\"normal\"]','2025-10-03 09:52:49','2025-10-03 09:52:49');
INSERT INTO `pokemon` VALUES (917,'tarountula','[\"bug\"]','2025-10-03 09:52:50','2025-10-03 09:52:50');
INSERT INTO `pokemon` VALUES (918,'spidops','[\"bug\"]','2025-10-03 09:52:50','2025-10-03 09:52:50');
INSERT INTO `pokemon` VALUES (919,'nymble','[\"bug\"]','2025-10-03 09:52:50','2025-10-03 09:52:50');
INSERT INTO `pokemon` VALUES (920,'lokix','[\"bug\", \"dark\"]','2025-10-03 09:52:50','2025-10-03 09:52:50');
INSERT INTO `pokemon` VALUES (921,'pawmi','[\"electric\"]','2025-10-03 09:52:50','2025-10-03 09:52:50');
INSERT INTO `pokemon` VALUES (922,'pawmo','[\"electric\", \"fighting\"]','2025-10-03 09:52:50','2025-10-03 09:52:50');
INSERT INTO `pokemon` VALUES (923,'pawmot','[\"electric\", \"fighting\"]','2025-10-03 09:52:51','2025-10-03 09:52:51');
INSERT INTO `pokemon` VALUES (924,'tandemaus','[\"normal\"]','2025-10-03 09:52:51','2025-10-03 09:52:51');
INSERT INTO `pokemon` VALUES (925,'maushold-family-of-four','[\"normal\"]','2025-10-03 09:52:52','2025-10-03 09:52:52');
INSERT INTO `pokemon` VALUES (926,'fidough','[\"fairy\"]','2025-10-03 09:52:52','2025-10-03 09:52:52');
INSERT INTO `pokemon` VALUES (927,'dachsbun','[\"fairy\"]','2025-10-03 09:52:52','2025-10-03 09:52:52');
INSERT INTO `pokemon` VALUES (928,'smoliv','[\"grass\", \"normal\"]','2025-10-03 09:52:52','2025-10-03 09:52:52');
INSERT INTO `pokemon` VALUES (929,'dolliv','[\"grass\", \"normal\"]','2025-10-03 09:52:52','2025-10-03 09:52:52');
INSERT INTO `pokemon` VALUES (930,'arboliva','[\"grass\", \"normal\"]','2025-10-03 09:52:52','2025-10-03 09:52:52');
INSERT INTO `pokemon` VALUES (931,'squawkabilly-green-plumage','[\"normal\", \"flying\"]','2025-10-03 09:52:53','2025-10-03 09:52:53');
INSERT INTO `pokemon` VALUES (932,'nacli','[\"rock\"]','2025-10-03 09:52:53','2025-10-03 09:52:53');
INSERT INTO `pokemon` VALUES (933,'naclstack','[\"rock\"]','2025-10-03 09:52:53','2025-10-03 09:52:53');
INSERT INTO `pokemon` VALUES (934,'garganacl','[\"rock\"]','2025-10-03 09:52:53','2025-10-03 09:52:53');
INSERT INTO `pokemon` VALUES (935,'charcadet','[\"fire\"]','2025-10-03 09:52:53','2025-10-03 09:52:53');
INSERT INTO `pokemon` VALUES (936,'armarouge','[\"fire\", \"psychic\"]','2025-10-03 09:52:53','2025-10-03 09:52:53');
INSERT INTO `pokemon` VALUES (937,'ceruledge','[\"fire\", \"ghost\"]','2025-10-03 09:52:53','2025-10-03 09:52:53');
INSERT INTO `pokemon` VALUES (938,'tadbulb','[\"electric\"]','2025-10-03 09:52:53','2025-10-03 09:52:53');
INSERT INTO `pokemon` VALUES (939,'bellibolt','[\"electric\"]','2025-10-03 09:52:54','2025-10-03 09:52:54');
INSERT INTO `pokemon` VALUES (940,'wattrel','[\"electric\", \"flying\"]','2025-10-03 09:52:54','2025-10-03 09:52:54');
INSERT INTO `pokemon` VALUES (941,'kilowattrel','[\"electric\", \"flying\"]','2025-10-03 09:52:54','2025-10-03 09:52:54');
INSERT INTO `pokemon` VALUES (942,'maschiff','[\"dark\"]','2025-10-03 09:52:54','2025-10-03 09:52:54');
INSERT INTO `pokemon` VALUES (943,'mabosstiff','[\"dark\"]','2025-10-03 09:52:55','2025-10-03 09:52:55');
INSERT INTO `pokemon` VALUES (944,'shroodle','[\"poison\", \"normal\"]','2025-10-03 09:52:55','2025-10-03 09:52:55');
INSERT INTO `pokemon` VALUES (945,'grafaiai','[\"poison\", \"normal\"]','2025-10-03 09:52:55','2025-10-03 09:52:55');
INSERT INTO `pokemon` VALUES (946,'bramblin','[\"grass\", \"ghost\"]','2025-10-03 09:52:55','2025-10-03 09:52:55');
INSERT INTO `pokemon` VALUES (947,'brambleghast','[\"grass\", \"ghost\"]','2025-10-03 09:52:55','2025-10-03 09:52:55');
INSERT INTO `pokemon` VALUES (948,'toedscool','[\"ground\", \"grass\"]','2025-10-03 09:52:55','2025-10-03 09:52:55');
INSERT INTO `pokemon` VALUES (949,'toedscruel','[\"ground\", \"grass\"]','2025-10-03 09:52:56','2025-10-03 09:52:56');
INSERT INTO `pokemon` VALUES (950,'klawf','[\"rock\"]','2025-10-03 09:52:56','2025-10-03 09:52:56');
INSERT INTO `pokemon` VALUES (951,'capsakid','[\"grass\"]','2025-10-03 09:52:56','2025-10-03 09:52:56');
INSERT INTO `pokemon` VALUES (952,'scovillain','[\"grass\", \"fire\"]','2025-10-03 09:52:56','2025-10-03 09:52:56');
INSERT INTO `pokemon` VALUES (953,'rellor','[\"bug\"]','2025-10-03 09:52:56','2025-10-03 09:52:56');
INSERT INTO `pokemon` VALUES (954,'rabsca','[\"bug\", \"psychic\"]','2025-10-03 09:52:56','2025-10-03 09:52:56');
INSERT INTO `pokemon` VALUES (955,'flittle','[\"psychic\"]','2025-10-03 09:52:57','2025-10-03 09:52:57');
INSERT INTO `pokemon` VALUES (956,'espathra','[\"psychic\"]','2025-10-03 09:52:57','2025-10-03 09:52:57');
INSERT INTO `pokemon` VALUES (957,'tinkatink','[\"fairy\", \"steel\"]','2025-10-03 09:52:57','2025-10-03 09:52:57');
INSERT INTO `pokemon` VALUES (958,'tinkatuff','[\"fairy\", \"steel\"]','2025-10-03 09:52:57','2025-10-03 09:52:57');
INSERT INTO `pokemon` VALUES (959,'tinkaton','[\"fairy\", \"steel\"]','2025-10-03 09:52:57','2025-10-03 09:52:57');
INSERT INTO `pokemon` VALUES (960,'wiglett','[\"water\"]','2025-10-03 09:52:57','2025-10-03 09:52:57');
INSERT INTO `pokemon` VALUES (961,'wugtrio','[\"water\"]','2025-10-03 09:52:57','2025-10-03 09:52:57');
INSERT INTO `pokemon` VALUES (962,'bombirdier','[\"flying\", \"dark\"]','2025-10-03 09:52:58','2025-10-03 09:52:58');
INSERT INTO `pokemon` VALUES (963,'finizen','[\"water\"]','2025-10-03 09:52:59','2025-10-03 09:52:59');
INSERT INTO `pokemon` VALUES (964,'palafin-zero','[\"water\"]','2025-10-03 09:52:59','2025-10-03 09:52:59');
INSERT INTO `pokemon` VALUES (965,'varoom','[\"steel\", \"poison\"]','2025-10-03 09:52:59','2025-10-03 09:52:59');
INSERT INTO `pokemon` VALUES (966,'revavroom','[\"steel\", \"poison\"]','2025-10-03 09:52:59','2025-10-03 09:52:59');
INSERT INTO `pokemon` VALUES (967,'cyclizar','[\"dragon\", \"normal\"]','2025-10-03 09:52:59','2025-10-03 09:52:59');
INSERT INTO `pokemon` VALUES (968,'orthworm','[\"steel\"]','2025-10-03 09:53:00','2025-10-03 09:53:00');
INSERT INTO `pokemon` VALUES (969,'glimmet','[\"rock\", \"poison\"]','2025-10-03 09:53:00','2025-10-03 09:53:00');
INSERT INTO `pokemon` VALUES (970,'glimmora','[\"rock\", \"poison\"]','2025-10-03 09:53:00','2025-10-03 09:53:00');
INSERT INTO `pokemon` VALUES (971,'greavard','[\"ghost\"]','2025-10-03 09:53:01','2025-10-03 09:53:01');
INSERT INTO `pokemon` VALUES (972,'houndstone','[\"ghost\"]','2025-10-03 09:53:01','2025-10-03 09:53:01');
INSERT INTO `pokemon` VALUES (973,'flamigo','[\"flying\", \"fighting\"]','2025-10-03 09:53:01','2025-10-03 09:53:01');
INSERT INTO `pokemon` VALUES (974,'cetoddle','[\"ice\"]','2025-10-03 09:53:01','2025-10-03 09:53:01');
INSERT INTO `pokemon` VALUES (975,'cetitan','[\"ice\"]','2025-10-03 09:53:01','2025-10-03 09:53:01');
INSERT INTO `pokemon` VALUES (976,'veluza','[\"water\", \"psychic\"]','2025-10-03 09:53:01','2025-10-03 09:53:01');
INSERT INTO `pokemon` VALUES (977,'dondozo','[\"water\"]','2025-10-03 09:53:01','2025-10-03 09:53:01');
INSERT INTO `pokemon` VALUES (978,'tatsugiri-curly','[\"dragon\", \"water\"]','2025-10-03 09:53:01','2025-10-03 09:53:01');
INSERT INTO `pokemon` VALUES (979,'annihilape','[\"fighting\", \"ghost\"]','2025-10-03 09:53:02','2025-10-03 09:53:02');
INSERT INTO `pokemon` VALUES (980,'clodsire','[\"poison\", \"ground\"]','2025-10-03 09:53:02','2025-10-03 09:53:02');
INSERT INTO `pokemon` VALUES (981,'farigiraf','[\"normal\", \"psychic\"]','2025-10-03 09:53:02','2025-10-03 09:53:02');
INSERT INTO `pokemon` VALUES (982,'dudunsparce-two-segment','[\"normal\"]','2025-10-03 09:53:02','2025-10-03 09:53:02');
INSERT INTO `pokemon` VALUES (983,'kingambit','[\"dark\", \"steel\"]','2025-10-03 09:53:02','2025-10-03 09:53:02');
INSERT INTO `pokemon` VALUES (984,'great-tusk','[\"ground\", \"fighting\"]','2025-10-03 09:53:03','2025-10-03 09:53:03');
INSERT INTO `pokemon` VALUES (985,'scream-tail','[\"fairy\", \"psychic\"]','2025-10-03 09:53:03','2025-10-03 09:53:03');
INSERT INTO `pokemon` VALUES (986,'brute-bonnet','[\"grass\", \"dark\"]','2025-10-03 09:53:03','2025-10-03 09:53:03');
INSERT INTO `pokemon` VALUES (987,'flutter-mane','[\"ghost\", \"fairy\"]','2025-10-03 09:53:03','2025-10-03 09:53:03');
INSERT INTO `pokemon` VALUES (988,'slither-wing','[\"bug\", \"fighting\"]','2025-10-03 09:53:03','2025-10-03 09:53:03');
INSERT INTO `pokemon` VALUES (989,'sandy-shocks','[\"electric\", \"ground\"]','2025-10-03 09:53:03','2025-10-03 09:53:03');
INSERT INTO `pokemon` VALUES (990,'iron-treads','[\"ground\", \"steel\"]','2025-10-03 09:53:03','2025-10-03 09:53:03');
INSERT INTO `pokemon` VALUES (991,'iron-bundle','[\"ice\", \"water\"]','2025-10-03 09:53:03','2025-10-03 09:53:03');
INSERT INTO `pokemon` VALUES (992,'iron-hands','[\"fighting\", \"electric\"]','2025-10-03 09:53:04','2025-10-03 09:53:04');
INSERT INTO `pokemon` VALUES (993,'iron-jugulis','[\"dark\", \"flying\"]','2025-10-03 09:53:04','2025-10-03 09:53:04');
INSERT INTO `pokemon` VALUES (994,'iron-moth','[\"fire\", \"poison\"]','2025-10-03 09:53:04','2025-10-03 09:53:04');
INSERT INTO `pokemon` VALUES (995,'iron-thorns','[\"rock\", \"electric\"]','2025-10-03 09:53:04','2025-10-03 09:53:04');
INSERT INTO `pokemon` VALUES (996,'frigibax','[\"dragon\", \"ice\"]','2025-10-03 09:53:04','2025-10-03 09:53:04');
INSERT INTO `pokemon` VALUES (997,'arctibax','[\"dragon\", \"ice\"]','2025-10-03 09:53:05','2025-10-03 09:53:05');
INSERT INTO `pokemon` VALUES (998,'baxcalibur','[\"dragon\", \"ice\"]','2025-10-03 09:53:05','2025-10-03 09:53:05');
INSERT INTO `pokemon` VALUES (999,'gimmighoul','[\"ghost\"]','2025-10-03 09:53:05','2025-10-03 09:53:05');
INSERT INTO `pokemon` VALUES (1000,'gholdengo','[\"steel\", \"ghost\"]','2025-10-03 09:53:05','2025-10-03 09:53:05');
INSERT INTO `pokemon` VALUES (1001,'wo-chien','[\"dark\", \"grass\"]','2025-10-03 09:53:05','2025-10-03 09:53:05');
INSERT INTO `pokemon` VALUES (1002,'chien-pao','[\"dark\", \"ice\"]','2025-10-03 09:53:05','2025-10-03 09:53:05');
INSERT INTO `pokemon` VALUES (1003,'ting-lu','[\"dark\", \"ground\"]','2025-10-03 09:53:05','2025-10-03 09:53:05');
INSERT INTO `pokemon` VALUES (1004,'chi-yu','[\"dark\", \"fire\"]','2025-10-03 09:53:05','2025-10-03 09:53:05');
INSERT INTO `pokemon` VALUES (1005,'roaring-moon','[\"dragon\", \"dark\"]','2025-10-03 09:53:06','2025-10-03 09:53:06');
INSERT INTO `pokemon` VALUES (1006,'iron-valiant','[\"fairy\", \"fighting\"]','2025-10-03 09:53:06','2025-10-03 09:53:06');
INSERT INTO `pokemon` VALUES (1007,'koraidon','[\"fighting\", \"dragon\"]','2025-10-03 09:53:06','2025-10-03 09:53:06');
INSERT INTO `pokemon` VALUES (1008,'miraidon','[\"electric\", \"dragon\"]','2025-10-03 09:53:06','2025-10-03 09:53:06');
INSERT INTO `pokemon` VALUES (1009,'walking-wake','[\"water\", \"dragon\"]','2025-10-03 09:53:06','2025-10-03 09:53:06');
INSERT INTO `pokemon` VALUES (1010,'iron-leaves','[\"grass\", \"psychic\"]','2025-10-03 09:53:07','2025-10-03 09:53:07');
INSERT INTO `pokemon` VALUES (1011,'dipplin','[\"grass\", \"dragon\"]','2025-10-03 09:53:07','2025-10-03 09:53:07');
INSERT INTO `pokemon` VALUES (1012,'poltchageist','[\"grass\", \"ghost\"]','2025-10-03 09:53:08','2025-10-03 09:53:08');
INSERT INTO `pokemon` VALUES (1013,'sinistcha','[\"grass\", \"ghost\"]','2025-10-03 09:53:08','2025-10-03 09:53:08');
INSERT INTO `pokemon` VALUES (1014,'okidogi','[\"poison\", \"fighting\"]','2025-10-03 09:53:08','2025-10-03 09:53:08');
INSERT INTO `pokemon` VALUES (1015,'munkidori','[\"poison\", \"psychic\"]','2025-10-03 09:53:08','2025-10-03 09:53:08');
INSERT INTO `pokemon` VALUES (1016,'fezandipiti','[\"poison\", \"fairy\"]','2025-10-03 09:53:08','2025-10-03 09:53:08');
INSERT INTO `pokemon` VALUES (1017,'ogerpon','[\"grass\"]','2025-10-03 09:53:08','2025-10-03 09:53:08');
INSERT INTO `pokemon` VALUES (1018,'archaludon','[\"steel\", \"dragon\"]','2025-10-03 09:53:08','2025-10-03 09:53:08');
INSERT INTO `pokemon` VALUES (1019,'hydrapple','[\"grass\", \"dragon\"]','2025-10-03 09:53:09','2025-10-03 09:53:09');
INSERT INTO `pokemon` VALUES (1020,'gouging-fire','[\"fire\", \"dragon\"]','2025-10-03 09:53:09','2025-10-03 09:53:09');
INSERT INTO `pokemon` VALUES (1021,'raging-bolt','[\"electric\", \"dragon\"]','2025-10-03 09:53:09','2025-10-03 09:53:09');
INSERT INTO `pokemon` VALUES (1022,'iron-boulder','[\"rock\", \"psychic\"]','2025-10-03 09:53:09','2025-10-03 09:53:09');
INSERT INTO `pokemon` VALUES (1023,'iron-crown','[\"steel\", \"psychic\"]','2025-10-03 09:53:09','2025-10-03 09:53:09');
INSERT INTO `pokemon` VALUES (1024,'terapagos','[\"normal\"]','2025-10-03 09:53:10','2025-10-03 09:53:10');
INSERT INTO `pokemon` VALUES (1025,'pecharunt','[\"poison\", \"ghost\"]','2025-10-03 09:53:10','2025-10-03 09:53:10');
INSERT INTO `pokemon` VALUES (1026,'deoxys-attack','[\"psychic\"]','2025-10-03 09:53:10','2025-10-03 09:53:10');
INSERT INTO `pokemon` VALUES (1027,'deoxys-defense','[\"psychic\"]','2025-10-03 09:53:11','2025-10-03 09:53:11');
INSERT INTO `pokemon` VALUES (1028,'deoxys-speed','[\"psychic\"]','2025-10-03 09:53:11','2025-10-03 09:53:11');
INSERT INTO `pokemon` VALUES (1029,'wormadam-sandy','[\"bug\", \"ground\"]','2025-10-03 09:53:11','2025-10-03 09:53:11');
INSERT INTO `pokemon` VALUES (1030,'wormadam-trash','[\"bug\", \"steel\"]','2025-10-03 09:53:12','2025-10-03 09:53:12');
INSERT INTO `pokemon` VALUES (1031,'shaymin-sky','[\"grass\", \"flying\"]','2025-10-03 09:53:12','2025-10-03 09:53:12');
INSERT INTO `pokemon` VALUES (1032,'giratina-origin','[\"ghost\", \"dragon\"]','2025-10-03 09:53:12','2025-10-03 09:53:12');
INSERT INTO `pokemon` VALUES (1033,'rotom-heat','[\"electric\", \"fire\"]','2025-10-03 09:53:12','2025-10-03 09:53:12');
INSERT INTO `pokemon` VALUES (1034,'rotom-wash','[\"electric\", \"water\"]','2025-10-03 09:53:12','2025-10-03 09:53:12');
INSERT INTO `pokemon` VALUES (1035,'rotom-frost','[\"electric\", \"ice\"]','2025-10-03 09:53:13','2025-10-03 09:53:13');
INSERT INTO `pokemon` VALUES (1036,'rotom-fan','[\"electric\", \"flying\"]','2025-10-03 09:53:13','2025-10-03 09:53:13');
INSERT INTO `pokemon` VALUES (1037,'rotom-mow','[\"electric\", \"grass\"]','2025-10-03 09:53:13','2025-10-03 09:53:13');
INSERT INTO `pokemon` VALUES (1038,'castform-sunny','[\"fire\"]','2025-10-03 09:53:14','2025-10-03 09:53:14');
INSERT INTO `pokemon` VALUES (1039,'castform-rainy','[\"water\"]','2025-10-03 09:53:15','2025-10-03 09:53:15');
INSERT INTO `pokemon` VALUES (1040,'castform-snowy','[\"ice\"]','2025-10-03 09:53:15','2025-10-03 09:53:15');
INSERT INTO `pokemon` VALUES (1041,'basculin-blue-striped','[\"water\"]','2025-10-03 09:53:15','2025-10-03 09:53:15');
INSERT INTO `pokemon` VALUES (1042,'darmanitan-zen','[\"fire\", \"psychic\"]','2025-10-03 09:53:15','2025-10-03 09:53:15');
INSERT INTO `pokemon` VALUES (1043,'meloetta-pirouette','[\"normal\", \"fighting\"]','2025-10-03 09:53:15','2025-10-03 09:53:15');
INSERT INTO `pokemon` VALUES (1044,'tornadus-therian','[\"flying\"]','2025-10-03 09:53:16','2025-10-03 09:53:16');
INSERT INTO `pokemon` VALUES (1045,'thundurus-therian','[\"electric\", \"flying\"]','2025-10-03 09:53:16','2025-10-03 09:53:16');
INSERT INTO `pokemon` VALUES (1046,'landorus-therian','[\"ground\", \"flying\"]','2025-10-03 09:53:16','2025-10-03 09:53:16');
INSERT INTO `pokemon` VALUES (1047,'kyurem-black','[\"dragon\", \"ice\"]','2025-10-03 09:53:16','2025-10-03 09:53:16');
INSERT INTO `pokemon` VALUES (1048,'kyurem-white','[\"dragon\", \"ice\"]','2025-10-03 09:53:16','2025-10-03 09:53:16');
INSERT INTO `pokemon` VALUES (1049,'keldeo-resolute','[\"water\", \"fighting\"]','2025-10-03 09:53:16','2025-10-03 09:53:16');
INSERT INTO `pokemon` VALUES (1050,'meowstic-female','[\"psychic\"]','2025-10-03 09:53:17','2025-10-03 09:53:17');
INSERT INTO `pokemon` VALUES (1051,'aegislash-blade','[\"steel\", \"ghost\"]','2025-10-03 09:53:17','2025-10-03 09:53:17');
INSERT INTO `pokemon` VALUES (1052,'pumpkaboo-small','[\"ghost\", \"grass\"]','2025-10-03 09:53:17','2025-10-03 09:53:17');
INSERT INTO `pokemon` VALUES (1053,'pumpkaboo-large','[\"ghost\", \"grass\"]','2025-10-03 09:53:17','2025-10-03 09:53:17');
INSERT INTO `pokemon` VALUES (1054,'pumpkaboo-super','[\"ghost\", \"grass\"]','2025-10-03 09:53:17','2025-10-03 09:53:17');
INSERT INTO `pokemon` VALUES (1055,'gourgeist-small','[\"ghost\", \"grass\"]','2025-10-03 09:53:18','2025-10-03 09:53:18');
INSERT INTO `pokemon` VALUES (1056,'gourgeist-large','[\"ghost\", \"grass\"]','2025-10-03 09:53:18','2025-10-03 09:53:18');
INSERT INTO `pokemon` VALUES (1057,'gourgeist-super','[\"ghost\", \"grass\"]','2025-10-03 09:53:19','2025-10-03 09:53:19');
INSERT INTO `pokemon` VALUES (1058,'venusaur-mega','[\"grass\", \"poison\"]','2025-10-03 09:53:19','2025-10-03 09:53:19');
INSERT INTO `pokemon` VALUES (1059,'charizard-mega-x','[\"fire\", \"dragon\"]','2025-10-03 09:53:19','2025-10-03 09:53:19');
INSERT INTO `pokemon` VALUES (1060,'charizard-mega-y','[\"fire\", \"flying\"]','2025-10-03 09:53:19','2025-10-03 09:53:19');
INSERT INTO `pokemon` VALUES (1061,'blastoise-mega','[\"water\"]','2025-10-03 09:53:19','2025-10-03 09:53:19');
INSERT INTO `pokemon` VALUES (1062,'alakazam-mega','[\"psychic\"]','2025-10-03 09:53:19','2025-10-03 09:53:19');
INSERT INTO `pokemon` VALUES (1063,'gengar-mega','[\"ghost\", \"poison\"]','2025-10-03 09:53:19','2025-10-03 09:53:19');
INSERT INTO `pokemon` VALUES (1064,'kangaskhan-mega','[\"normal\"]','2025-10-03 09:53:19','2025-10-03 09:53:19');
INSERT INTO `pokemon` VALUES (1065,'pinsir-mega','[\"bug\", \"flying\"]','2025-10-03 09:53:20','2025-10-03 09:53:20');
INSERT INTO `pokemon` VALUES (1066,'gyarados-mega','[\"water\", \"dark\"]','2025-10-03 09:53:20','2025-10-03 09:53:20');
INSERT INTO `pokemon` VALUES (1067,'aerodactyl-mega','[\"rock\", \"flying\"]','2025-10-03 09:53:20','2025-10-03 09:53:20');
INSERT INTO `pokemon` VALUES (1068,'mewtwo-mega-x','[\"psychic\", \"fighting\"]','2025-10-03 09:53:21','2025-10-03 09:53:21');
INSERT INTO `pokemon` VALUES (1069,'mewtwo-mega-y','[\"psychic\"]','2025-10-03 09:53:21','2025-10-03 09:53:21');
INSERT INTO `pokemon` VALUES (1070,'ampharos-mega','[\"electric\", \"dragon\"]','2025-10-03 09:53:21','2025-10-03 09:53:21');
INSERT INTO `pokemon` VALUES (1071,'scizor-mega','[\"bug\", \"steel\"]','2025-10-03 09:53:21','2025-10-03 09:53:21');
INSERT INTO `pokemon` VALUES (1072,'heracross-mega','[\"bug\", \"fighting\"]','2025-10-03 09:53:22','2025-10-03 09:53:22');
INSERT INTO `pokemon` VALUES (1073,'houndoom-mega','[\"dark\", \"fire\"]','2025-10-03 09:53:22','2025-10-03 09:53:22');
INSERT INTO `pokemon` VALUES (1074,'tyranitar-mega','[\"rock\", \"dark\"]','2025-10-03 09:53:22','2025-10-03 09:53:22');
INSERT INTO `pokemon` VALUES (1075,'blaziken-mega','[\"fire\", \"fighting\"]','2025-10-03 09:53:22','2025-10-03 09:53:22');
INSERT INTO `pokemon` VALUES (1076,'gardevoir-mega','[\"psychic\", \"fairy\"]','2025-10-03 09:53:22','2025-10-03 09:53:22');
INSERT INTO `pokemon` VALUES (1077,'mawile-mega','[\"steel\", \"fairy\"]','2025-10-03 09:53:22','2025-10-03 09:53:22');
INSERT INTO `pokemon` VALUES (1078,'aggron-mega','[\"steel\"]','2025-10-03 09:53:23','2025-10-03 09:53:23');
INSERT INTO `pokemon` VALUES (1079,'medicham-mega','[\"fighting\", \"psychic\"]','2025-10-03 09:53:23','2025-10-03 09:53:23');
INSERT INTO `pokemon` VALUES (1080,'manectric-mega','[\"electric\"]','2025-10-03 09:53:23','2025-10-03 09:53:23');
INSERT INTO `pokemon` VALUES (1081,'banette-mega','[\"ghost\"]','2025-10-03 09:53:24','2025-10-03 09:53:24');
INSERT INTO `pokemon` VALUES (1082,'absol-mega','[\"dark\"]','2025-10-03 09:53:24','2025-10-03 09:53:24');
INSERT INTO `pokemon` VALUES (1083,'garchomp-mega','[\"dragon\", \"ground\"]','2025-10-03 09:53:24','2025-10-03 09:53:24');
INSERT INTO `pokemon` VALUES (1084,'lucario-mega','[\"fighting\", \"steel\"]','2025-10-03 09:53:24','2025-10-03 09:53:24');
INSERT INTO `pokemon` VALUES (1085,'abomasnow-mega','[\"grass\", \"ice\"]','2025-10-03 09:53:24','2025-10-03 09:53:24');
INSERT INTO `pokemon` VALUES (1086,'floette-eternal','[\"fairy\"]','2025-10-03 09:53:24','2025-10-03 09:53:24');
INSERT INTO `pokemon` VALUES (1087,'latias-mega','[\"dragon\", \"psychic\"]','2025-10-03 09:53:24','2025-10-03 09:53:24');
INSERT INTO `pokemon` VALUES (1088,'latios-mega','[\"dragon\", \"psychic\"]','2025-10-03 09:53:25','2025-10-03 09:53:25');
INSERT INTO `pokemon` VALUES (1089,'swampert-mega','[\"water\", \"ground\"]','2025-10-03 09:53:25','2025-10-03 09:53:25');
INSERT INTO `pokemon` VALUES (1090,'sceptile-mega','[\"grass\", \"dragon\"]','2025-10-03 09:53:25','2025-10-03 09:53:25');
INSERT INTO `pokemon` VALUES (1091,'sableye-mega','[\"dark\", \"ghost\"]','2025-10-03 09:53:25','2025-10-03 09:53:25');
INSERT INTO `pokemon` VALUES (1092,'altaria-mega','[\"dragon\", \"fairy\"]','2025-10-03 09:53:26','2025-10-03 09:53:26');
INSERT INTO `pokemon` VALUES (1093,'gallade-mega','[\"psychic\", \"fighting\"]','2025-10-03 09:53:27','2025-10-03 09:53:27');
INSERT INTO `pokemon` VALUES (1094,'audino-mega','[\"normal\", \"fairy\"]','2025-10-03 09:53:27','2025-10-03 09:53:27');
INSERT INTO `pokemon` VALUES (1095,'sharpedo-mega','[\"water\", \"dark\"]','2025-10-03 09:53:28','2025-10-03 09:53:28');
INSERT INTO `pokemon` VALUES (1096,'slowbro-mega','[\"water\", \"psychic\"]','2025-10-03 09:53:28','2025-10-03 09:53:28');
INSERT INTO `pokemon` VALUES (1097,'steelix-mega','[\"steel\", \"ground\"]','2025-10-03 09:53:28','2025-10-03 09:53:28');
INSERT INTO `pokemon` VALUES (1098,'pidgeot-mega','[\"normal\", \"flying\"]','2025-10-03 09:53:28','2025-10-03 09:53:28');
INSERT INTO `pokemon` VALUES (1099,'glalie-mega','[\"ice\"]','2025-10-03 09:53:28','2025-10-03 09:53:28');
INSERT INTO `pokemon` VALUES (1100,'diancie-mega','[\"rock\", \"fairy\"]','2025-10-03 09:53:28','2025-10-03 09:53:28');
INSERT INTO `pokemon` VALUES (1101,'metagross-mega','[\"steel\", \"psychic\"]','2025-10-03 09:53:28','2025-10-03 09:53:28');
INSERT INTO `pokemon` VALUES (1102,'kyogre-primal','[\"water\"]','2025-10-03 09:53:29','2025-10-03 09:53:29');
INSERT INTO `pokemon` VALUES (1103,'groudon-primal','[\"ground\", \"fire\"]','2025-10-03 09:53:29','2025-10-03 09:53:29');
INSERT INTO `pokemon` VALUES (1104,'rayquaza-mega','[\"dragon\", \"flying\"]','2025-10-03 09:53:29','2025-10-03 09:53:29');
INSERT INTO `pokemon` VALUES (1105,'pikachu-rock-star','[\"electric\"]','2025-10-03 09:53:29','2025-10-03 09:53:29');
INSERT INTO `pokemon` VALUES (1106,'pikachu-belle','[\"electric\"]','2025-10-03 09:53:29','2025-10-03 09:53:29');
INSERT INTO `pokemon` VALUES (1107,'pikachu-pop-star','[\"electric\"]','2025-10-03 09:53:29','2025-10-03 09:53:29');
INSERT INTO `pokemon` VALUES (1108,'pikachu-phd','[\"electric\"]','2025-10-03 09:53:29','2025-10-03 09:53:29');
INSERT INTO `pokemon` VALUES (1109,'pikachu-libre','[\"electric\"]','2025-10-03 09:53:29','2025-10-03 09:53:29');
INSERT INTO `pokemon` VALUES (1110,'pikachu-cosplay','[\"electric\"]','2025-10-03 09:53:29','2025-10-03 09:53:29');
INSERT INTO `pokemon` VALUES (1111,'hoopa-unbound','[\"psychic\", \"dark\"]','2025-10-03 09:53:30','2025-10-03 09:53:30');
INSERT INTO `pokemon` VALUES (1112,'camerupt-mega','[\"fire\", \"ground\"]','2025-10-03 09:53:30','2025-10-03 09:53:30');
INSERT INTO `pokemon` VALUES (1113,'lopunny-mega','[\"normal\", \"fighting\"]','2025-10-03 09:53:30','2025-10-03 09:53:30');
INSERT INTO `pokemon` VALUES (1114,'salamence-mega','[\"dragon\", \"flying\"]','2025-10-03 09:53:30','2025-10-03 09:53:30');
INSERT INTO `pokemon` VALUES (1115,'beedrill-mega','[\"bug\", \"poison\"]','2025-10-03 09:53:30','2025-10-03 09:53:30');
INSERT INTO `pokemon` VALUES (1116,'rattata-alola','[\"dark\", \"normal\"]','2025-10-03 09:53:30','2025-10-03 09:53:30');
INSERT INTO `pokemon` VALUES (1117,'raticate-alola','[\"dark\", \"normal\"]','2025-10-03 09:53:30','2025-10-03 09:53:30');
INSERT INTO `pokemon` VALUES (1118,'raticate-totem-alola','[\"dark\", \"normal\"]','2025-10-03 09:53:30','2025-10-03 09:53:30');
INSERT INTO `pokemon` VALUES (1119,'pikachu-original-cap','[\"electric\"]','2025-10-03 09:53:30','2025-10-03 09:53:30');
INSERT INTO `pokemon` VALUES (1120,'pikachu-hoenn-cap','[\"electric\"]','2025-10-03 09:53:31','2025-10-03 09:53:31');
INSERT INTO `pokemon` VALUES (1121,'pikachu-sinnoh-cap','[\"electric\"]','2025-10-03 09:53:31','2025-10-03 09:53:31');
INSERT INTO `pokemon` VALUES (1122,'pikachu-unova-cap','[\"electric\"]','2025-10-03 09:53:31','2025-10-03 09:53:31');
INSERT INTO `pokemon` VALUES (1123,'pikachu-kalos-cap','[\"electric\"]','2025-10-03 09:53:31','2025-10-03 09:53:31');
INSERT INTO `pokemon` VALUES (1124,'pikachu-alola-cap','[\"electric\"]','2025-10-03 09:53:31','2025-10-03 09:53:31');
INSERT INTO `pokemon` VALUES (1125,'raichu-alola','[\"electric\", \"psychic\"]','2025-10-03 09:53:31','2025-10-03 09:53:31');
INSERT INTO `pokemon` VALUES (1126,'sandshrew-alola','[\"ice\", \"steel\"]','2025-10-03 09:53:31','2025-10-03 09:53:31');
INSERT INTO `pokemon` VALUES (1127,'sandslash-alola','[\"ice\", \"steel\"]','2025-10-03 09:53:31','2025-10-03 09:53:31');
INSERT INTO `pokemon` VALUES (1128,'vulpix-alola','[\"ice\"]','2025-10-03 09:53:31','2025-10-03 09:53:31');
INSERT INTO `pokemon` VALUES (1129,'ninetales-alola','[\"ice\", \"fairy\"]','2025-10-03 09:53:32','2025-10-03 09:53:32');
INSERT INTO `pokemon` VALUES (1130,'diglett-alola','[\"ground\", \"steel\"]','2025-10-03 09:53:32','2025-10-03 09:53:32');
INSERT INTO `pokemon` VALUES (1131,'dugtrio-alola','[\"ground\", \"steel\"]','2025-10-03 09:53:32','2025-10-03 09:53:32');
INSERT INTO `pokemon` VALUES (1132,'meowth-alola','[\"dark\"]','2025-10-03 09:53:32','2025-10-03 09:53:32');
INSERT INTO `pokemon` VALUES (1133,'persian-alola','[\"dark\"]','2025-10-03 09:53:32','2025-10-03 09:53:32');
INSERT INTO `pokemon` VALUES (1134,'geodude-alola','[\"rock\", \"electric\"]','2025-10-03 09:53:32','2025-10-03 09:53:32');
INSERT INTO `pokemon` VALUES (1135,'graveler-alola','[\"rock\", \"electric\"]','2025-10-03 09:53:32','2025-10-03 09:53:32');
INSERT INTO `pokemon` VALUES (1136,'golem-alola','[\"rock\", \"electric\"]','2025-10-03 09:53:32','2025-10-03 09:53:32');
INSERT INTO `pokemon` VALUES (1137,'grimer-alola','[\"poison\", \"dark\"]','2025-10-03 09:53:33','2025-10-03 09:53:33');
INSERT INTO `pokemon` VALUES (1138,'muk-alola','[\"poison\", \"dark\"]','2025-10-03 09:53:33','2025-10-03 09:53:33');
INSERT INTO `pokemon` VALUES (1139,'exeggutor-alola','[\"grass\", \"dragon\"]','2025-10-03 09:53:33','2025-10-03 09:53:33');
INSERT INTO `pokemon` VALUES (1140,'marowak-alola','[\"fire\", \"ghost\"]','2025-10-03 09:53:33','2025-10-03 09:53:33');
INSERT INTO `pokemon` VALUES (1141,'greninja-battle-bond','[\"water\", \"dark\"]','2025-10-03 09:53:33','2025-10-03 09:53:33');
INSERT INTO `pokemon` VALUES (1142,'greninja-ash','[\"water\", \"dark\"]','2025-10-03 09:53:33','2025-10-03 09:53:33');
INSERT INTO `pokemon` VALUES (1143,'zygarde-10-power-construct','[\"dragon\", \"ground\"]','2025-10-03 09:53:33','2025-10-03 09:53:33');
INSERT INTO `pokemon` VALUES (1144,'zygarde-50-power-construct','[\"dragon\", \"ground\"]','2025-10-03 09:53:33','2025-10-03 09:53:33');
INSERT INTO `pokemon` VALUES (1145,'zygarde-complete','[\"dragon\", \"ground\"]','2025-10-03 09:53:34','2025-10-03 09:53:34');
INSERT INTO `pokemon` VALUES (1146,'gumshoos-totem','[\"normal\"]','2025-10-03 09:53:34','2025-10-03 09:53:34');
INSERT INTO `pokemon` VALUES (1147,'vikavolt-totem','[\"bug\", \"electric\"]','2025-10-03 09:53:34','2025-10-03 09:53:34');
INSERT INTO `pokemon` VALUES (1148,'oricorio-pom-pom','[\"electric\", \"flying\"]','2025-10-03 09:53:34','2025-10-03 09:53:34');
INSERT INTO `pokemon` VALUES (1149,'oricorio-pau','[\"psychic\", \"flying\"]','2025-10-03 09:53:35','2025-10-03 09:53:35');
INSERT INTO `pokemon` VALUES (1150,'oricorio-sensu','[\"ghost\", \"flying\"]','2025-10-03 09:53:35','2025-10-03 09:53:35');
INSERT INTO `pokemon` VALUES (1151,'lycanroc-midnight','[\"rock\"]','2025-10-03 09:53:35','2025-10-03 09:53:35');
INSERT INTO `pokemon` VALUES (1152,'wishiwashi-school','[\"water\"]','2025-10-03 09:53:35','2025-10-03 09:53:35');
INSERT INTO `pokemon` VALUES (1153,'lurantis-totem','[\"grass\"]','2025-10-03 09:53:35','2025-10-03 09:53:35');
INSERT INTO `pokemon` VALUES (1154,'salazzle-totem','[\"poison\", \"fire\"]','2025-10-03 09:53:36','2025-10-03 09:53:36');
INSERT INTO `pokemon` VALUES (1155,'minior-orange-meteor','[\"rock\", \"flying\"]','2025-10-03 09:53:36','2025-10-03 09:53:36');
INSERT INTO `pokemon` VALUES (1156,'minior-yellow-meteor','[\"rock\", \"flying\"]','2025-10-03 09:53:36','2025-10-03 09:53:36');
INSERT INTO `pokemon` VALUES (1157,'minior-green-meteor','[\"rock\", \"flying\"]','2025-10-03 09:53:36','2025-10-03 09:53:36');
INSERT INTO `pokemon` VALUES (1158,'minior-blue-meteor','[\"rock\", \"flying\"]','2025-10-03 09:53:36','2025-10-03 09:53:36');
INSERT INTO `pokemon` VALUES (1159,'minior-indigo-meteor','[\"rock\", \"flying\"]','2025-10-03 09:53:36','2025-10-03 09:53:36');
INSERT INTO `pokemon` VALUES (1160,'minior-violet-meteor','[\"rock\", \"flying\"]','2025-10-03 09:53:36','2025-10-03 09:53:36');
INSERT INTO `pokemon` VALUES (1161,'minior-red','[\"rock\", \"flying\"]','2025-10-03 09:53:36','2025-10-03 09:53:36');
INSERT INTO `pokemon` VALUES (1162,'minior-orange','[\"rock\", \"flying\"]','2025-10-03 09:53:37','2025-10-03 09:53:37');
INSERT INTO `pokemon` VALUES (1163,'minior-yellow','[\"rock\", \"flying\"]','2025-10-03 09:53:37','2025-10-03 09:53:37');
INSERT INTO `pokemon` VALUES (1164,'minior-green','[\"rock\", \"flying\"]','2025-10-03 09:53:37','2025-10-03 09:53:37');
INSERT INTO `pokemon` VALUES (1165,'minior-blue','[\"rock\", \"flying\"]','2025-10-03 09:53:37','2025-10-03 09:53:37');
INSERT INTO `pokemon` VALUES (1166,'minior-indigo','[\"rock\", \"flying\"]','2025-10-03 09:53:37','2025-10-03 09:53:37');
INSERT INTO `pokemon` VALUES (1167,'minior-violet','[\"rock\", \"flying\"]','2025-10-03 09:53:38','2025-10-03 09:53:38');
INSERT INTO `pokemon` VALUES (1168,'mimikyu-busted','[\"ghost\", \"fairy\"]','2025-10-03 09:53:38','2025-10-03 09:53:38');
INSERT INTO `pokemon` VALUES (1169,'mimikyu-totem-disguised','[\"ghost\", \"fairy\"]','2025-10-03 09:53:38','2025-10-03 09:53:38');
INSERT INTO `pokemon` VALUES (1170,'mimikyu-totem-busted','[\"ghost\", \"fairy\"]','2025-10-03 09:53:38','2025-10-03 09:53:38');
INSERT INTO `pokemon` VALUES (1171,'kommo-o-totem','[\"dragon\", \"fighting\"]','2025-10-03 09:53:39','2025-10-03 09:53:39');
INSERT INTO `pokemon` VALUES (1172,'magearna-original','[\"steel\", \"fairy\"]','2025-10-03 09:53:39','2025-10-03 09:53:39');
INSERT INTO `pokemon` VALUES (1173,'pikachu-partner-cap','[\"electric\"]','2025-10-03 09:53:39','2025-10-03 09:53:39');
INSERT INTO `pokemon` VALUES (1174,'marowak-totem','[\"fire\", \"ghost\"]','2025-10-03 09:53:39','2025-10-03 09:53:39');
INSERT INTO `pokemon` VALUES (1175,'ribombee-totem','[\"bug\", \"fairy\"]','2025-10-03 09:53:39','2025-10-03 09:53:39');
INSERT INTO `pokemon` VALUES (1176,'rockruff-own-tempo','[\"rock\"]','2025-10-03 09:53:39','2025-10-03 09:53:39');
INSERT INTO `pokemon` VALUES (1177,'lycanroc-dusk','[\"rock\"]','2025-10-03 09:53:39','2025-10-03 09:53:39');
INSERT INTO `pokemon` VALUES (1178,'araquanid-totem','[\"water\", \"bug\"]','2025-10-03 09:53:39','2025-10-03 09:53:39');
INSERT INTO `pokemon` VALUES (1179,'togedemaru-totem','[\"electric\", \"steel\"]','2025-10-03 09:53:40','2025-10-03 09:53:40');
INSERT INTO `pokemon` VALUES (1180,'necrozma-dusk','[\"psychic\", \"steel\"]','2025-10-03 09:53:40','2025-10-03 09:53:40');
INSERT INTO `pokemon` VALUES (1181,'necrozma-dawn','[\"psychic\", \"ghost\"]','2025-10-03 09:53:40','2025-10-03 09:53:40');
INSERT INTO `pokemon` VALUES (1182,'necrozma-ultra','[\"psychic\", \"dragon\"]','2025-10-03 09:53:40','2025-10-03 09:53:40');
INSERT INTO `pokemon` VALUES (1183,'pikachu-starter','[\"electric\"]','2025-10-03 09:53:40','2025-10-03 09:53:40');
INSERT INTO `pokemon` VALUES (1184,'eevee-starter','[\"normal\"]','2025-10-03 09:53:41','2025-10-03 09:53:41');
INSERT INTO `pokemon` VALUES (1185,'pikachu-world-cap','[\"electric\"]','2025-10-03 09:53:41','2025-10-03 09:53:41');
INSERT INTO `pokemon` VALUES (1186,'meowth-galar','[\"steel\"]','2025-10-03 09:53:41','2025-10-03 09:53:41');
INSERT INTO `pokemon` VALUES (1187,'ponyta-galar','[\"psychic\"]','2025-10-03 09:53:41','2025-10-03 09:53:41');
INSERT INTO `pokemon` VALUES (1188,'rapidash-galar','[\"psychic\", \"fairy\"]','2025-10-03 09:53:41','2025-10-03 09:53:41');
INSERT INTO `pokemon` VALUES (1189,'slowpoke-galar','[\"psychic\"]','2025-10-03 09:53:41','2025-10-03 09:53:41');
INSERT INTO `pokemon` VALUES (1190,'slowbro-galar','[\"poison\", \"psychic\"]','2025-10-03 09:53:42','2025-10-03 09:53:42');
INSERT INTO `pokemon` VALUES (1191,'farfetchd-galar','[\"fighting\"]','2025-10-03 09:53:42','2025-10-03 09:53:42');
INSERT INTO `pokemon` VALUES (1192,'weezing-galar','[\"poison\", \"fairy\"]','2025-10-03 09:53:42','2025-10-03 09:53:42');
INSERT INTO `pokemon` VALUES (1193,'mr-mime-galar','[\"ice\", \"psychic\"]','2025-10-03 09:53:42','2025-10-03 09:53:42');
INSERT INTO `pokemon` VALUES (1194,'articuno-galar','[\"psychic\", \"flying\"]','2025-10-03 09:53:42','2025-10-03 09:53:42');
INSERT INTO `pokemon` VALUES (1195,'zapdos-galar','[\"fighting\", \"flying\"]','2025-10-03 09:53:43','2025-10-03 09:53:43');
INSERT INTO `pokemon` VALUES (1196,'moltres-galar','[\"dark\", \"flying\"]','2025-10-03 09:53:43','2025-10-03 09:53:43');
INSERT INTO `pokemon` VALUES (1197,'slowking-galar','[\"poison\", \"psychic\"]','2025-10-03 09:53:43','2025-10-03 09:53:43');
INSERT INTO `pokemon` VALUES (1198,'corsola-galar','[\"ghost\"]','2025-10-03 09:53:43','2025-10-03 09:53:43');
INSERT INTO `pokemon` VALUES (1199,'zigzagoon-galar','[\"dark\", \"normal\"]','2025-10-03 09:53:44','2025-10-03 09:53:44');
INSERT INTO `pokemon` VALUES (1200,'linoone-galar','[\"dark\", \"normal\"]','2025-10-03 09:53:44','2025-10-03 09:53:44');
INSERT INTO `pokemon` VALUES (1201,'darumaka-galar','[\"ice\"]','2025-10-03 09:53:44','2025-10-03 09:53:44');
INSERT INTO `pokemon` VALUES (1202,'darmanitan-galar-standard','[\"ice\"]','2025-10-03 09:53:44','2025-10-03 09:53:44');
INSERT INTO `pokemon` VALUES (1203,'darmanitan-galar-zen','[\"ice\", \"fire\"]','2025-10-03 09:53:44','2025-10-03 09:53:44');
INSERT INTO `pokemon` VALUES (1204,'yamask-galar','[\"ground\", \"ghost\"]','2025-10-03 09:53:44','2025-10-03 09:53:44');
INSERT INTO `pokemon` VALUES (1205,'stunfisk-galar','[\"ground\", \"steel\"]','2025-10-03 09:53:44','2025-10-03 09:53:44');
INSERT INTO `pokemon` VALUES (1206,'zygarde-10','[\"dragon\", \"ground\"]','2025-10-03 09:53:45','2025-10-03 09:53:45');
INSERT INTO `pokemon` VALUES (1207,'cramorant-gulping','[\"flying\", \"water\"]','2025-10-03 09:53:45','2025-10-03 09:53:45');
INSERT INTO `pokemon` VALUES (1208,'cramorant-gorging','[\"flying\", \"water\"]','2025-10-03 09:53:45','2025-10-03 09:53:45');
INSERT INTO `pokemon` VALUES (1209,'toxtricity-low-key','[\"electric\", \"poison\"]','2025-10-03 09:53:45','2025-10-03 09:53:45');
INSERT INTO `pokemon` VALUES (1210,'eiscue-noice','[\"ice\"]','2025-10-03 09:53:45','2025-10-03 09:53:45');
INSERT INTO `pokemon` VALUES (1211,'indeedee-female','[\"psychic\", \"normal\"]','2025-10-03 09:53:45','2025-10-03 09:53:45');
INSERT INTO `pokemon` VALUES (1212,'morpeko-hangry','[\"electric\", \"dark\"]','2025-10-03 09:53:45','2025-10-03 09:53:45');
INSERT INTO `pokemon` VALUES (1213,'zacian-crowned','[\"fairy\", \"steel\"]','2025-10-03 09:53:46','2025-10-03 09:53:46');
INSERT INTO `pokemon` VALUES (1214,'zamazenta-crowned','[\"fighting\", \"steel\"]','2025-10-03 09:53:46','2025-10-03 09:53:46');
INSERT INTO `pokemon` VALUES (1215,'eternatus-eternamax','[\"poison\", \"dragon\"]','2025-10-03 09:53:46','2025-10-03 09:53:46');
INSERT INTO `pokemon` VALUES (1216,'urshifu-rapid-strike','[\"fighting\", \"water\"]','2025-10-03 09:53:46','2025-10-03 09:53:46');
INSERT INTO `pokemon` VALUES (1217,'zarude-dada','[\"dark\", \"grass\"]','2025-10-03 09:53:47','2025-10-03 09:53:47');
INSERT INTO `pokemon` VALUES (1218,'calyrex-ice','[\"psychic\", \"ice\"]','2025-10-03 09:53:47','2025-10-03 09:53:47');
INSERT INTO `pokemon` VALUES (1219,'calyrex-shadow','[\"psychic\", \"ghost\"]','2025-10-03 09:53:47','2025-10-03 09:53:47');
INSERT INTO `pokemon` VALUES (1220,'venusaur-gmax','[\"grass\", \"poison\"]','2025-10-03 09:53:47','2025-10-03 09:53:47');
INSERT INTO `pokemon` VALUES (1221,'charizard-gmax','[\"fire\", \"flying\"]','2025-10-03 09:53:47','2025-10-03 09:53:47');
INSERT INTO `pokemon` VALUES (1222,'blastoise-gmax','[\"water\"]','2025-10-03 09:53:47','2025-10-03 09:53:47');
INSERT INTO `pokemon` VALUES (1223,'butterfree-gmax','[\"bug\", \"flying\"]','2025-10-03 09:53:48','2025-10-03 09:53:48');
INSERT INTO `pokemon` VALUES (1224,'pikachu-gmax','[\"electric\"]','2025-10-03 09:53:48','2025-10-03 09:53:48');
INSERT INTO `pokemon` VALUES (1225,'meowth-gmax','[\"normal\"]','2025-10-03 09:53:48','2025-10-03 09:53:48');
INSERT INTO `pokemon` VALUES (1226,'machamp-gmax','[\"fighting\"]','2025-10-03 09:53:48','2025-10-03 09:53:48');
INSERT INTO `pokemon` VALUES (1227,'gengar-gmax','[\"ghost\", \"poison\"]','2025-10-03 09:53:48','2025-10-03 09:53:48');
INSERT INTO `pokemon` VALUES (1228,'kingler-gmax','[\"water\"]','2025-10-03 09:53:48','2025-10-03 09:53:48');
INSERT INTO `pokemon` VALUES (1229,'lapras-gmax','[\"water\", \"ice\"]','2025-10-03 09:53:49','2025-10-03 09:53:49');
INSERT INTO `pokemon` VALUES (1230,'eevee-gmax','[\"normal\"]','2025-10-03 09:53:49','2025-10-03 09:53:49');
INSERT INTO `pokemon` VALUES (1231,'snorlax-gmax','[\"normal\"]','2025-10-03 09:53:49','2025-10-03 09:53:49');
INSERT INTO `pokemon` VALUES (1232,'garbodor-gmax','[\"poison\"]','2025-10-03 09:53:49','2025-10-03 09:53:49');
INSERT INTO `pokemon` VALUES (1233,'melmetal-gmax','[\"steel\"]','2025-10-03 09:53:49','2025-10-03 09:53:49');
INSERT INTO `pokemon` VALUES (1234,'rillaboom-gmax','[\"grass\"]','2025-10-03 09:53:49','2025-10-03 09:53:49');
INSERT INTO `pokemon` VALUES (1235,'cinderace-gmax','[\"fire\"]','2025-10-03 09:53:49','2025-10-03 09:53:49');
INSERT INTO `pokemon` VALUES (1236,'inteleon-gmax','[\"water\"]','2025-10-03 09:53:50','2025-10-03 09:53:50');
INSERT INTO `pokemon` VALUES (1237,'corviknight-gmax','[\"flying\", \"steel\"]','2025-10-03 09:53:50','2025-10-03 09:53:50');
INSERT INTO `pokemon` VALUES (1238,'orbeetle-gmax','[\"bug\", \"psychic\"]','2025-10-03 09:53:50','2025-10-03 09:53:50');
INSERT INTO `pokemon` VALUES (1239,'drednaw-gmax','[\"water\", \"rock\"]','2025-10-03 09:53:50','2025-10-03 09:53:50');
INSERT INTO `pokemon` VALUES (1240,'coalossal-gmax','[\"rock\", \"fire\"]','2025-10-03 09:53:50','2025-10-03 09:53:50');
INSERT INTO `pokemon` VALUES (1241,'flapple-gmax','[\"grass\", \"dragon\"]','2025-10-03 09:53:50','2025-10-03 09:53:50');
INSERT INTO `pokemon` VALUES (1242,'appletun-gmax','[\"grass\", \"dragon\"]','2025-10-03 09:53:50','2025-10-03 09:53:50');
INSERT INTO `pokemon` VALUES (1243,'sandaconda-gmax','[\"ground\"]','2025-10-03 09:53:51','2025-10-03 09:53:51');
INSERT INTO `pokemon` VALUES (1244,'toxtricity-amped-gmax','[\"electric\", \"poison\"]','2025-10-03 09:53:51','2025-10-03 09:53:51');
INSERT INTO `pokemon` VALUES (1245,'centiskorch-gmax','[\"fire\", \"bug\"]','2025-10-03 09:53:51','2025-10-03 09:53:51');
INSERT INTO `pokemon` VALUES (1246,'hatterene-gmax','[\"psychic\", \"fairy\"]','2025-10-03 09:53:51','2025-10-03 09:53:51');
INSERT INTO `pokemon` VALUES (1247,'grimmsnarl-gmax','[\"dark\", \"fairy\"]','2025-10-03 09:53:51','2025-10-03 09:53:51');
INSERT INTO `pokemon` VALUES (1248,'alcremie-gmax','[\"fairy\"]','2025-10-03 09:53:51','2025-10-03 09:53:51');
INSERT INTO `pokemon` VALUES (1249,'copperajah-gmax','[\"steel\"]','2025-10-03 09:53:51','2025-10-03 09:53:51');
INSERT INTO `pokemon` VALUES (1250,'duraludon-gmax','[\"steel\", \"dragon\"]','2025-10-03 09:53:51','2025-10-03 09:53:51');
INSERT INTO `pokemon` VALUES (1251,'urshifu-single-strike-gmax','[\"fighting\", \"dark\"]','2025-10-03 09:53:52','2025-10-03 09:53:52');
INSERT INTO `pokemon` VALUES (1252,'urshifu-rapid-strike-gmax','[\"fighting\", \"water\"]','2025-10-03 09:53:52','2025-10-03 09:53:52');
INSERT INTO `pokemon` VALUES (1253,'toxtricity-low-key-gmax','[\"electric\", \"poison\"]','2025-10-03 09:53:52','2025-10-03 09:53:52');
INSERT INTO `pokemon` VALUES (1254,'growlithe-hisui','[\"fire\", \"rock\"]','2025-10-03 09:53:52','2025-10-03 09:53:52');
INSERT INTO `pokemon` VALUES (1255,'arcanine-hisui','[\"fire\", \"rock\"]','2025-10-03 09:53:52','2025-10-03 09:53:52');
INSERT INTO `pokemon` VALUES (1256,'voltorb-hisui','[\"electric\", \"grass\"]','2025-10-03 09:53:53','2025-10-03 09:53:53');
INSERT INTO `pokemon` VALUES (1257,'electrode-hisui','[\"electric\", \"grass\"]','2025-10-03 09:53:53','2025-10-03 09:53:53');
INSERT INTO `pokemon` VALUES (1258,'typhlosion-hisui','[\"fire\", \"ghost\"]','2025-10-03 09:53:53','2025-10-03 09:53:53');
INSERT INTO `pokemon` VALUES (1259,'qwilfish-hisui','[\"dark\", \"poison\"]','2025-10-03 09:53:53','2025-10-03 09:53:53');
INSERT INTO `pokemon` VALUES (1260,'sneasel-hisui','[\"fighting\", \"poison\"]','2025-10-03 09:53:53','2025-10-03 09:53:53');
INSERT INTO `pokemon` VALUES (1261,'samurott-hisui','[\"water\", \"dark\"]','2025-10-03 09:53:54','2025-10-03 09:53:54');
INSERT INTO `pokemon` VALUES (1262,'lilligant-hisui','[\"grass\", \"fighting\"]','2025-10-03 09:53:54','2025-10-03 09:53:54');
INSERT INTO `pokemon` VALUES (1263,'zorua-hisui','[\"normal\", \"ghost\"]','2025-10-03 09:53:54','2025-10-03 09:53:54');
INSERT INTO `pokemon` VALUES (1264,'zoroark-hisui','[\"normal\", \"ghost\"]','2025-10-03 09:53:54','2025-10-03 09:53:54');
INSERT INTO `pokemon` VALUES (1265,'braviary-hisui','[\"psychic\", \"flying\"]','2025-10-03 09:53:54','2025-10-03 09:53:54');
INSERT INTO `pokemon` VALUES (1266,'sliggoo-hisui','[\"steel\", \"dragon\"]','2025-10-03 09:53:55','2025-10-03 09:53:55');
INSERT INTO `pokemon` VALUES (1267,'goodra-hisui','[\"steel\", \"dragon\"]','2025-10-03 09:53:55','2025-10-03 09:53:55');
INSERT INTO `pokemon` VALUES (1268,'avalugg-hisui','[\"ice\", \"rock\"]','2025-10-03 09:53:56','2025-10-03 09:53:56');
INSERT INTO `pokemon` VALUES (1269,'decidueye-hisui','[\"grass\", \"fighting\"]','2025-10-03 09:53:56','2025-10-03 09:53:56');
INSERT INTO `pokemon` VALUES (1270,'dialga-origin','[\"steel\", \"dragon\"]','2025-10-03 09:53:56','2025-10-03 09:53:56');
INSERT INTO `pokemon` VALUES (1271,'palkia-origin','[\"water\", \"dragon\"]','2025-10-03 09:53:56','2025-10-03 09:53:56');
INSERT INTO `pokemon` VALUES (1272,'basculin-white-striped','[\"water\"]','2025-10-03 09:53:56','2025-10-03 09:53:56');
INSERT INTO `pokemon` VALUES (1273,'basculegion-female','[\"water\", \"ghost\"]','2025-10-03 09:53:56','2025-10-03 09:53:56');
INSERT INTO `pokemon` VALUES (1274,'enamorus-therian','[\"fairy\", \"flying\"]','2025-10-03 09:53:57','2025-10-03 09:53:57');
INSERT INTO `pokemon` VALUES (1275,'tauros-paldea-combat-breed','[\"fighting\"]','2025-10-03 09:53:57','2025-10-03 09:53:57');
INSERT INTO `pokemon` VALUES (1276,'tauros-paldea-blaze-breed','[\"fighting\", \"fire\"]','2025-10-03 09:53:57','2025-10-03 09:53:57');
INSERT INTO `pokemon` VALUES (1277,'tauros-paldea-aqua-breed','[\"fighting\", \"water\"]','2025-10-03 09:53:58','2025-10-03 09:53:58');
INSERT INTO `pokemon` VALUES (1278,'wooper-paldea','[\"poison\", \"ground\"]','2025-10-03 09:53:58','2025-10-03 09:53:58');
INSERT INTO `pokemon` VALUES (1279,'oinkologne-female','[\"normal\"]','2025-10-03 09:53:58','2025-10-03 09:53:58');
INSERT INTO `pokemon` VALUES (1280,'dudunsparce-three-segment','[\"normal\"]','2025-10-03 09:53:58','2025-10-03 09:53:58');
INSERT INTO `pokemon` VALUES (1281,'palafin-hero','[\"water\"]','2025-10-03 09:53:58','2025-10-03 09:53:58');
INSERT INTO `pokemon` VALUES (1282,'maushold-family-of-three','[\"normal\"]','2025-10-03 09:53:59','2025-10-03 09:53:59');
INSERT INTO `pokemon` VALUES (1283,'tatsugiri-droopy','[\"dragon\", \"water\"]','2025-10-03 09:53:59','2025-10-03 09:53:59');
INSERT INTO `pokemon` VALUES (1284,'tatsugiri-stretchy','[\"dragon\", \"water\"]','2025-10-03 09:53:59','2025-10-03 09:53:59');
INSERT INTO `pokemon` VALUES (1285,'squawkabilly-blue-plumage','[\"normal\", \"flying\"]','2025-10-03 09:54:00','2025-10-03 09:54:00');
INSERT INTO `pokemon` VALUES (1286,'squawkabilly-yellow-plumage','[\"normal\", \"flying\"]','2025-10-03 09:54:00','2025-10-03 09:54:00');
INSERT INTO `pokemon` VALUES (1287,'squawkabilly-white-plumage','[\"normal\", \"flying\"]','2025-10-03 09:54:00','2025-10-03 09:54:00');
INSERT INTO `pokemon` VALUES (1288,'gimmighoul-roaming','[\"ghost\"]','2025-10-03 09:54:00','2025-10-03 09:54:00');
INSERT INTO `pokemon` VALUES (1289,'koraidon-limited-build','[\"fighting\", \"dragon\"]','2025-10-03 09:54:00','2025-10-03 09:54:00');
INSERT INTO `pokemon` VALUES (1290,'koraidon-sprinting-build','[\"fighting\", \"dragon\"]','2025-10-03 09:54:00','2025-10-03 09:54:00');
INSERT INTO `pokemon` VALUES (1291,'koraidon-swimming-build','[\"fighting\", \"dragon\"]','2025-10-03 09:54:01','2025-10-03 09:54:01');
INSERT INTO `pokemon` VALUES (1292,'koraidon-gliding-build','[\"fighting\", \"dragon\"]','2025-10-03 09:54:01','2025-10-03 09:54:01');
INSERT INTO `pokemon` VALUES (1293,'miraidon-low-power-mode','[\"electric\", \"dragon\"]','2025-10-03 09:54:01','2025-10-03 09:54:01');
INSERT INTO `pokemon` VALUES (1294,'miraidon-drive-mode','[\"electric\", \"dragon\"]','2025-10-03 09:54:01','2025-10-03 09:54:01');
INSERT INTO `pokemon` VALUES (1295,'miraidon-aquatic-mode','[\"electric\", \"dragon\"]','2025-10-03 09:54:01','2025-10-03 09:54:01');
INSERT INTO `pokemon` VALUES (1296,'miraidon-glide-mode','[\"electric\", \"dragon\"]','2025-10-03 09:54:01','2025-10-03 09:54:01');
INSERT INTO `pokemon` VALUES (1297,'ursaluna-bloodmoon','[\"ground\", \"normal\"]','2025-10-03 09:54:02','2025-10-03 09:54:02');
INSERT INTO `pokemon` VALUES (1298,'ogerpon-wellspring-mask','[\"grass\", \"water\"]','2025-10-03 09:54:02','2025-10-03 09:54:02');
INSERT INTO `pokemon` VALUES (1299,'ogerpon-hearthflame-mask','[\"grass\", \"fire\"]','2025-10-03 09:54:02','2025-10-03 09:54:02');
INSERT INTO `pokemon` VALUES (1300,'ogerpon-cornerstone-mask','[\"grass\", \"rock\"]','2025-10-03 09:54:02','2025-10-03 09:54:02');
INSERT INTO `pokemon` VALUES (1301,'terapagos-terastal','[\"normal\"]','2025-10-03 09:54:02','2025-10-03 09:54:02');
INSERT INTO `pokemon` VALUES (1302,'terapagos-stellar','[\"normal\"]','2025-10-03 09:54:02','2025-10-03 09:54:02');
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('4pK9wyauadla4dhqJTKEd0PlhkBDBTkmbtjvQFUr',NULL,'172.23.58.92','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSmFGTzFsNVp5emozM3B0em00ZE5keXlYQ0NBNFd2eExValZZTUxQMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xNzIuMjEuMjAwLjIvY3J1ZC1kZW1vIjt9czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovLzE3Mi4yMS4yMDAuMi9jcnVkLWRlbW8vZGFzaGJvYXJkIjt9fQ==',1759496177);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'gustavo','gucerni@gmail.com',NULL,'$2y$12$.A/3sBHhcevTFUvheX9epOW0RON6PwguDdNjoWJ8EmvmKMNFPFdgC',NULL,'2025-09-23 12:01:19','2025-09-23 12:01:19');
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

-- Dump completed on 2025-10-03 15:33:37
