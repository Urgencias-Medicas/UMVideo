-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idUser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'9049','fd9eeaa2d12076db619f10e15636b5e65daefeb3d00f14929a7862820dfc1331','ios',1,'2020-08-13 04:26:08','2020-08-13 04:26:08');
INSERT INTO `clients` VALUES (2,'9049','fd9eeaa2d12076db619f10e15636b5e65daefeb3d00f14929a7862820dfc1331','ios',1,'2020-08-13 04:26:37','2020-08-13 04:26:37');
INSERT INTO `clients` VALUES (3,'9049','csRK7-p_TNWJUS5ALqLDqF:APA91bGWP_bbLtVSeGkyNJ6N2ICnT-VU9RAJiqJo2C7RgBJgOg-jUFYFFgvAobo0q2M-0Wnvj9eqniGOCxSqdTXqcYRzBQFp72CMM0ffnOlaib6fq0O9UqCtZpTgt1MxFYHexDrVa2Hw','android',1,'2020-08-13 04:26:44','2020-08-13 04:26:44');
INSERT INTO `clients` VALUES (4,'9049','fd9eeaa2d12076db619f10e15636b5e65daefeb3d00f14929a7862820dfc1331','ios',1,'2020-08-13 04:27:58','2020-08-13 04:27:58');
INSERT INTO `clients` VALUES (5,'9049','csRK7-p_TNWJUS5ALqLDqF:APA91bHdW6vuOSZs4_KfZCGHDTVLcabotTZSis-lGVHbopc6Z5XbZsLuNRC4onzXmh66ySUQj3h2h-OWMEUbNLK7Az5BcpmahfR4_IuSnEKbm6xiIkDSppst36CR5eor5sKYy2sViL2h','android',1,'2020-08-14 03:30:00','2020-08-14 03:30:00');
INSERT INTO `clients` VALUES (6,'9049','fd9eeaa2d12076db619f10e15636b5e65daefeb3d00f14929a7862820dfc1331','ios',1,'2020-08-15 15:21:47','2020-08-15 15:21:47');
INSERT INTO `clients` VALUES (7,'9049','d409c8b761c28de68eb96db9f0e1f5b7adbf86491e51e00731195a88fbda9e24','ios',1,'2020-08-15 15:37:40','2020-08-15 15:37:40');
INSERT INTO `clients` VALUES (8,'9049','d409c8b761c28de68eb96db9f0e1f5b7adbf86491e51e00731195a88fbda9e24','ios',1,'2020-08-15 15:48:05','2020-08-15 15:48:05');
INSERT INTO `clients` VALUES (9,'9049','d409c8b761c28de68eb96db9f0e1f5b7adbf86491e51e00731195a88fbda9e24','ios',1,'2020-08-15 15:56:34','2020-08-15 15:56:34');
INSERT INTO `clients` VALUES (10,'9049','d409c8b761c28de68eb96db9f0e1f5b7adbf86491e51e00731195a88fbda9e24','ios',1,'2020-08-15 16:09:48','2020-08-15 16:09:48');
INSERT INTO `clients` VALUES (11,'9049','eSEXqxXrQf6jxWuKryXoEp:APA91bG68OD6nvr7l7jOQgZrmksmi-8Q_uo5QnArG6X3mCPh82fWd7_T8E5d1qPCHyYtxGmGrm5LCHTvYVJ7fAmH40qTFT1GEQqlrsd3cCJhnV1tClDVB54yA7QMPoETc9E2P-dAm9ZO','android',1,'2020-08-15 20:29:11','2020-08-15 20:29:11');
INSERT INTO `clients` VALUES (12,'36924','eSEXqxXrQf6jxWuKryXoEp:APA91bG68OD6nvr7l7jOQgZrmksmi-8Q_uo5QnArG6X3mCPh82fWd7_T8E5d1qPCHyYtxGmGrm5LCHTvYVJ7fAmH40qTFT1GEQqlrsd3cCJhnV1tClDVB54yA7QMPoETc9E2P-dAm9ZO','android',1,'2020-08-15 23:11:55','2020-08-15 23:11:55');
INSERT INTO `clients` VALUES (13,'36924','eSEXqxXrQf6jxWuKryXoEp:APA91bG68OD6nvr7l7jOQgZrmksmi-8Q_uo5QnArG6X3mCPh82fWd7_T8E5d1qPCHyYtxGmGrm5LCHTvYVJ7fAmH40qTFT1GEQqlrsd3cCJhnV1tClDVB54yA7QMPoETc9E2P-dAm9ZO','android',1,'2020-08-15 23:13:18','2020-08-15 23:13:18');
INSERT INTO `clients` VALUES (14,'9049','eSEXqxXrQf6jxWuKryXoEp:APA91bG68OD6nvr7l7jOQgZrmksmi-8Q_uo5QnArG6X3mCPh82fWd7_T8E5d1qPCHyYtxGmGrm5LCHTvYVJ7fAmH40qTFT1GEQqlrsd3cCJhnV1tClDVB54yA7QMPoETc9E2P-dAm9ZO','android',1,'2020-08-16 17:11:34','2020-08-16 17:11:34');
INSERT INTO `clients` VALUES (15,'9049','fA3h5LJ2R-yxN1KXgzYGY4:APA91bFo5O_LSCLHY6FGnF6X-8Z1bQ9sqsVMkN0nSJ0xqcWcfBq2lR-XprIJzC74agqZaiXqrf3k2LYMlmI4qXI_FKJdAfdfkGUgjhSat9riMn8O-xgMFJRRJjpYDqeq-3VSWuBZyO5N','android',1,'2020-08-16 17:12:22','2020-08-16 17:12:22');
INSERT INTO `clients` VALUES (16,'9049','csRK7-p_TNWJUS5ALqLDqF:APA91bHdW6vuOSZs4_KfZCGHDTVLcabotTZSis-lGVHbopc6Z5XbZsLuNRC4onzXmh66ySUQj3h2h-OWMEUbNLK7Az5BcpmahfR4_IuSnEKbm6xiIkDSppst36CR5eor5sKYy2sViL2h','android',1,'2020-08-16 18:46:52','2020-08-16 18:46:52');
INSERT INTO `clients` VALUES (17,'9049','csRK7-p_TNWJUS5ALqLDqF:APA91bHdW6vuOSZs4_KfZCGHDTVLcabotTZSis-lGVHbopc6Z5XbZsLuNRC4onzXmh66ySUQj3h2h-OWMEUbNLK7Az5BcpmahfR4_IuSnEKbm6xiIkDSppst36CR5eor5sKYy2sViL2h','ios',1,'2020-08-17 04:48:33','2020-08-17 04:48:33');
INSERT INTO `clients` VALUES (18,'9049','ciuQK_wIFk_clbQmUV-2JC:APA91bEEMD3slr74ep6RbaVUX1qftycWWJLO0UAQpg5uLzx-txg8tqUv-yoTsKsy_wAPO0YR3pGoEYd-7vUeN-YzKx7GsBHqio5P_9ffzLzo0R7UlOHDNc-NWh00Fxg5naCZHRSgFwlW','ios',1,'2020-08-17 04:49:18','2020-08-17 04:49:18');
INSERT INTO `clients` VALUES (19,'9049','fA3h5LJ2R-yxN1KXgzYGY4:APA91bFo5O_LSCLHY6FGnF6X-8Z1bQ9sqsVMkN0nSJ0xqcWcfBq2lR-XprIJzC74agqZaiXqrf3k2LYMlmI4qXI_FKJdAfdfkGUgjhSat9riMn8O-xgMFJRRJjpYDqeq-3VSWuBZyO5N','android',1,'2020-08-18 00:29:22','2020-08-18 00:29:22');
INSERT INTO `clients` VALUES (20,'9049','dXRWxCw6Qi6SOHdznrGf-8:APA91bHKeKkJialAcYGfIMstonb3H6KljxmrhUnxUA5gp0oNUunTftNYPGJzSbZxVd3WeNsaCQPD8UYOBxZLx1qGtygIVt1zobP-nFnqOl69tBnSI4dEtOjRANUCTtdLgo_Ft9_itJp4','android',1,'2020-08-19 22:37:11','2020-08-19 22:37:11');
INSERT INTO `clients` VALUES (21,'9049','eSEXqxXrQf6jxWuKryXoEp:APA91bG68OD6nvr7l7jOQgZrmksmi-8Q_uo5QnArG6X3mCPh82fWd7_T8E5d1qPCHyYtxGmGrm5LCHTvYVJ7fAmH40qTFT1GEQqlrsd3cCJhnV1tClDVB54yA7QMPoETc9E2P-dAm9ZO','android',1,'2020-08-31 15:05:50','2020-08-31 15:05:50');
INSERT INTO `clients` VALUES (22,'9049','cDLCiLYySCK7oPyCkhZ_XK:APA91bHBn-UHqKfkOwT3XhVCyUE76rREv1gQDb-EloIma3FFSxhDbhIRtw1v9N9GNDyp7uZBtebiY-NySylBzYEisKK8l-8mdCeJ6dSYywLuISv8-DtkIKGRjRArzxU60WcpQAv4TbzZ','android',1,'2020-09-04 02:53:24','2020-09-04 02:53:24');
INSERT INTO `clients` VALUES (23,'9049','fYx_ROB-QEWah4ukPFFP9S:APA91bGt63vvVOL3ZIAFcG2fMOvfCBEOSwhXoIFQ7UkpX9ViQdOAleI2elDNJot1gCk-sL3Lk9BBc9yZiS9JtUCqbSi0nNW7iNSy-5yLUH8KXgVuJUA8eppcI2vjx2wPIjtN61et8uEi','android',1,'2020-09-04 03:26:01','2020-09-04 03:26:01');
INSERT INTO `clients` VALUES (24,'9049','ei62OgSgQ-KM-tnCuTrtTl:APA91bHnV8LJjWFmsBGEm6Ul2FOvdvzDtVT8zIcGgitk0v3TI0xBh1Zfvfr5CVXSnaQHcoyqewqb71G5lVaj7xqYXmLhRTD3BWtGEId_zih1gEAZOHveWLEhXRfvyU0LdLthlV-tQwWL','android',0,'2020-09-10 22:35:33','2020-10-01 20:47:49');
INSERT INTO `clients` VALUES (25,'9049','ei62OgSgQ-KM-tnCuTrtTl:APA91bHnV8LJjWFmsBGEm6Ul2FOvdvzDtVT8zIcGgitk0v3TI0xBh1Zfvfr5CVXSnaQHcoyqewqb71G5lVaj7xqYXmLhRTD3BWtGEId_zih1gEAZOHveWLEhXRfvyU0LdLthlV-tQwWL','android',0,'2020-09-10 22:47:22','2020-10-01 20:47:49');
INSERT INTO `clients` VALUES (26,'9049','ei62OgSgQ-KM-tnCuTrtTl:APA91bHnV8LJjWFmsBGEm6Ul2FOvdvzDtVT8zIcGgitk0v3TI0xBh1Zfvfr5CVXSnaQHcoyqewqb71G5lVaj7xqYXmLhRTD3BWtGEId_zih1gEAZOHveWLEhXRfvyU0LdLthlV-tQwWL','android',0,'2020-09-11 00:34:41','2020-10-01 20:47:49');
INSERT INTO `clients` VALUES (27,'9049','ei62OgSgQ-KM-tnCuTrtTl:APA91bHnV8LJjWFmsBGEm6Ul2FOvdvzDtVT8zIcGgitk0v3TI0xBh1Zfvfr5CVXSnaQHcoyqewqb71G5lVaj7xqYXmLhRTD3BWtGEId_zih1gEAZOHveWLEhXRfvyU0LdLthlV-tQwWL','android',0,'2020-09-11 00:37:56','2020-10-01 20:47:49');
INSERT INTO `clients` VALUES (28,'9049','ei62OgSgQ-KM-tnCuTrtTl:APA91bHnV8LJjWFmsBGEm6Ul2FOvdvzDtVT8zIcGgitk0v3TI0xBh1Zfvfr5CVXSnaQHcoyqewqb71G5lVaj7xqYXmLhRTD3BWtGEId_zih1gEAZOHveWLEhXRfvyU0LdLthlV-tQwWL','android',0,'2020-09-11 00:40:27','2020-10-01 20:47:49');
INSERT INTO `clients` VALUES (29,'9049','ei62OgSgQ-KM-tnCuTrtTl:APA91bHnV8LJjWFmsBGEm6Ul2FOvdvzDtVT8zIcGgitk0v3TI0xBh1Zfvfr5CVXSnaQHcoyqewqb71G5lVaj7xqYXmLhRTD3BWtGEId_zih1gEAZOHveWLEhXRfvyU0LdLthlV-tQwWL','android',0,'2020-09-11 00:43:49','2020-10-01 20:47:49');
INSERT INTO `clients` VALUES (30,'9049','ei62OgSgQ-KM-tnCuTrtTl:APA91bHnV8LJjWFmsBGEm6Ul2FOvdvzDtVT8zIcGgitk0v3TI0xBh1Zfvfr5CVXSnaQHcoyqewqb71G5lVaj7xqYXmLhRTD3BWtGEId_zih1gEAZOHveWLEhXRfvyU0LdLthlV-tQwWL','android',0,'2020-09-11 00:45:02','2020-10-01 20:47:49');
INSERT INTO `clients` VALUES (31,'9049','dleMg2qURZSfvbWveOEsfe:APA91bHthm9bYcH3BtNVMHaW4ezisl52qRNpMEWmaojMS-NI3P3WehhLwOQdHF-PQVtkzfKWnbkOrRUm-FLrLVlQ-rhCzO-YA1OAoNvFtoRuRWBTNiuCOz7-3hVlMpgF4cZi6csG9Bcj','android',1,'2020-09-11 05:03:21','2020-09-11 05:03:21');
INSERT INTO `clients` VALUES (32,'9049','cIek4ynBSy6CUb_fHScCx4:APA91bE0BIq7LFkD_Pv_lHxSmAPi2ScbiV_qJjAbATz1MWztBQ-MN_CMkW27akb4m4PpeWnhjWHtT6Z0TZFEHc_P2gOPuBOgYC9rBb4dQxJkjZ5r9LLwnFXX4Vq4G-4VEFKihZwHWWVZ','android',1,'2020-09-12 20:26:51','2020-09-12 20:26:51');
INSERT INTO `clients` VALUES (33,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',0,'2020-09-12 23:12:41','2020-09-13 18:46:08');
INSERT INTO `clients` VALUES (34,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-12 23:36:40','2020-09-12 23:36:40');
INSERT INTO `clients` VALUES (35,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 00:18:02','2020-09-13 00:18:02');
INSERT INTO `clients` VALUES (36,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 00:30:56','2020-09-13 00:30:56');
INSERT INTO `clients` VALUES (37,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 00:33:51','2020-09-13 00:33:51');
INSERT INTO `clients` VALUES (38,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 00:35:23','2020-09-13 00:35:23');
INSERT INTO `clients` VALUES (39,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 00:55:25','2020-09-13 00:55:25');
INSERT INTO `clients` VALUES (40,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 00:59:16','2020-09-13 00:59:16');
INSERT INTO `clients` VALUES (41,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 01:02:49','2020-09-13 01:02:49');
INSERT INTO `clients` VALUES (42,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 02:43:22','2020-09-13 02:43:22');
INSERT INTO `clients` VALUES (43,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 04:04:16','2020-09-13 04:04:16');
INSERT INTO `clients` VALUES (44,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 04:24:40','2020-09-13 04:24:40');
INSERT INTO `clients` VALUES (45,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 04:33:52','2020-09-13 04:33:52');
INSERT INTO `clients` VALUES (46,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 04:38:51','2020-09-13 04:38:51');
INSERT INTO `clients` VALUES (47,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:20:09','2020-09-13 15:20:09');
INSERT INTO `clients` VALUES (48,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:24:20','2020-09-13 15:24:20');
INSERT INTO `clients` VALUES (49,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:25:29','2020-09-13 15:25:29');
INSERT INTO `clients` VALUES (50,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:27:33','2020-09-13 15:27:33');
INSERT INTO `clients` VALUES (51,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:29:13','2020-09-13 15:29:13');
INSERT INTO `clients` VALUES (52,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:31:38','2020-09-13 15:31:38');
INSERT INTO `clients` VALUES (53,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:36:00','2020-09-13 15:36:00');
INSERT INTO `clients` VALUES (54,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:36:46','2020-09-13 15:36:46');
INSERT INTO `clients` VALUES (55,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:43:10','2020-09-13 15:43:10');
INSERT INTO `clients` VALUES (56,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:43:51','2020-09-13 15:43:51');
INSERT INTO `clients` VALUES (57,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:44:39','2020-09-13 15:44:39');
INSERT INTO `clients` VALUES (58,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:46:06','2020-09-13 15:46:06');
INSERT INTO `clients` VALUES (59,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:48:05','2020-09-13 15:48:05');
INSERT INTO `clients` VALUES (60,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:49:11','2020-09-13 15:49:11');
INSERT INTO `clients` VALUES (61,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:49:45','2020-09-13 15:49:45');
INSERT INTO `clients` VALUES (62,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:51:20','2020-09-13 15:51:20');
INSERT INTO `clients` VALUES (63,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:54:20','2020-09-13 15:54:20');
INSERT INTO `clients` VALUES (64,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:56:33','2020-09-13 15:56:33');
INSERT INTO `clients` VALUES (65,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 15:58:39','2020-09-13 15:58:39');
INSERT INTO `clients` VALUES (66,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:01:34','2020-09-13 16:01:34');
INSERT INTO `clients` VALUES (67,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:05:41','2020-09-13 16:05:41');
INSERT INTO `clients` VALUES (68,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:06:12','2020-09-13 16:06:12');
INSERT INTO `clients` VALUES (69,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:08:21','2020-09-13 16:08:21');
INSERT INTO `clients` VALUES (70,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:08:21','2020-09-13 16:08:21');
INSERT INTO `clients` VALUES (71,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:14:20','2020-09-13 16:14:20');
INSERT INTO `clients` VALUES (72,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:15:03','2020-09-13 16:15:03');
INSERT INTO `clients` VALUES (73,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:16:05','2020-09-13 16:16:05');
INSERT INTO `clients` VALUES (74,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:16:47','2020-09-13 16:16:47');
INSERT INTO `clients` VALUES (75,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:17:21','2020-09-13 16:17:21');
INSERT INTO `clients` VALUES (76,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:17:53','2020-09-13 16:17:53');
INSERT INTO `clients` VALUES (77,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:21:37','2020-09-13 16:21:37');
INSERT INTO `clients` VALUES (78,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:22:38','2020-09-13 16:22:38');
INSERT INTO `clients` VALUES (79,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:24:35','2020-09-13 16:24:35');
INSERT INTO `clients` VALUES (80,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 16:25:07','2020-09-13 16:25:07');
INSERT INTO `clients` VALUES (81,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 17:16:29','2020-09-13 17:16:29');
INSERT INTO `clients` VALUES (82,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 17:16:53','2020-09-13 17:16:53');
INSERT INTO `clients` VALUES (83,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 17:18:39','2020-09-13 17:18:39');
INSERT INTO `clients` VALUES (84,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 17:19:49','2020-09-13 17:19:49');
INSERT INTO `clients` VALUES (85,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 17:21:01','2020-09-13 17:21:01');
INSERT INTO `clients` VALUES (86,'9049','eefXpFBkRgCTbi8UzLH4Op:APA91bEdMsRg-RMIrU48qZYooe7Md3p_8H5sRt94OC6cBBhcL0knB-Y6SjfeH0anj5boVqyws7jtHEJo3tqMHyZ17UZxeXoIqx7ny1ryD0v8TEi-Z5BSKxnHa2Y0P8b1-oL_xrguQVWj','android',1,'2020-09-13 18:46:05','2020-09-13 18:46:05');
INSERT INTO `clients` VALUES (87,'9049','fai56pKPSOS8LgZQfYjXQm:APA91bFJgGdcYmRA4vOQysh4X717Tj4HeWYozpol4gQ6mtkdEyGoY5cVDVSoosE1ECrLU9G2iVXmfzczB2EGQpJATzJ7rHFtr7Jp3GOYzV-cTLW8c2RO03FZ59baQEdHVm1k_eiPobRZ','android',0,'2020-09-14 16:10:24','2020-09-14 16:11:53');
INSERT INTO `clients` VALUES (88,'9049','c_yfKiULQmK7OTRKv6fkhj:APA91bEKtQVONOXCEngs_Nqk0F-gFsD5svL_BiSK0SYm1SpH9__ycneXDxF0YPXlNf1LyxWrfMG5iCQhHFEVF6tDzZqW870zUOdam3nMc9T6_zAYLTtuwq6atuwWDTGA-SCk7h7e6hMI','android',1,'2020-09-28 02:19:55','2020-09-28 02:19:55');
INSERT INTO `clients` VALUES (89,'9049','fCxcFXnpTpSS_nNSXPUiOH:APA91bGh2WPi1WhytsR9AozUVDHSa0mq2yDOgBRipwPhYUEXee6iwAVCSBavuk6kIS39wBGdcvwIcCtMRX0HHjcJrDQujKQRO-wYjNezK_di2_YRXDSFT1IV-5OwOqk-_XPhdhDcy8KZ','android',1,'2020-09-27 22:04:50','2020-09-27 22:04:50');
INSERT INTO `clients` VALUES (90,'9049','fOwp0_2JTFmmYGidtX6fxe:APA91bETHxEINwqL4gkrA__KJoOZJuyFSikXd7OFRNZTo-Pk17T4eo2l-x9InrEKG4JSTo5iiaC9NiFFsb9SUKIhumh2l-nzRsxH_ShazCxc-qqrv8UNYAcyTP3KrtAFoZLLuqJUS2rf','android',1,'2020-09-27 22:07:03','2020-09-27 22:07:03');
INSERT INTO `clients` VALUES (91,'9049','eVRBNOnnTbykCpOlMkxXNl:APA91bEg_dlQuEvbz_hlvBgy1WKo61pTGiHUY8vLAixLU-RZ0_l3FXck9wZz3EPQpR-z4xenKXwsHj6FdssxinQUU3LspJKLBitmpZr1YgKLiaCtH3gm_uSnbjtIYntjsL3q82R8Zowx','android',1,'2020-09-27 22:26:51','2020-09-27 22:26:51');
INSERT INTO `clients` VALUES (92,'38738','fX3UdMquSxKGb95QSmiVbD:APA91bGRalufn0seD-2z2lmCMErq8cZQREZIZ42kTBDFrhkYWlREefMSgCGt9fXksB7Cdupakcw-lSCn2Zeqmv3Vkd0VYl4jG2mxW6nX-ZBSCzFExYCFjihBT9OrDJqWElZhvIJBibeI','android',0,'2020-10-05 21:51:28','2020-10-05 22:31:06');
INSERT INTO `clients` VALUES (93,'38714','cJl9hhNKS_yrtBiR1in3s-:APA91bEubKWMTBlVpnaS3_dLDF4Z1d2ScupOaY8f8xGb1qcQQeKlIqw_Wuh-ZjVl9YUPa9z7AzjDf3Atnnui3dY-d4IX_WkK_zv7WA00SRhqClx0KRL837ApSTeZy1fLWHbJRgYDxFgv','android',1,'2020-10-05 22:06:42','2020-10-05 22:06:42');
INSERT INTO `clients` VALUES (94,'38738','fX3UdMquSxKGb95QSmiVbD:APA91bGRalufn0seD-2z2lmCMErq8cZQREZIZ42kTBDFrhkYWlREefMSgCGt9fXksB7Cdupakcw-lSCn2Zeqmv3Vkd0VYl4jG2mxW6nX-ZBSCzFExYCFjihBT9OrDJqWElZhvIJBibeI','android',1,'2020-10-05 22:32:09','2020-10-05 22:32:09');
INSERT INTO `clients` VALUES (95,'38867','eND_uVsJTS6kYzhcYmbwE3:APA91bGIhP5jFk0qoYo_sf13FoHfnXwCSPehAM6e7i819cFtlk7LgvNjL2hnjIW0MFS-dSj9was8eFyXDiIdC_yrPITJ1kkckJBv0Ob_h7r4DiZ_6qVZQf5Sp3DyleGb4B_DDfDYCA11','android',1,'2020-10-14 17:41:18','2020-10-14 17:41:18');
INSERT INTO `clients` VALUES (96,'38873','eViDUaerTAGKTiPGXvckk4:APA91bFzm40JrrDx9Eqx69iAz82ZY_6Avvm8SG6DSIgARm-mHuhnkh8jnDEAJt3QwCkpvlpZXxDVJaKRexFWXjaZqmXuibW8-iOx7mFBj0a8fIjOgfyORbBDHG0wGUiN9FmQN1Bfce5n','android',1,'2020-10-17 15:52:57','2020-10-17 15:52:57');
INSERT INTO `clients` VALUES (97,'38870','d-xL0MIlQvqvPd1f6n380t:APA91bFiAapTmhNb6-nb0i6dhDmFUBdQMUbOFEIWvSurEBm7CmFiUAh2697jgxOeUhB0VPdzNZ3nCzvPmI-rNwrkvcfdJFAWLnLqPoX7pF8ne1qELTubj7hbVsoOyUOl473wFi-FSXIv','android',0,'2020-10-17 15:58:00','2020-10-18 09:22:29');
INSERT INTO `clients` VALUES (98,'38876','caWeRfAlT06PEv8hYl0rxz:APA91bFd7BV4l3WTruL-8jGAJstRUwIyAbwgqwpF3EaTAdOGDUn3Rw7mSezNWDM1jnrti9vfkk4AaQWlS4YDuJh-W3x8bYuaLNLkaSmKIAiamI94TPANoCU1AaihaXzoKc1xZFRMH2Ab','android',1,'2020-10-17 16:00:23','2020-10-17 16:00:23');
INSERT INTO `clients` VALUES (99,'38870','d-xL0MIlQvqvPd1f6n380t:APA91bFiAapTmhNb6-nb0i6dhDmFUBdQMUbOFEIWvSurEBm7CmFiUAh2697jgxOeUhB0VPdzNZ3nCzvPmI-rNwrkvcfdJFAWLnLqPoX7pF8ne1qELTubj7hbVsoOyUOl473wFi-FSXIv','android',1,'2020-10-18 09:23:51','2020-10-18 09:23:51');
INSERT INTO `clients` VALUES (100,'39008','fH7LzEL5T2yNixpVqVe4EH:APA91bEyvmw8y14UHEpvFeIBgsGMmISFTS1NPtXX_XpqKNSJ5rko9UtjIsDyjKBCEXWeC9qfkB-rjvdkA67VizAGoeL-V81QfGbvM28BOvSonoVPvcuwtT-lBMrNE7KBcL44sgp1fJJW','android',0,'2020-10-18 21:37:30','2020-10-19 16:36:29');
INSERT INTO `clients` VALUES (101,'39008','fH7LzEL5T2yNixpVqVe4EH:APA91bEyvmw8y14UHEpvFeIBgsGMmISFTS1NPtXX_XpqKNSJ5rko9UtjIsDyjKBCEXWeC9qfkB-rjvdkA67VizAGoeL-V81QfGbvM28BOvSonoVPvcuwtT-lBMrNE7KBcL44sgp1fJJW','android',0,'2020-10-18 21:41:45','2020-10-19 16:36:29');
INSERT INTO `clients` VALUES (102,'39020','dwQdDMKEQ6GaAwgFhgiJlD:APA91bHuke6-ObZ6qbZTOa9le-70R6mOEha58V5-2ky5I9ueJfQDcWv1yoyAUWGDhxX3eo0UfazCaSxFVWIBZSqtxa3uelPYEFCmmIAwNgDb-c7OyTxUFjE-9MKhfat5XtTRG9ZPzFtm','android',1,'2020-10-19 15:46:28','2020-10-19 15:46:28');
INSERT INTO `clients` VALUES (103,'39021','et4JNP0_RXu_kqaugD1eBJ:APA91bEdOZPm_-I35r4TiCNA3uuvT3Cka3COBG4pyAfkqBpx2UMUn7rh6sjYVlUANq9t-JULxjBvhrGgFFOyy2FBHlNAsnrpwhf6jq7V_UmNa4OUFIORhCXojqr6puX5SIRzi8SijGSF','android',1,'2020-10-19 15:57:09','2020-10-19 15:57:09');
INSERT INTO `clients` VALUES (104,'39022','e3l7zhe2Rhatc5jQzk3iRI:APA91bE8qB2r1DrFyS7pdETpdZHuKTmu6ZCkDl404ISEv9ECHgJY8t1DYuSWV0qm9RRDdZWAOTWCNS--rxsVVwy9qdY9JkQaFVTxX4nVHcg4_qbZl5IUhHHzmE3dxx5I9ed_kl8cr_OL','android',1,'2020-10-19 15:58:53','2020-10-19 15:58:53');
INSERT INTO `clients` VALUES (105,'39023','csjp0Z9gQc6on9pd7K2Fls:APA91bEOB41aurwKw7pgGTzgB9PYIqy61dTHz8VCAq1kN6kZz5sojW1ujuc6vF2eeoY2GCcbcpZxeAI5_R5TcYbtOlSFrXJShB1OgmCw1Xk4oEIupa3UkJkzReg3UyNWhGJZOCTxILyL','android',1,'2020-10-19 16:03:20','2020-10-19 16:03:20');
INSERT INTO `clients` VALUES (106,'39024','eYgHXFC7TdOrpqznx1uds9:APA91bHgcDaIJbtxcOYkpY0xO8lfchTWfHnmzGRzUurSYPuitmFOxo4JVsvkEFTiTHHOlEhpDaDqLZRjEAbIDrics4UdGo-SF3AG-vy2p8AUxrGOwQZe70xLN981WfL1gLpM_k5MIUQB','android',1,'2020-10-19 16:06:37','2020-10-19 16:06:37');
INSERT INTO `clients` VALUES (107,'39025','cyAO4ITQSJCXcQyfXkZIF6:APA91bGhyAvT_h3UixgRRsv68vdyMjcN2s6-SkoFGDnkA2oGQXWfP4EWm4DKC7E1yg0cm-D0PoAcI3r5yvFTr2z9agAEBAplmZrOS6mfuYiOwJ-xMhPN2AemZErrb_7fK-xlqzSyRf3z','android',1,'2020-10-19 16:06:39','2020-10-19 16:06:39');
INSERT INTO `clients` VALUES (108,'38877','efDnWbGFTNKPIaHB7a7w1b:APA91bHBiLxY1vDpGHY1lIe9p-g3QKgfLa4ExYZwd6qLu5TaMD-_WgBsHFuFGWY5JMCZnzRe1YQuBaScy6NfqKZHhOevSCoLe-PIOwyUdihbM4aCVsX-Y166Pup0PGYwg0R7J3kZyUj_','android',1,'2020-10-19 16:06:45','2020-10-19 16:06:45');
INSERT INTO `clients` VALUES (109,'39025','fH7LzEL5T2yNixpVqVe4EH:APA91bEyvmw8y14UHEpvFeIBgsGMmISFTS1NPtXX_XpqKNSJ5rko9UtjIsDyjKBCEXWeC9qfkB-rjvdkA67VizAGoeL-V81QfGbvM28BOvSonoVPvcuwtT-lBMrNE7KBcL44sgp1fJJW','android',0,'2020-10-19 16:39:16','2020-10-27 13:22:26');
INSERT INTO `clients` VALUES (110,'39025','fH7LzEL5T2yNixpVqVe4EH:APA91bEyvmw8y14UHEpvFeIBgsGMmISFTS1NPtXX_XpqKNSJ5rko9UtjIsDyjKBCEXWeC9qfkB-rjvdkA67VizAGoeL-V81QfGbvM28BOvSonoVPvcuwtT-lBMrNE7KBcL44sgp1fJJW','android',1,'2020-10-27 13:23:20','2020-10-27 13:23:20');
INSERT INTO `clients` VALUES (111,'39330','dpaS_zg7RjCfmNrp8L1xvq:APA91bG-FePunCes0edc6Uk9CPH-94wihMe6p7X3Hev69R--bTMb5TiW2jPn3tgttuCQt9ty3n8tU6oBNkJDDoFoKATmv9MGVPwBRNSUY8gGO_J7QpvX39eHkhQGKhyRTFSTKMWNDGGT','android',1,'2020-11-16 17:59:54','2020-11-16 17:59:54');
INSERT INTO `clients` VALUES (112,'39330','dpGF_tHWRhm30S_T3fAyv9:APA91bHisJLPtxmyCXNkIKOsel71qG_N2hCcHflfmNtmYxIsYt4HOTntcAi-qD2N2dlHBAACR22lH8aTmraqkygiRH-VlnCsOa8ulMsYiM2AAbwHE2U-XpLGuHdzkmgLLenFy_cCui5N','android',1,'2020-11-23 17:49:03','2020-11-23 17:49:03');
INSERT INTO `clients` VALUES (113,'39500','f95kkow4RMKTMYpWSRFbRb:APA91bHOb5p27I4Q2FPJouZxPL6Z6rYPVUna1C8mUnL6J7qjKZAGwnWnB3Mv-htdAjxp-JYOr6YimHEhe73aRGkOpxumOlV-zkXOC3FS3ST6iwmdagjieaVTEVbnlUurQRmIZDMQmPuY','android',0,'2020-11-24 17:51:28','2020-11-24 19:42:30');
INSERT INTO `clients` VALUES (114,'39503','f95kkow4RMKTMYpWSRFbRb:APA91bHOb5p27I4Q2FPJouZxPL6Z6rYPVUna1C8mUnL6J7qjKZAGwnWnB3Mv-htdAjxp-JYOr6YimHEhe73aRGkOpxumOlV-zkXOC3FS3ST6iwmdagjieaVTEVbnlUurQRmIZDMQmPuY','android',1,'2020-11-24 20:13:47','2020-11-24 20:13:47');
INSERT INTO `clients` VALUES (115,'39505','dX33paMMSYOovIvOUYDw5v:APA91bHu1vhRChJNRvbCig82i3np8j3TBDU87ON-jbmIjBWD4T6gKR3DqqAQquN_W9XKkUL82WVXodbPsfz-4tm6FPtCNUWBd2QOzIqDP4yVEpBIuU7sVMqJC3R-cu74cYg-OgI5BPBo','android',1,'2020-11-24 21:30:21','2020-11-24 21:30:21');
INSERT INTO `clients` VALUES (116,'39506','d0i2ElisTzSy_UKQRqUVDs:APA91bEaecDN8R57DCBuxcLq7WR4OLCcvZxGMH6w2DMuGb2s2Yq2OkMkALN0ahVO6Ro6NNFjWurF9XynSeTFkMz9ZVIbT_eFKNU7B7fDDkNN6THXFEE-QKremLeJ_nRdFbxkNbgY1-ov','android',1,'2020-11-24 21:33:49','2020-11-24 21:33:49');
INSERT INTO `clients` VALUES (117,'39507','fyMajvhfSMKOSgE2drhi0G:APA91bFOv_bqdJQV8DuKrAG37PbMkxdEVT5YtFfEu5wlOMmPyz0xxCZ95FyUKByRFZPrQpcNB0d_7Zn7XYzwBqaZyKnT55yDB0G2LGDkl0Y7r_TwtPKLpYHR1O-EuUogsNIbgeH2Hca4','android',1,'2020-11-24 21:35:19','2020-11-24 21:35:19');
INSERT INTO `clients` VALUES (118,'39508','fmZjJtStSGi3TJw-xOezC6:APA91bHNure4dkCl-YLm6A38iU4mrDI4UMEVmiLAMl1Jpn9J9bYopHkEfYtAvCrO-A_oDlxJYt4q_V7e03I2QUkpx7LsHGmYnc15WVPE76KoU4PXsAr8oJQq0aiKXon31qdwCr0Ifkrr','android',1,'2020-11-24 21:38:17','2020-11-24 21:38:17');
INSERT INTO `clients` VALUES (119,'39509','cdem08NiSQGoOZfS_s0AGy:APA91bFAQGiiAFzkltPmb9gtOBkaYw3kDyqLAfeeOl5LWQ1UPQ2u00e0YdXT6-kbtc47XJzCFp8JqmJWIjYShWB3DRNEHvI89fnPodi-Fw-F2HIK58fyqDXn1O2OuK8ERmWdAYPuCnRt','android',1,'2020-11-24 21:39:43','2020-11-24 21:39:43');
INSERT INTO `clients` VALUES (120,'39510','cCF21ZpPSbC9fzAstlk-7V:APA91bFF86RFdsaVj_WgUQugMJSmwsgCZu9HUz137yiXp_0XveNuhbkONoWdSChLyVCaSCG3dOtvR31F67e8FdQcDLuwr4E6vAkjGGRVWGeUq584U_Tig76g7uHQqxPUsunV0P-aCAjI','android',1,'2020-11-24 22:02:37','2020-11-24 22:02:37');
INSERT INTO `clients` VALUES (121,'39511','cnNdsHXNTmelp5IpQHB3ol:APA91bHgXrqkziArxKGy3Rl-x-FLsthLpay3B01RFYl8iWPTklOXGAj5MAHwVr9cr1sRTh37vAG4j68cmD0kX_MtRfVgNhjpmrrJg4Y3rT3N1WU86AKezOzs1s4ETrfWKnPWNVf_srI5','android',1,'2020-11-24 22:06:41','2020-11-24 22:06:41');
INSERT INTO `clients` VALUES (122,'39512','cHxQnAQzTGiTM6RTIyOvDt:APA91bE2Ce4alOxIpIB9d2XpkHkd9J4tNVn0XqKEY-yFyKyVho06s-56WROuCqKABCjlp1z6HM8aC4astxQFhYpFMIIEBPzZULppXsAF7JIxVrOtMvQvTz92dYKwwYmlbuDQ9ZLzHdxX','android',1,'2020-11-24 22:17:54','2020-11-24 22:17:54');
INSERT INTO `clients` VALUES (123,'39514','f9ec3c69e3f1b37b80d81f5a5e1ee9fe0ff1960fd4dc8be93d6922a49b5f8870','ios',1,'2020-11-24 22:44:37','2020-11-24 22:44:37');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1);
INSERT INTO `migrations` VALUES (2,'2014_10_12_100000_create_password_resets_table',1);
INSERT INTO `migrations` VALUES (3,'2019_08_19_000000_create_failed_jobs_table',1);
INSERT INTO `migrations` VALUES (4,'2020_06_20_201918_add_status_to_users_table',1);
INSERT INTO `migrations` VALUES (5,'2020_06_28_003934_create_queues_table',1);
INSERT INTO `migrations` VALUES (6,'2020_06_28_024648_update_queues_table',1);
INSERT INTO `migrations` VALUES (7,'2020_06_29_231301_create_clients_table',1);
INSERT INTO `migrations` VALUES (8,'2020_07_12_214900_add_multiple_column_to_queues',1);
INSERT INTO `migrations` VALUES (9,'2020_07_12_220133_drop_last_in_queue_to_queues',1);
INSERT INTO `migrations` VALUES (10,'2020_07_14_174230_add_os_to_clients',1);
INSERT INTO `migrations` VALUES (11,'2020_07_19_140242_create_sessions_table',1);
INSERT INTO `migrations` VALUES (12,'2020_07_28_055714_create_permission_tables',1);
INSERT INTO `migrations` VALUES (13,'2020_08_18_033242_add_status_to_clients_table',2);
INSERT INTO `migrations` VALUES (14,'2020_09_04_060525_add_multiple_column_to_sessions',3);
INSERT INTO `migrations` VALUES (15,'2020_09_06_061152_update_sessions_table',4);
INSERT INTO `migrations` VALUES (16,'2020_09_12_161819_add_medical_num_to_users_table',5);
INSERT INTO `migrations` VALUES (17,'2020_10_30_052811_create_shifts_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\User',1);
INSERT INTO `model_has_roles` VALUES (1,'App\\User',2);
INSERT INTO `model_has_roles` VALUES (2,'App\\User',3);
INSERT INTO `model_has_roles` VALUES (1,'App\\User',20);
INSERT INTO `model_has_roles` VALUES (2,'App\\User',20);
INSERT INTO `model_has_roles` VALUES (1,'App\\User',21);
INSERT INTO `model_has_roles` VALUES (2,'App\\User',21);
INSERT INTO `model_has_roles` VALUES (1,'App\\User',31);
INSERT INTO `model_has_roles` VALUES (2,'App\\User',31);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'edit_users','web','2020-08-16 04:26:12','2020-08-25 03:29:29');
INSERT INTO `permissions` VALUES (2,'edit_roles','web','2020-08-25 03:29:39','2020-08-25 03:29:39');
INSERT INTO `permissions` VALUES (3,'edit_permissions','web','2020-08-25 03:29:42','2020-08-25 03:29:42');
INSERT INTO `permissions` VALUES (4,'add_user','web','2020-08-25 03:29:46','2020-08-25 03:29:46');
INSERT INTO `permissions` VALUES (5,'add_role','web','2020-08-25 03:29:49','2020-08-25 03:29:49');
INSERT INTO `permissions` VALUES (6,'add_permission','web','2020-08-25 03:29:52','2020-08-25 03:29:52');
INSERT INTO `permissions` VALUES (7,'view_sessions','web','2020-09-25 04:37:34','2020-09-25 04:37:34');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queues`
--

DROP TABLE IF EXISTS `queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `queues` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idDevice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queues`
--

LOCK TABLES `queues` WRITE;
/*!40000 ALTER TABLE `queues` DISABLE KEYS */;
INSERT INTO `queues` VALUES (1,'9049',0,'2020-08-12 17:23:40','2020-08-14 04:26:36');
INSERT INTO `queues` VALUES (2,'9049',0,'2020-08-14 04:26:42','2020-08-14 04:26:57');
INSERT INTO `queues` VALUES (3,'9049',0,'2020-08-15 17:47:07','2020-08-15 11:56:39');
INSERT INTO `queues` VALUES (4,'9049',0,'2020-08-15 18:08:41','2020-08-15 12:09:08');
INSERT INTO `queues` VALUES (5,'9049',0,'2020-08-15 18:10:19','2020-08-15 12:10:44');
INSERT INTO `queues` VALUES (6,'9049',0,'2020-08-15 18:11:44','2020-08-15 18:12:07');
INSERT INTO `queues` VALUES (7,'9049',0,'2020-08-15 19:59:26','2020-08-15 14:00:15');
INSERT INTO `queues` VALUES (8,'9049',0,'2020-08-15 20:00:54','2020-08-15 14:01:26');
INSERT INTO `queues` VALUES (9,'9049',0,'2020-08-15 20:36:41','2020-08-15 14:37:02');
INSERT INTO `queues` VALUES (10,'9049',0,'2020-08-15 20:50:51','2020-08-15 14:51:15');
INSERT INTO `queues` VALUES (11,'9049',0,'2020-08-15 20:52:08','2020-08-15 14:52:46');
INSERT INTO `queues` VALUES (12,'36924',0,'2020-08-15 23:08:23','2020-08-16 18:24:36');
INSERT INTO `queues` VALUES (13,'9049',0,'2020-08-18 00:29:40','2020-08-18 00:29:57');
INSERT INTO `queues` VALUES (14,'9049',0,'2020-08-31 15:07:52','2020-08-31 09:11:02');
INSERT INTO `queues` VALUES (15,'9049',0,'2020-09-02 21:09:22','2020-09-02 15:10:21');
INSERT INTO `queues` VALUES (16,'9049',0,'2020-09-03 16:15:53','2020-09-03 16:16:21');
INSERT INTO `queues` VALUES (17,'9049',0,'2020-09-06 04:49:05','2020-09-06 04:49:31');
INSERT INTO `queues` VALUES (18,'9049',0,'2020-09-06 04:49:37','2020-09-05 22:50:57');
INSERT INTO `queues` VALUES (19,'9049',0,'2020-09-06 05:06:57','2020-09-05 23:07:15');
INSERT INTO `queues` VALUES (20,'9049',0,'2020-09-06 06:18:52','2020-09-06 00:19:11');
INSERT INTO `queues` VALUES (21,'9049',0,'2020-09-27 22:00:36','2020-09-27 22:02:16');
INSERT INTO `queues` VALUES (22,'9049',0,'2020-09-27 22:03:38','2020-09-27 22:03:43');
INSERT INTO `queues` VALUES (23,'9049',0,'2020-09-27 22:05:22','2020-09-27 22:05:29');
INSERT INTO `queues` VALUES (24,'9049',0,'2020-09-27 22:06:11','2020-09-27 22:06:15');
INSERT INTO `queues` VALUES (25,'9049',0,'2020-09-27 22:07:25','2020-09-27 22:07:33');
INSERT INTO `queues` VALUES (26,'9049',0,'2020-09-27 22:11:52','2020-09-27 22:11:58');
INSERT INTO `queues` VALUES (27,'9049',0,'2020-09-27 22:18:25','2020-09-27 22:21:31');
INSERT INTO `queues` VALUES (28,'9049',0,'2020-09-27 22:24:46','2020-09-27 22:24:50');
INSERT INTO `queues` VALUES (29,'9049',0,'2020-09-27 22:27:08','2020-09-27 22:27:12');
INSERT INTO `queues` VALUES (30,'38738',0,'2020-10-06 22:39:34','2020-10-06 22:41:23');
INSERT INTO `queues` VALUES (31,'38868',0,'2020-10-09 16:34:35','2020-10-09 16:35:07');
INSERT INTO `queues` VALUES (32,'38877',0,'2020-10-09 16:34:42','2020-10-09 16:35:15');
INSERT INTO `queues` VALUES (33,'38738',0,'2020-10-09 16:34:51','2020-10-09 16:35:43');
INSERT INTO `queues` VALUES (34,'38878',0,'2020-10-09 16:35:01','2020-10-09 16:35:46');
INSERT INTO `queues` VALUES (35,'38874',0,'2020-10-09 16:35:14','2020-10-09 16:35:56');
INSERT INTO `queues` VALUES (36,'38868',0,'2020-10-09 16:35:28','2020-10-09 16:36:10');
INSERT INTO `queues` VALUES (37,'38875',0,'2020-10-09 16:35:57','2020-10-09 16:36:14');
INSERT INTO `queues` VALUES (38,'38868',0,'2020-10-09 16:36:11','2020-10-09 16:36:17');
INSERT INTO `queues` VALUES (39,'38874',0,'2020-10-09 16:36:15','2020-10-09 16:36:42');
INSERT INTO `queues` VALUES (40,'38875',0,'2020-10-09 16:36:26','2020-10-09 16:36:46');
INSERT INTO `queues` VALUES (41,'38738',0,'2020-10-17 16:16:10','2020-10-17 16:17:05');
INSERT INTO `queues` VALUES (42,'38738',0,'2020-10-17 16:19:53','2020-10-17 16:20:29');
INSERT INTO `queues` VALUES (43,'38738',0,'2020-10-17 17:20:22','2020-10-17 17:21:00');
INSERT INTO `queues` VALUES (44,'38987',0,'2020-10-17 17:54:13','2020-10-17 17:54:45');
INSERT INTO `queues` VALUES (45,'38985',0,'2020-10-17 17:54:19','2020-10-17 17:55:19');
INSERT INTO `queues` VALUES (46,'38988',0,'2020-10-17 17:54:45','2020-10-17 17:55:22');
INSERT INTO `queues` VALUES (47,'38985',0,'2020-10-18 07:47:51','2020-10-18 07:48:33');
INSERT INTO `queues` VALUES (48,'38985',0,'2020-10-18 08:42:58','2020-10-18 08:43:15');
INSERT INTO `queues` VALUES (49,'38985',0,'2020-10-18 08:46:25','2020-10-18 08:46:56');
INSERT INTO `queues` VALUES (50,'38985',0,'2020-10-18 08:50:17','2020-10-18 08:50:33');
INSERT INTO `queues` VALUES (51,'38738',0,'2020-10-18 08:52:26','2020-10-18 08:52:45');
INSERT INTO `queues` VALUES (52,'38875',0,'2020-10-18 08:59:54','2020-10-18 09:00:22');
INSERT INTO `queues` VALUES (53,'38738',0,'2020-10-18 09:57:32','2020-10-18 09:58:04');
INSERT INTO `queues` VALUES (54,'39008',0,'2020-10-18 21:45:16','2020-10-18 21:45:43');
INSERT INTO `queues` VALUES (55,'39008',0,'2020-10-18 21:46:11','2020-10-18 21:46:54');
INSERT INTO `queues` VALUES (56,'39008',0,'2020-10-18 21:53:19','2020-10-18 21:53:52');
INSERT INTO `queues` VALUES (57,'39008',0,'2020-10-18 21:57:11','2020-10-18 21:58:12');
INSERT INTO `queues` VALUES (58,'39008',0,'2020-10-18 21:59:31','2020-10-18 21:59:54');
INSERT INTO `queues` VALUES (59,'39008',0,'2020-10-18 22:04:52','2020-10-18 22:05:15');
INSERT INTO `queues` VALUES (60,'39008',0,'2020-10-18 22:07:32','2020-10-18 22:07:53');
INSERT INTO `queues` VALUES (61,'39023',0,'2020-10-19 16:09:51','2020-10-19 16:10:07');
INSERT INTO `queues` VALUES (62,'39024',0,'2020-10-19 16:10:08','2020-10-19 16:10:13');
INSERT INTO `queues` VALUES (63,'39021',0,'2020-10-19 16:10:35','2020-10-19 16:10:42');
INSERT INTO `queues` VALUES (64,'39024',0,'2020-10-19 16:10:48','2020-10-19 16:11:04');
INSERT INTO `queues` VALUES (65,'39025',0,'2020-10-19 16:10:50','2020-10-19 16:11:21');
INSERT INTO `queues` VALUES (66,'38873',0,'2020-10-19 16:17:46','2020-10-19 16:17:56');
INSERT INTO `queues` VALUES (67,'38985',0,'2020-10-19 16:17:55','2020-10-19 16:18:15');
INSERT INTO `queues` VALUES (68,'39024',0,'2020-10-19 16:18:04','2020-10-19 16:18:24');
INSERT INTO `queues` VALUES (69,'39024',0,'2020-10-19 16:22:20','2020-10-19 16:22:23');
INSERT INTO `queues` VALUES (70,'39024',0,'2020-10-19 16:22:25','2020-10-19 16:22:37');
INSERT INTO `queues` VALUES (71,'39025',0,'2020-10-19 16:22:29','2020-10-19 16:22:51');
INSERT INTO `queues` VALUES (72,'39024',0,'2020-10-22 22:35:35','2020-10-22 22:36:37');
INSERT INTO `queues` VALUES (73,'39024',0,'2020-10-22 22:36:52','2020-10-22 22:37:42');
INSERT INTO `queues` VALUES (74,'39022',0,'2020-10-27 16:27:11','2020-10-31 22:05:32');
INSERT INTO `queues` VALUES (75,'39025',0,'2020-10-31 22:04:44','2020-10-31 22:06:05');
INSERT INTO `queues` VALUES (76,'39025',0,'2020-11-14 21:10:29','2020-11-14 21:10:50');
INSERT INTO `queues` VALUES (77,'39500',0,'2020-11-24 17:56:44','2020-11-24 17:56:55');
INSERT INTO `queues` VALUES (78,'39025',0,'2020-11-24 18:41:52','2020-11-24 18:45:13');
INSERT INTO `queues` VALUES (79,'39500',0,'2020-11-24 18:46:58','2020-11-24 18:47:08');
INSERT INTO `queues` VALUES (80,'39510',0,'2020-11-24 22:25:17','2020-11-24 22:25:24');
INSERT INTO `queues` VALUES (81,'39507',0,'2020-11-24 22:25:49','2020-11-24 22:26:10');
INSERT INTO `queues` VALUES (82,'39512',0,'2020-11-24 22:25:49','2020-11-24 22:26:40');
INSERT INTO `queues` VALUES (83,'39505',0,'2020-11-24 22:25:52','2020-11-24 22:27:28');
INSERT INTO `queues` VALUES (84,'39509',0,'2020-11-24 22:26:03','2020-11-24 22:27:33');
INSERT INTO `queues` VALUES (85,'39508',0,'2020-11-24 22:26:06','2020-11-24 22:27:43');
INSERT INTO `queues` VALUES (86,'39506',0,'2020-11-24 22:26:10','2020-11-24 22:27:50');
INSERT INTO `queues` VALUES (87,'39509',0,'2020-11-24 22:27:55','2020-11-24 22:27:57');
INSERT INTO `queues` VALUES (88,'39507',0,'2020-11-24 22:27:57','2020-11-24 22:28:01');
INSERT INTO `queues` VALUES (89,'39507',0,'2020-11-24 22:28:58','2020-11-24 22:29:16');
INSERT INTO `queues` VALUES (90,'39511',0,'2020-11-24 22:29:16','2020-11-24 22:29:33');
INSERT INTO `queues` VALUES (91,'39508',0,'2020-11-24 22:29:26','2020-11-24 22:29:51');
INSERT INTO `queues` VALUES (92,'39509',0,'2020-11-24 22:29:42','2020-11-24 22:29:55');
INSERT INTO `queues` VALUES (93,'39506',0,'2020-11-24 22:29:48','2020-11-24 22:30:25');
INSERT INTO `queues` VALUES (94,'39511',0,'2020-11-24 22:29:57','2020-11-24 22:30:05');
INSERT INTO `queues` VALUES (95,'39511',0,'2020-11-24 22:30:07','2020-11-24 22:30:09');
INSERT INTO `queues` VALUES (96,'39511',0,'2020-11-24 22:30:13','2020-11-24 22:30:26');
INSERT INTO `queues` VALUES (97,'39511',0,'2020-11-24 22:30:33','2020-11-24 22:30:35');
INSERT INTO `queues` VALUES (98,'39507',0,'2020-11-24 22:30:33','2020-11-24 22:30:39');
INSERT INTO `queues` VALUES (99,'39509',0,'2020-11-24 22:30:49','2020-11-24 22:30:52');
INSERT INTO `queues` VALUES (100,'39510',0,'2020-11-24 22:30:50','2020-11-24 22:30:59');
INSERT INTO `queues` VALUES (101,'39506',0,'2020-11-24 22:31:16','2020-11-24 22:31:18');
INSERT INTO `queues` VALUES (102,'39507',0,'2020-11-24 22:31:20','2020-11-24 22:31:26');
INSERT INTO `queues` VALUES (103,'39512',0,'2020-11-24 22:31:26','2020-11-24 22:31:31');
INSERT INTO `queues` VALUES (104,'39506',0,'2020-11-24 22:32:05','2020-11-24 22:32:26');
INSERT INTO `queues` VALUES (105,'39514',0,'2020-11-24 22:49:20','2020-11-24 22:49:27');
INSERT INTO `queues` VALUES (106,'39708',0,'2020-12-14 12:35:44','2020-12-14 12:35:44');
INSERT INTO `queues` VALUES (107,'39690',0,'2020-12-14 12:37:04','2020-12-14 12:37:04');
INSERT INTO `queues` VALUES (108,'39690',0,'2020-12-14 12:37:50','2020-12-14 12:37:50');
/*!40000 ALTER TABLE `queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'super_admin','web','2020-08-16 04:24:52','2020-08-24 02:35:34');
INSERT INTO `roles` VALUES (2,'admin','web','2020-08-25 03:28:15','2020-08-25 03:28:15');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rec_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_foreign` (`user_id`),
  CONSTRAINT `sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,1,'9049',3,'','2020-08-12 17:23:36','2020-08-12 17:23:36');
INSERT INTO `sessions` VALUES (2,3,'9049',3,'','2020-08-12 17:23:40','2020-08-12 17:23:40');
INSERT INTO `sessions` VALUES (3,3,'9049',3,'','2020-08-15 11:56:39','2020-08-15 11:56:39');
INSERT INTO `sessions` VALUES (4,1,'9049',3,'','2020-08-15 18:02:25','2020-08-15 18:02:25');
INSERT INTO `sessions` VALUES (5,1,'9049',3,'','2020-08-15 18:04:13','2020-08-15 18:04:13');
INSERT INTO `sessions` VALUES (6,1,'9049',3,'','2020-08-15 12:09:08','2020-08-15 12:09:08');
INSERT INTO `sessions` VALUES (7,1,'9049',3,'','2020-08-15 12:10:44','2020-08-15 12:10:44');
INSERT INTO `sessions` VALUES (8,1,'9049',3,'','2020-08-15 14:00:15','2020-08-15 14:00:15');
INSERT INTO `sessions` VALUES (9,1,'9049',3,'','2020-08-15 14:01:26','2020-08-15 14:01:26');
INSERT INTO `sessions` VALUES (10,1,'9049',3,'','2020-08-15 20:31:09','2020-08-15 20:31:09');
INSERT INTO `sessions` VALUES (11,1,'9049',3,'','2020-08-15 14:37:02','2020-08-15 14:37:02');
INSERT INTO `sessions` VALUES (12,1,'9049',3,'','2020-08-15 14:51:15','2020-08-15 14:51:15');
INSERT INTO `sessions` VALUES (13,1,'9049',3,'','2020-08-15 14:52:46','2020-08-15 14:52:46');
INSERT INTO `sessions` VALUES (14,1,'9049',3,'','2020-08-15 20:53:43','2020-08-15 20:53:43');
INSERT INTO `sessions` VALUES (15,2,'36924',2,'5cc3e28598e4fbe5146b7c48b2dda711612f797a2_2020-09-06-01-57-03.mp4','2020-08-16 18:24:36','2020-09-06 01:59:43');
INSERT INTO `sessions` VALUES (16,1,'9049',3,'','2020-08-31 09:11:02','2020-08-31 09:11:02');
INSERT INTO `sessions` VALUES (17,1,'9049',3,'','2020-09-02 15:10:21','2020-09-02 15:10:21');
INSERT INTO `sessions` VALUES (18,2,'9049',2,'c6149bd2987f6ccbd08e10f38418a1440b7a32972_2020-09-06-06-19-19.mp4','2020-09-06 00:19:11','2020-09-06 06:20:10');
INSERT INTO `sessions` VALUES (19,2,'9049',2,'c6149bd2987f6ccbd08e10f38418a1440b7a32972_2020-09-06-06-24-29.mp4','2020-09-06 06:24:25','2020-09-06 06:24:53');
INSERT INTO `sessions` VALUES (20,1,'9049',2,'c36f917a1bafc37214a66d02c1246c372503b6761_2020-09-28-02-27-25.mp4','2020-09-28 02:27:20','2020-09-28 02:32:14');
INSERT INTO `sessions` VALUES (21,1,'9049',2,'c36f917a1bafc37214a66d02c1246c372503b6761_2020-09-28-05-00-54.mp4','2020-09-27 23:00:48','2020-09-27 23:01:36');
INSERT INTO `sessions` VALUES (22,1,'9049',2,'c36f917a1bafc37214a66d02c1246c372503b6761_2020-09-28-05-07-42.mp4','2020-09-27 23:07:37','2020-09-27 23:19:28');
INSERT INTO `sessions` VALUES (23,1,'38738',3,'','2020-10-05 22:02:56','2020-10-05 22:02:56');
INSERT INTO `sessions` VALUES (24,1,'38738',2,'bfee7bd99126b91300967fd9c55af9f84352a9291_2020-10-06-04-05-29.mp4','2020-10-05 22:05:23','2020-10-05 22:07:22');
INSERT INTO `sessions` VALUES (25,1,'38738',2,'eb6e6e3f34a93720590273c80f322cfd8befab6e1_2020-10-07-04-52-07.mp4','2020-10-06 22:38:51','2020-10-06 22:52:50');
INSERT INTO `sessions` VALUES (26,1,'38738',2,'eb6e6e3f34a93720590273c80f322cfd8befab6e1_2020-10-07-04-41-28.mp4','2020-10-06 22:41:24','2020-10-06 22:43:45');
INSERT INTO `sessions` VALUES (27,1,'38738',2,'eb6e6e3f34a93720590273c80f322cfd8befab6e1_2020-10-07-04-46-51.mp4','2020-10-06 22:46:47','2020-10-06 22:47:54');
INSERT INTO `sessions` VALUES (28,1,'38738',2,'eb6e6e3f34a93720590273c80f322cfd8befab6e1_2020-10-07-04-53-55.mp4','2020-10-06 22:53:51','2020-10-06 23:00:47');
INSERT INTO `sessions` VALUES (29,1,'38828',2,'78f4377b36195231611e0e22115c7273146529231_2020-10-09-16-31-32.mp4','2020-10-09 10:31:26','2020-10-09 10:31:52');
INSERT INTO `sessions` VALUES (30,1,'38828',2,'78f4377b36195231611e0e22115c7273146529231_2020-10-09-16-32-23.mp4','2020-10-09 10:32:19','2020-10-09 10:33:01');
INSERT INTO `sessions` VALUES (31,9,'38828',2,'59546f399a73d9948ce217503a386d1030409c409_2020-10-09-17-04-44.mp4','2020-10-09 11:04:39','2020-10-09 11:05:32');
INSERT INTO `sessions` VALUES (32,10,'38830',3,'','2020-10-09 15:19:57','2020-10-09 15:19:57');
INSERT INTO `sessions` VALUES (33,10,'38867',2,'8ff627c0ea5a83227c63c654d7b57ea5139460f610_2020-10-09-22-33-58.mp4','2020-10-09 16:33:52','2020-10-09 16:36:42');
INSERT INTO `sessions` VALUES (34,11,'38876',1,'','2020-10-09 16:33:53','2020-10-09 16:37:08');
INSERT INTO `sessions` VALUES (35,12,'38873',2,'108ad250ac1ebbdc761c3c10831d3644c14b2b3a12_2020-10-09-22-34-02.mp4','2020-10-09 16:33:53','2020-10-09 16:35:15');
INSERT INTO `sessions` VALUES (36,13,'38868',3,'','2020-10-09 16:33:56','2020-10-09 16:33:56');
INSERT INTO `sessions` VALUES (37,14,'38868',3,'','2020-10-09 16:33:56','2020-10-09 16:33:56');
INSERT INTO `sessions` VALUES (38,15,'38870',3,'','2020-10-09 16:33:57','2020-10-09 16:33:57');
INSERT INTO `sessions` VALUES (39,16,'38875',3,'','2020-10-09 16:34:09','2020-10-09 16:34:09');
INSERT INTO `sessions` VALUES (40,17,'38868',3,'','2020-10-09 16:34:21','2020-10-09 16:34:21');
INSERT INTO `sessions` VALUES (41,18,'38878',3,'','2020-10-09 16:34:30','2020-10-09 16:34:30');
INSERT INTO `sessions` VALUES (42,19,'38870',2,'85242f758e6e6cd80bd207fcc27297030d4259a419_2020-10-09-22-34-36.mp4','2020-10-09 16:34:32','2020-10-09 16:35:43');
INSERT INTO `sessions` VALUES (43,12,'38877',3,'','2020-10-09 16:35:16','2020-10-09 16:35:16');
INSERT INTO `sessions` VALUES (44,19,'38738',3,'','2020-10-09 16:35:44','2020-10-09 16:35:44');
INSERT INTO `sessions` VALUES (45,12,'38878',3,'','2020-10-09 16:35:47','2020-10-09 16:35:47');
INSERT INTO `sessions` VALUES (46,19,'38875',3,'','2020-10-09 16:36:15','2020-10-09 16:36:15');
INSERT INTO `sessions` VALUES (47,12,'38868',3,'','2020-10-09 16:36:18','2020-10-09 16:36:18');
INSERT INTO `sessions` VALUES (48,10,'38874',3,'','2020-10-09 16:36:43','2020-10-09 16:36:43');
INSERT INTO `sessions` VALUES (49,12,'38738',2,'108ad250ac1ebbdc761c3c10831d3644c14b2b3a12_2020-10-09-22-36-58.mp4','2020-10-09 16:36:53','2020-10-09 16:37:41');
INSERT INTO `sessions` VALUES (50,10,'38878',2,'8ff627c0ea5a83227c63c654d7b57ea5139460f610_2020-10-09-22-37-28.mp4','2020-10-09 16:37:22','2020-10-09 16:38:34');
INSERT INTO `sessions` VALUES (51,11,'38875',2,'37ff2855012ac782c77a397db5064b6ab6d6349611_2020-10-09-22-37-29.mp4','2020-10-09 16:37:25','2020-10-09 16:38:32');
INSERT INTO `sessions` VALUES (52,10,'38877',2,'8ff627c0ea5a83227c63c654d7b57ea5139460f610_2020-10-09-22-39-01.mp4','2020-10-09 16:38:50','2020-10-09 16:40:04');
INSERT INTO `sessions` VALUES (53,11,'38828',2,'37ff2855012ac782c77a397db5064b6ab6d6349611_2020-10-09-22-39-10.mp4','2020-10-09 16:39:05','2020-10-09 16:39:23');
INSERT INTO `sessions` VALUES (54,10,'38874',2,'8ff627c0ea5a83227c63c654d7b57ea5139460f610_2020-10-09-22-47-41.mp4','2020-10-09 16:47:35','2020-10-09 16:48:21');
INSERT INTO `sessions` VALUES (55,10,'38828',2,'8ff627c0ea5a83227c63c654d7b57ea5139460f610_2020-10-09-22-48-57.mp4','2020-10-09 16:48:54','2020-10-09 16:50:50');
INSERT INTO `sessions` VALUES (56,11,'38870',2,'37ff2855012ac782c77a397db5064b6ab6d6349611_2020-10-09-22-49-40.mp4','2020-10-09 16:49:35','2020-10-09 16:50:52');
INSERT INTO `sessions` VALUES (57,10,'38891',3,'','2020-10-10 14:57:15','2020-10-10 14:57:15');
INSERT INTO `sessions` VALUES (58,1,'38867',2,'f2f634044d4781bc71a3e6d9f7c4aa02c37c7d6a1_2020-10-15-00-22-00.mp4','2020-10-14 18:21:54','2020-10-14 18:22:15');
INSERT INTO `sessions` VALUES (59,1,'38876',3,'','2020-10-17 16:03:06','2020-10-17 16:03:06');
INSERT INTO `sessions` VALUES (60,10,'38873',3,'','2020-10-17 16:03:08','2020-10-17 16:03:08');
INSERT INTO `sessions` VALUES (61,11,'38870',2,'20715cd0c34de52d311116169aaa1e02a4c05c0111_2020-10-17-22-03-15.mp4','2020-10-17 16:03:09','2020-10-17 16:12:22');
INSERT INTO `sessions` VALUES (62,12,'38876',3,'','2020-10-17 16:07:27','2020-10-17 16:07:27');
INSERT INTO `sessions` VALUES (63,13,'38873',2,'7dc020e189e496f92fe4a19580bfa6c2e5a360f713_2020-10-17-22-07-31.mp4','2020-10-17 16:07:28','2020-10-17 16:12:19');
INSERT INTO `sessions` VALUES (64,19,'38876',3,'','2020-10-17 16:08:20','2020-10-17 16:08:20');
INSERT INTO `sessions` VALUES (65,10,'38876',2,'0370b1d434884cfab53d9ab7df7925d828f6027210_2020-10-17-22-14-27.mp4','2020-10-17 16:14:23','2020-10-17 16:42:18');
INSERT INTO `sessions` VALUES (66,11,'38873',2,'20715cd0c34de52d311116169aaa1e02a4c05c0111_2020-10-17-22-14-28.mp4','2020-10-17 16:14:23','2020-10-17 16:42:13');
INSERT INTO `sessions` VALUES (67,13,'38870',2,'7dc020e189e496f92fe4a19580bfa6c2e5a360f713_2020-10-17-22-14-30.mp4','2020-10-17 16:14:25','2020-10-17 16:42:10');
INSERT INTO `sessions` VALUES (68,14,'38738',2,'b605e1e023ce9b2de5c20e41cf3e617631b1b2b014_2020-10-17-22-17-11.mp4','2020-10-17 16:17:07','2020-10-17 16:18:07');
INSERT INTO `sessions` VALUES (69,14,'38738',3,'','2020-10-17 16:20:31','2020-10-17 16:20:31');
INSERT INTO `sessions` VALUES (70,10,'38738',2,'0370b1d434884cfab53d9ab7df7925d828f6027210_2020-10-17-23-21-13.mp4','2020-10-17 17:21:03','2020-10-17 17:25:30');
INSERT INTO `sessions` VALUES (71,10,'38873',3,'','2020-10-17 17:54:05','2020-10-17 17:54:05');
INSERT INTO `sessions` VALUES (72,11,'38876',2,'20715cd0c34de52d311116169aaa1e02a4c05c0111_2020-10-17-23-54-12.mp4','2020-10-17 17:54:08','2020-10-17 18:07:01');
INSERT INTO `sessions` VALUES (73,13,'38870',2,'7dc020e189e496f92fe4a19580bfa6c2e5a360f713_2020-10-17-23-54-25.mp4','2020-10-17 17:54:12','2020-10-17 18:05:03');
INSERT INTO `sessions` VALUES (74,14,'38987',3,'','2020-10-17 17:54:47','2020-10-17 17:54:47');
INSERT INTO `sessions` VALUES (75,14,'38985',3,'','2020-10-17 17:55:21','2020-10-17 17:55:21');
INSERT INTO `sessions` VALUES (76,18,'38988',3,'','2020-10-17 17:55:25','2020-10-17 17:55:25');
INSERT INTO `sessions` VALUES (77,14,'38990',3,'','2020-10-17 17:58:43','2020-10-17 17:58:43');
INSERT INTO `sessions` VALUES (78,15,'38990',2,'e191008fec96d7beec1a9e0e7e06138ef7b032c715_2020-10-18-13-39-35.mp4','2020-10-17 18:00:18','2020-10-18 07:50:55');
INSERT INTO `sessions` VALUES (79,10,'38873',3,'','2020-10-18 07:36:17','2020-10-18 07:36:17');
INSERT INTO `sessions` VALUES (80,11,'38876',2,'b67376f363d4d62b85f88f2e7e6968215f5b694d11_2020-10-18-13-38-28.mp4','2020-10-18 07:38:12','2020-10-18 07:51:02');
INSERT INTO `sessions` VALUES (81,12,'38985',3,'','2020-10-18 07:38:30','2020-10-18 07:38:30');
INSERT INTO `sessions` VALUES (82,13,'38987',2,'8621dbc5101b00eaca1994b055616e94e7e669b613_2020-10-18-13-38-58.mp4','2020-10-18 07:38:50','2020-10-18 07:48:33');
INSERT INTO `sessions` VALUES (83,14,'38870',3,'','2020-10-18 07:39:13','2020-10-18 07:39:13');
INSERT INTO `sessions` VALUES (84,15,'38988',1,'','2020-10-18 07:39:27','2020-10-18 07:50:56');
INSERT INTO `sessions` VALUES (85,16,'38990',3,'','2020-10-18 07:40:09','2020-10-18 07:40:09');
INSERT INTO `sessions` VALUES (86,18,'38873',2,'4bacedddda686229936bc63a2a3f169f912a2c7d18_2020-10-18-13-46-13.mp4','2020-10-18 07:46:04','2020-10-18 07:50:43');
INSERT INTO `sessions` VALUES (87,19,'38985',3,'','2020-10-18 07:47:23','2020-10-18 07:47:23');
INSERT INTO `sessions` VALUES (88,13,'38985',3,'','2020-10-18 07:48:35','2020-10-18 07:48:35');
INSERT INTO `sessions` VALUES (89,10,'38873',2,'79db3b03bea52d7bbe22d53c138e0646b33b264610_2020-10-18-14-42-50.mp4','2020-10-18 08:42:46','2020-10-18 08:43:16');
INSERT INTO `sessions` VALUES (90,10,'38985',3,'','2020-10-18 08:43:17','2020-10-18 08:43:17');
INSERT INTO `sessions` VALUES (91,10,'38985',3,'','2020-10-18 08:46:59','2020-10-18 08:46:59');
INSERT INTO `sessions` VALUES (92,10,'38985',3,'','2020-10-18 08:50:35','2020-10-18 08:50:35');
INSERT INTO `sessions` VALUES (93,10,'38738',2,'79db3b03bea52d7bbe22d53c138e0646b33b264610_2020-10-18-14-52-53.mp4','2020-10-18 08:52:47','2020-10-18 08:53:47');
INSERT INTO `sessions` VALUES (94,10,'38875',3,'','2020-10-18 09:00:24','2020-10-18 09:00:24');
INSERT INTO `sessions` VALUES (95,10,'38738',3,'','2020-10-18 09:58:06','2020-10-18 09:58:06');
INSERT INTO `sessions` VALUES (96,1,'39008',2,'f58e9f5f0c8530adadcfc6303d3e4cc0926bad051_2020-10-19-03-44-49.mp4','2020-10-18 21:44:44','2020-10-18 21:44:54');
INSERT INTO `sessions` VALUES (97,1,'39008',2,'f58e9f5f0c8530adadcfc6303d3e4cc0926bad051_2020-10-19-03-45-47.mp4','2020-10-18 21:45:45','2020-10-18 21:45:52');
INSERT INTO `sessions` VALUES (98,1,'39008',3,'','2020-10-18 21:46:56','2020-10-18 21:46:56');
INSERT INTO `sessions` VALUES (99,1,'39008',3,'','2020-10-18 21:53:18','2020-10-18 21:53:18');
INSERT INTO `sessions` VALUES (100,1,'39008',2,'f58e9f5f0c8530adadcfc6303d3e4cc0926bad051_2020-10-19-03-54-00.mp4','2020-10-18 21:53:54','2020-10-18 21:54:09');
INSERT INTO `sessions` VALUES (101,1,'39008',2,'f58e9f5f0c8530adadcfc6303d3e4cc0926bad051_2020-10-19-03-57-14.mp4','2020-10-18 21:57:11','2020-10-18 21:58:13');
INSERT INTO `sessions` VALUES (102,1,'39008',2,'f58e9f5f0c8530adadcfc6303d3e4cc0926bad051_2020-10-19-03-58-42.mp4','2020-10-18 21:58:39','2020-10-18 21:58:52');
INSERT INTO `sessions` VALUES (103,1,'39008',2,'f58e9f5f0c8530adadcfc6303d3e4cc0926bad051_2020-10-19-03-59-34.mp4','2020-10-18 21:59:31','2020-10-18 21:59:55');
INSERT INTO `sessions` VALUES (104,1,'39008',2,'f58e9f5f0c8530adadcfc6303d3e4cc0926bad051_2020-10-19-04-00-50.mp4','2020-10-18 22:00:46','2020-10-18 22:00:54');
INSERT INTO `sessions` VALUES (105,1,'39008',2,'f58e9f5f0c8530adadcfc6303d3e4cc0926bad051_2020-10-19-04-01-20.mp4','2020-10-18 22:01:17','2020-10-18 22:01:36');
INSERT INTO `sessions` VALUES (106,1,'39008',2,'f58e9f5f0c8530adadcfc6303d3e4cc0926bad051_2020-10-19-04-04-12.mp4','2020-10-18 22:04:09','2020-10-18 22:04:29');
INSERT INTO `sessions` VALUES (107,1,'39008',2,'f58e9f5f0c8530adadcfc6303d3e4cc0926bad051_2020-10-19-04-05-19.mp4','2020-10-18 22:05:17','2020-10-18 22:05:45');
INSERT INTO `sessions` VALUES (108,1,'39008',3,'','2020-10-18 22:06:36','2020-10-18 22:06:36');
INSERT INTO `sessions` VALUES (109,1,'39008',3,'f58e9f5f0c8530adadcfc6303d3e4cc0926bad051_2020-10-19-04-07-58.mp4','2020-10-18 22:07:55','2020-10-18 22:08:03');
INSERT INTO `sessions` VALUES (110,10,'39025',3,'','2020-10-19 16:09:15','2020-10-19 16:09:15');
INSERT INTO `sessions` VALUES (111,18,'39022',3,'','2020-10-19 16:09:34','2020-10-19 16:09:34');
INSERT INTO `sessions` VALUES (112,19,'39021',2,'568d3a9ca195891c3ab4bf0d565f3a31450049dc19_2020-10-19-22-09-43.mp4','2020-10-19 16:09:35','2020-10-19 16:10:08');
INSERT INTO `sessions` VALUES (113,22,'39022',3,'','2020-10-19 16:09:37','2020-10-19 16:09:37');
INSERT INTO `sessions` VALUES (114,23,'39025',2,'312107fa61d879c6d95c99036b915bee0de148d823_2020-10-19-22-09-49.mp4','2020-10-19 16:09:45','2020-10-19 16:10:13');
INSERT INTO `sessions` VALUES (115,24,'39022',2,'a29b975b9609fccbb888046d78db60a149d0b6ac24_2020-10-19-22-09-49.mp4','2020-10-19 16:09:45','2020-10-19 16:11:04');
INSERT INTO `sessions` VALUES (116,10,'38877',2,'fe882b53e864672306c2e9521439ca486b7fc86610_2020-10-19-22-10-13.mp4','2020-10-19 16:10:03','2020-10-19 16:15:20');
INSERT INTO `sessions` VALUES (117,19,'39023',2,'568d3a9ca195891c3ab4bf0d565f3a31450049dc19_2020-10-19-22-10-14.mp4','2020-10-19 16:10:09','2020-10-19 16:10:42');
INSERT INTO `sessions` VALUES (118,23,'39024',3,'','2020-10-19 16:10:15','2020-10-19 16:10:45');
INSERT INTO `sessions` VALUES (119,19,'39021',2,'568d3a9ca195891c3ab4bf0d565f3a31450049dc19_2020-10-19-22-10-46.mp4','2020-10-19 16:10:44','2020-10-19 16:11:58');
INSERT INTO `sessions` VALUES (120,23,'39025',2,'312107fa61d879c6d95c99036b915bee0de148d823_2020-10-19-22-10-53.mp4','2020-10-19 16:10:50','2020-10-19 16:11:23');
INSERT INTO `sessions` VALUES (121,24,'39024',2,'a29b975b9609fccbb888046d78db60a149d0b6ac24_2020-10-19-22-11-09.mp4','2020-10-19 16:11:06','2020-10-19 16:11:59');
INSERT INTO `sessions` VALUES (122,18,'39025',2,'e195ac2d705e6dde4f43480f55a058478332bc5d18_2020-10-19-22-11-40.mp4','2020-10-19 16:11:36','2020-10-19 16:12:02');
INSERT INTO `sessions` VALUES (123,18,'39025',2,'e195ac2d705e6dde4f43480f55a058478332bc5d18_2020-10-19-22-12-32.mp4','2020-10-19 16:12:28','2020-10-19 16:14:09');
INSERT INTO `sessions` VALUES (124,19,'38873',2,'568d3a9ca195891c3ab4bf0d565f3a31450049dc19_2020-10-19-22-12-59.mp4','2020-10-19 16:12:51','2020-10-19 16:13:31');
INSERT INTO `sessions` VALUES (125,22,'39021',2,'f5c3baa65f4b5d9752e076a9caaf3a636ae70d3222_2020-10-19-22-13-03.mp4','2020-10-19 16:12:57','2020-10-19 16:14:16');
INSERT INTO `sessions` VALUES (126,23,'38985',3,'','2020-10-19 16:12:58','2020-10-19 16:12:58');
INSERT INTO `sessions` VALUES (127,24,'38870',3,'','2020-10-19 16:13:06','2020-10-19 16:13:06');
INSERT INTO `sessions` VALUES (128,10,'38985',3,'','2020-10-19 16:13:53','2020-10-19 16:13:53');
INSERT INTO `sessions` VALUES (129,19,'38870',2,'568d3a9ca195891c3ab4bf0d565f3a31450049dc19_2020-10-19-22-14-04.mp4','2020-10-19 16:13:57','2020-10-19 16:14:43');
INSERT INTO `sessions` VALUES (130,10,'39020',2,'fe882b53e864672306c2e9521439ca486b7fc86610_2020-10-19-22-15-30.mp4','2020-10-19 16:15:45','2020-10-19 16:16:45');
INSERT INTO `sessions` VALUES (131,18,'39025',2,'e195ac2d705e6dde4f43480f55a058478332bc5d18_2020-10-19-22-16-04.mp4','2020-10-19 16:16:01','2020-10-19 16:17:02');
INSERT INTO `sessions` VALUES (132,19,'39024',2,'568d3a9ca195891c3ab4bf0d565f3a31450049dc19_2020-10-19-22-16-17.mp4','2020-10-19 16:16:11','2020-10-19 16:16:56');
INSERT INTO `sessions` VALUES (133,22,'39021',2,'f5c3baa65f4b5d9752e076a9caaf3a636ae70d3222_2020-10-19-22-16-20.mp4','2020-10-19 16:16:15','2020-10-19 16:16:31');
INSERT INTO `sessions` VALUES (134,23,'39020',2,'312107fa61d879c6d95c99036b915bee0de148d823_2020-10-19-22-16-32.mp4','2020-10-19 16:16:27','2020-10-19 16:17:58');
INSERT INTO `sessions` VALUES (135,24,'38873',2,'a29b975b9609fccbb888046d78db60a149d0b6ac24_2020-10-19-22-16-35.mp4','2020-10-19 16:16:30','2020-10-19 16:17:30');
INSERT INTO `sessions` VALUES (136,22,'39021',2,'f5c3baa65f4b5d9752e076a9caaf3a636ae70d3222_2020-10-19-22-16-42.mp4','2020-10-19 16:16:35','2020-10-19 16:26:29');
INSERT INTO `sessions` VALUES (137,10,'38985',2,'fe882b53e864672306c2e9521439ca486b7fc86610_2020-10-19-22-17-02.mp4','2020-10-19 16:16:40','2020-10-19 16:19:05');
INSERT INTO `sessions` VALUES (138,19,'38870',2,'568d3a9ca195891c3ab4bf0d565f3a31450049dc19_2020-10-19-22-17-06.mp4','2020-10-19 16:16:59','2020-10-19 16:18:25');
INSERT INTO `sessions` VALUES (139,18,'38877',2,'e195ac2d705e6dde4f43480f55a058478332bc5d18_2020-10-19-22-17-38.mp4','2020-10-19 16:17:31','2020-10-19 16:18:43');
INSERT INTO `sessions` VALUES (140,24,'39023',2,'a29b975b9609fccbb888046d78db60a149d0b6ac24_2020-10-19-22-17-43.mp4','2020-10-19 16:17:38','2020-10-19 16:18:33');
INSERT INTO `sessions` VALUES (141,23,'38873',2,'312107fa61d879c6d95c99036b915bee0de148d823_2020-10-19-22-18-02.mp4','2020-10-19 16:17:58','2020-10-19 16:18:17');
INSERT INTO `sessions` VALUES (142,23,'38985',3,'','2020-10-19 16:18:18','2020-10-19 16:18:28');
INSERT INTO `sessions` VALUES (143,19,'39024',3,'','2020-10-19 16:18:26','2020-10-19 16:18:57');
INSERT INTO `sessions` VALUES (144,10,'39025',2,'fe882b53e864672306c2e9521439ca486b7fc86610_2020-10-19-22-21-02.mp4','2020-10-19 16:20:48','2020-10-19 16:21:41');
INSERT INTO `sessions` VALUES (145,18,'38873',2,'e195ac2d705e6dde4f43480f55a058478332bc5d18_2020-10-19-22-21-35.mp4','2020-10-19 16:21:30','2020-10-19 16:23:12');
INSERT INTO `sessions` VALUES (146,10,'39025',3,'','2020-10-19 16:21:41','2020-10-19 16:21:41');
INSERT INTO `sessions` VALUES (147,19,'38870',2,'568d3a9ca195891c3ab4bf0d565f3a31450049dc19_2020-10-19-22-21-48.mp4','2020-10-19 16:21:41','2020-10-19 16:22:38');
INSERT INTO `sessions` VALUES (148,23,'39024',3,'','2020-10-19 16:22:03','2020-10-19 16:22:03');
INSERT INTO `sessions` VALUES (149,24,'38985',2,'a29b975b9609fccbb888046d78db60a149d0b6ac24_2020-10-19-22-22-24.mp4','2020-10-19 16:22:14','2020-10-19 16:23:07');
INSERT INTO `sessions` VALUES (150,19,'39024',2,'568d3a9ca195891c3ab4bf0d565f3a31450049dc19_2020-10-19-22-22-45.mp4','2020-10-19 16:22:39','2020-10-19 16:23:03');
INSERT INTO `sessions` VALUES (151,10,'39025',2,'fe882b53e864672306c2e9521439ca486b7fc86610_2020-10-19-22-23-02.mp4','2020-10-19 16:22:53','2020-10-19 16:23:18');
INSERT INTO `sessions` VALUES (152,1,'39024',2,'47db7bdd9ca6748da9b3694844172ce14e0229f81_2020-10-23-04-37-49.mp4','2020-10-22 22:37:44','2020-10-22 22:38:28');
INSERT INTO `sessions` VALUES (153,1,'39022',3,'','2020-10-31 22:05:33','2020-10-31 22:06:04');
INSERT INTO `sessions` VALUES (154,1,'39025',2,'91d0e53dc8a0a7c9148a87b496b109229e7989a81_2020-10-31-22-06-13.mp4','2020-10-31 22:06:06','2020-10-31 22:06:22');
INSERT INTO `sessions` VALUES (155,1,'39025',2,'a35e76129875245a868be67d947f3d87e52763df1_2020-11-14-21-10-34.mp4','2020-11-14 21:10:29','2020-11-14 21:10:50');
INSERT INTO `sessions` VALUES (156,1,'39025',2,'a35e76129875245a868be67d947f3d87e52763df1_2020-11-14-21-10-53.mp4','2020-11-14 21:10:51','2020-11-14 21:11:06');
INSERT INTO `sessions` VALUES (157,1,'39500',2,'cefc63b11c6b5e5acf7becfeaa515273ccf8862d1_2020-11-24-17-54-46.mp4','2020-11-24 17:54:36','2020-11-24 17:55:32');
INSERT INTO `sessions` VALUES (158,1,'39500',2,'cefc63b11c6b5e5acf7becfeaa515273ccf8862d1_2020-11-24-17-57-01.mp4','2020-11-24 17:56:56','2020-11-24 17:57:52');
INSERT INTO `sessions` VALUES (159,9,'39500',2,'90c20c363a31f39a8ec40e416efdcad34ac46dba9_2020-11-24-18-05-26.mp4','2020-11-24 18:05:19','2020-11-24 18:05:56');
INSERT INTO `sessions` VALUES (160,9,'39025',3,'','2020-11-24 18:41:27','2020-11-24 18:41:27');
INSERT INTO `sessions` VALUES (161,9,'39025',2,'90c20c363a31f39a8ec40e416efdcad34ac46dba9_2020-11-24-18-45-30.mp4','2020-11-24 18:45:15','2020-11-24 18:45:42');
INSERT INTO `sessions` VALUES (162,1,'39025',3,'','2020-11-24 18:46:24','2020-11-24 18:46:24');
INSERT INTO `sessions` VALUES (163,9,'39025',2,'90c20c363a31f39a8ec40e416efdcad34ac46dba9_2020-11-24-18-46-46.mp4','2020-11-24 18:46:37','2020-11-24 18:47:11');
INSERT INTO `sessions` VALUES (164,9,'39500',2,'90c20c363a31f39a8ec40e416efdcad34ac46dba9_2020-11-24-18-47-15.mp4','2020-11-24 18:47:09','2020-11-24 18:47:29');
INSERT INTO `sessions` VALUES (165,9,'39511',3,'','2020-11-24 22:12:55','2020-11-24 22:12:55');
INSERT INTO `sessions` VALUES (166,10,'39511',3,'','2020-11-24 22:13:24','2020-11-24 22:13:24');
INSERT INTO `sessions` VALUES (167,9,'39511',3,'','2020-11-24 22:14:08','2020-11-24 22:14:08');
INSERT INTO `sessions` VALUES (168,10,'39511',3,'','2020-11-24 22:14:25','2020-11-24 22:14:25');
INSERT INTO `sessions` VALUES (169,11,'39511',3,'','2020-11-24 22:14:55','2020-11-24 22:14:55');
INSERT INTO `sessions` VALUES (170,9,'39511',3,'','2020-11-24 22:15:34','2020-11-24 22:15:34');
INSERT INTO `sessions` VALUES (171,12,'39505',3,'','2020-11-24 22:16:48','2020-11-24 22:16:48');
INSERT INTO `sessions` VALUES (172,13,'39505',3,'','2020-11-24 22:16:51','2020-11-24 22:16:51');
INSERT INTO `sessions` VALUES (173,14,'39505',3,'','2020-11-24 22:17:04','2020-11-24 22:17:04');
INSERT INTO `sessions` VALUES (174,9,'39505',3,'','2020-11-24 22:17:06','2020-11-24 22:17:06');
INSERT INTO `sessions` VALUES (175,16,'39505',3,'','2020-11-24 22:17:12','2020-11-24 22:17:12');
INSERT INTO `sessions` VALUES (176,18,'39505',3,'','2020-11-24 22:17:14','2020-11-24 22:17:14');
INSERT INTO `sessions` VALUES (177,9,'39511',3,'','2020-11-24 22:19:09','2020-11-24 22:19:09');
INSERT INTO `sessions` VALUES (178,23,'39511',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-20-43.mp4','2020-11-24 22:20:38','2020-11-24 22:20:57');
INSERT INTO `sessions` VALUES (179,23,'39511',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-21-32.mp4','2020-11-24 22:21:28','2020-11-24 22:22:57');
INSERT INTO `sessions` VALUES (180,23,'39510',3,'','2020-11-24 22:24:13','2020-11-24 22:24:13');
INSERT INTO `sessions` VALUES (181,23,'39511',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-25-14.mp4','2020-11-24 22:25:08','2020-11-24 22:26:10');
INSERT INTO `sessions` VALUES (182,27,'39510',2,'22fa59fa911d4d66c8f723c98b29591d0d8f754d27_2020-11-24-22-25-29.mp4','2020-11-24 22:25:27','2020-11-24 22:26:41');
INSERT INTO `sessions` VALUES (183,23,'39507',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-26-15.mp4','2020-11-24 22:26:12','2020-11-24 22:27:51');
INSERT INTO `sessions` VALUES (184,27,'39512',2,'22fa59fa911d4d66c8f723c98b29591d0d8f754d27_2020-11-24-22-26-49.mp4','2020-11-24 22:26:43','2020-11-24 22:27:28');
INSERT INTO `sessions` VALUES (185,27,'39505',2,'22fa59fa911d4d66c8f723c98b29591d0d8f754d27_2020-11-24-22-26-49.mp4','2020-11-24 22:27:30','2020-11-24 22:27:34');
INSERT INTO `sessions` VALUES (186,27,'39509',2,'22fa59fa911d4d66c8f723c98b29591d0d8f754d27_2020-11-24-22-27-35.mp4','2020-11-24 22:27:36','2020-11-24 22:27:58');
INSERT INTO `sessions` VALUES (187,29,'39508',2,'46d69c86e95823d8469a5940718eee302440954229_2020-11-24-22-27-49.mp4','2020-11-24 22:27:45','2020-11-24 22:29:16');
INSERT INTO `sessions` VALUES (188,23,'39506',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-27-57.mp4','2020-11-24 22:27:52','2020-11-24 22:29:34');
INSERT INTO `sessions` VALUES (189,27,'39509',3,'','2020-11-24 22:28:00','2020-11-24 22:28:00');
INSERT INTO `sessions` VALUES (190,27,'39507',2,'22fa59fa911d4d66c8f723c98b29591d0d8f754d27_2020-11-24-22-28-05.mp4','2020-11-24 22:28:03','2020-11-24 22:28:56');
INSERT INTO `sessions` VALUES (191,27,'39510',2,'22fa59fa911d4d66c8f723c98b29591d0d8f754d27_2020-11-24-22-29-03.mp4','2020-11-24 22:28:59','2020-11-24 22:29:56');
INSERT INTO `sessions` VALUES (192,29,'39507',2,'46d69c86e95823d8469a5940718eee302440954229_2020-11-24-22-29-20.mp4','2020-11-24 22:29:18','2020-11-24 22:30:27');
INSERT INTO `sessions` VALUES (193,23,'39511',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-29-38.mp4','2020-11-24 22:29:35','2020-11-24 22:29:52');
INSERT INTO `sessions` VALUES (194,23,'39508',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-29-55.mp4','2020-11-24 22:29:53','2020-11-24 22:30:26');
INSERT INTO `sessions` VALUES (195,27,'39509',2,'22fa59fa911d4d66c8f723c98b29591d0d8f754d27_2020-11-24-22-30-00.mp4','2020-11-24 22:29:58','2020-11-24 22:30:40');
INSERT INTO `sessions` VALUES (196,23,'39506',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-30-29.mp4','2020-11-24 22:30:28','2020-11-24 22:30:53');
INSERT INTO `sessions` VALUES (197,29,'39511',3,'','2020-11-24 22:30:29','2020-11-24 22:30:59');
INSERT INTO `sessions` VALUES (198,12,'39505',2,'78ee8d9f9aa3709d8f2dc4f1cb46f8310541bfa012_2020-11-24-22-30-35.mp4','2020-11-24 22:30:31','2020-11-24 22:31:56');
INSERT INTO `sessions` VALUES (199,27,'39507',2,'22fa59fa911d4d66c8f723c98b29591d0d8f754d27_2020-11-24-22-30-43.mp4','2020-11-24 22:30:41','2020-11-24 22:31:19');
INSERT INTO `sessions` VALUES (200,19,'39508',2,'cf7a43a859051009be45c35c2ca5c6d7b7339cbd19_2020-11-24-22-33-18.mp4','2020-11-24 22:30:47','2020-12-01 07:03:49');
INSERT INTO `sessions` VALUES (201,23,'39509',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-30-56.mp4','2020-11-24 22:30:55','2020-11-24 22:31:32');
INSERT INTO `sessions` VALUES (202,29,'39510',2,'46d69c86e95823d8469a5940718eee302440954229_2020-11-24-22-31-03.mp4','2020-11-24 22:31:02','2020-11-24 22:32:01');
INSERT INTO `sessions` VALUES (203,27,'39506',2,'22fa59fa911d4d66c8f723c98b29591d0d8f754d27_2020-11-24-22-31-22.mp4','2020-11-24 22:31:20','2020-11-24 22:31:59');
INSERT INTO `sessions` VALUES (204,19,'39507',2,'cf7a43a859051009be45c35c2ca5c6d7b7339cbd19_2020-11-24-22-31-28.mp4','2020-11-24 22:31:29','2020-11-24 22:33:18');
INSERT INTO `sessions` VALUES (205,23,'39512',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-31-37.mp4','2020-11-24 22:31:34','2020-11-24 22:32:27');
INSERT INTO `sessions` VALUES (206,12,'39509',2,'78ee8d9f9aa3709d8f2dc4f1cb46f8310541bfa012_2020-11-24-22-32-04.mp4','2020-11-24 22:32:01','2020-11-24 22:33:13');
INSERT INTO `sessions` VALUES (207,27,'39507',2,'22fa59fa911d4d66c8f723c98b29591d0d8f754d27_2020-11-24-22-32-06.mp4','2020-11-24 22:32:02','2020-11-24 22:33:41');
INSERT INTO `sessions` VALUES (208,29,'39508',1,'','2020-11-24 22:32:04','2020-11-24 22:32:06');
INSERT INTO `sessions` VALUES (209,23,'39506',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-32-29.mp4','2020-11-24 22:32:28','2020-11-24 22:32:46');
INSERT INTO `sessions` VALUES (210,12,'39507',2,'78ee8d9f9aa3709d8f2dc4f1cb46f8310541bfa012_2020-11-24-22-33-49.mp4','2020-11-24 22:33:45','2020-11-24 22:36:17');
INSERT INTO `sessions` VALUES (211,12,'39506',3,'','2020-11-24 22:36:34','2020-11-24 22:36:34');
INSERT INTO `sessions` VALUES (212,13,'39512',2,'a9fbeca4d93901adb7cf18c2ab72f4ab6ded682313_2020-11-24-22-36-56.mp4','2020-11-24 22:36:43','2020-11-24 22:38:16');
INSERT INTO `sessions` VALUES (213,19,'39506',2,'cf7a43a859051009be45c35c2ca5c6d7b7339cbd19_2020-11-24-22-33-18.mp4','2020-11-24 22:37:54','2020-11-25 14:08:14');
INSERT INTO `sessions` VALUES (214,12,'39506',3,'','2020-11-24 22:39:08','2020-11-24 22:39:08');
INSERT INTO `sessions` VALUES (215,13,'39510',2,'a9fbeca4d93901adb7cf18c2ab72f4ab6ded682313_2020-11-24-22-39-14.mp4','2020-11-24 22:39:10','2020-11-24 22:39:20');
INSERT INTO `sessions` VALUES (216,13,'39510',2,'a9fbeca4d93901adb7cf18c2ab72f4ab6ded682313_2020-11-24-22-39-33.mp4','2020-11-24 22:39:29','2020-11-24 22:42:04');
INSERT INTO `sessions` VALUES (217,23,'39021',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-39-39.mp4','2020-11-24 22:39:31','2020-11-24 22:40:08');
INSERT INTO `sessions` VALUES (218,27,'39507',2,'22fa59fa911d4d66c8f723c98b29591d0d8f754d27_2020-11-24-22-39-54.mp4','2020-11-24 22:39:50','2020-11-24 22:41:29');
INSERT INTO `sessions` VALUES (219,12,'39506',3,'','2020-11-24 22:40:19','2020-11-24 22:40:19');
INSERT INTO `sessions` VALUES (220,23,'39505',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-40-44.mp4','2020-11-24 22:40:40','2020-11-24 22:41:36');
INSERT INTO `sessions` VALUES (221,12,'39506',3,'','2020-11-24 22:41:26','2020-11-24 22:41:26');
INSERT INTO `sessions` VALUES (222,12,'39511',3,'','2020-11-24 22:42:16','2020-11-24 22:42:16');
INSERT INTO `sessions` VALUES (223,13,'39507',3,'','2020-11-24 22:42:38','2020-11-24 22:42:38');
INSERT INTO `sessions` VALUES (224,27,'39507',3,'','2020-11-24 22:42:40','2020-11-24 22:42:40');
INSERT INTO `sessions` VALUES (225,23,'39505',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-49-31.mp4','2020-11-24 22:42:40','2020-12-10 23:08:38');
INSERT INTO `sessions` VALUES (226,29,'39507',2,'46d69c86e95823d8469a5940718eee302440954229_2020-11-24-22-43-05.mp4','2020-11-24 22:42:45','2020-11-24 22:52:15');
INSERT INTO `sessions` VALUES (227,23,'39505',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-42-46.mp4','2020-11-24 22:43:01','2020-11-24 22:43:14');
INSERT INTO `sessions` VALUES (228,12,'39514',3,'','2020-11-24 22:44:48','2020-11-24 22:44:48');
INSERT INTO `sessions` VALUES (229,12,'39514',3,'','2020-11-24 22:46:16','2020-11-24 22:46:16');
INSERT INTO `sessions` VALUES (230,13,'39514',3,'','2020-11-24 22:47:00','2020-11-24 22:47:00');
INSERT INTO `sessions` VALUES (231,12,'39514',3,'','2020-11-24 22:48:13','2020-11-24 22:48:13');
INSERT INTO `sessions` VALUES (232,13,'39514',3,'','2020-11-24 22:48:41','2020-11-24 22:48:41');
INSERT INTO `sessions` VALUES (233,23,'39506',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-48-48.mp4','2020-11-24 22:48:44','2020-11-24 22:49:28');
INSERT INTO `sessions` VALUES (234,12,'39514',3,'','2020-11-24 22:49:10','2020-11-24 22:49:10');
INSERT INTO `sessions` VALUES (235,27,'39514',3,'','2020-11-24 22:49:12','2020-11-24 22:49:12');
INSERT INTO `sessions` VALUES (236,23,'39514',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-49-31.mp4','2020-11-24 22:49:30','2020-11-24 22:50:38');
INSERT INTO `sessions` VALUES (237,12,'39511',3,'','2020-11-25 00:49:18','2020-11-25 00:49:18');
INSERT INTO `sessions` VALUES (238,12,'39511',3,'','2020-11-26 18:34:42','2020-11-26 18:34:42');
INSERT INTO `sessions` VALUES (239,23,'39511',2,'8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-49-31.mp4','2020-11-26 18:34:42','2020-12-10 23:11:53');
INSERT INTO `sessions` VALUES (240,31,'9049',1,'','2020-12-14 12:11:48','2020-12-14 12:36:32');
INSERT INTO `sessions` VALUES (241,31,'39690',1,'','2020-12-14 12:38:25','2020-12-14 22:41:32');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shifts`
--

DROP TABLE IF EXISTS `shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shifts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shifts_user_id_foreign` (`user_id`),
  CONSTRAINT `shifts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shifts`
--

LOCK TABLES `shifts` WRITE;
/*!40000 ALTER TABLE `shifts` DISABLE KEYS */;
INSERT INTO `shifts` VALUES (1,1,1,'2020-10-31 22:04:55','2020-10-31 22:04:55');
INSERT INTO `shifts` VALUES (2,1,0,'2020-10-31 22:06:41','2020-10-31 22:06:41');
INSERT INTO `shifts` VALUES (3,1,1,'2020-11-14 21:09:32','2020-11-14 21:09:32');
INSERT INTO `shifts` VALUES (4,1,1,'2020-11-24 17:53:43','2020-11-24 17:53:43');
INSERT INTO `shifts` VALUES (5,1,2,'2020-11-24 17:56:36','2020-11-24 17:56:36');
INSERT INTO `shifts` VALUES (6,1,3,'2020-11-24 17:56:55','2020-11-24 17:56:55');
INSERT INTO `shifts` VALUES (7,1,0,'2020-11-24 18:02:38','2020-11-24 18:02:38');
INSERT INTO `shifts` VALUES (8,9,1,'2020-11-24 18:03:44','2020-11-24 18:03:44');
INSERT INTO `shifts` VALUES (9,9,0,'2020-11-24 18:06:03','2020-11-24 18:06:03');
INSERT INTO `shifts` VALUES (10,9,1,'2020-11-24 18:11:18','2020-11-24 18:11:18');
INSERT INTO `shifts` VALUES (11,9,0,'2020-11-24 18:44:47','2020-11-24 18:44:47');
INSERT INTO `shifts` VALUES (12,9,1,'2020-11-24 18:44:52','2020-11-24 18:44:52');
INSERT INTO `shifts` VALUES (13,9,0,'2020-11-24 18:47:32','2020-11-24 18:47:32');
INSERT INTO `shifts` VALUES (14,1,1,'2020-11-24 19:35:41','2020-11-24 19:35:41');
INSERT INTO `shifts` VALUES (15,1,2,'2020-11-24 19:36:26','2020-11-24 19:36:26');
INSERT INTO `shifts` VALUES (16,1,3,'2020-11-24 19:38:09','2020-11-24 19:38:09');
INSERT INTO `shifts` VALUES (17,1,0,'2020-11-24 19:38:11','2020-11-24 19:38:11');
INSERT INTO `shifts` VALUES (18,19,1,'2020-11-24 20:10:25','2020-11-24 20:10:25');
INSERT INTO `shifts` VALUES (19,19,2,'2020-11-24 20:10:53','2020-11-24 20:10:53');
INSERT INTO `shifts` VALUES (20,25,1,'2020-11-24 20:30:54','2020-11-24 20:30:54');
INSERT INTO `shifts` VALUES (21,29,1,'2020-11-24 20:42:04','2020-11-24 20:42:04');
INSERT INTO `shifts` VALUES (22,29,2,'2020-11-24 20:44:42','2020-11-24 20:44:42');
INSERT INTO `shifts` VALUES (23,13,1,'2020-11-24 20:58:46','2020-11-24 20:58:46');
INSERT INTO `shifts` VALUES (24,13,2,'2020-11-24 20:59:08','2020-11-24 20:59:08');
INSERT INTO `shifts` VALUES (25,13,0,'2020-11-24 20:59:10','2020-11-24 20:59:10');
INSERT INTO `shifts` VALUES (26,19,1,'2020-11-24 21:48:53','2020-11-24 21:48:53');
INSERT INTO `shifts` VALUES (27,19,2,'2020-11-24 21:49:11','2020-11-24 21:49:11');
INSERT INTO `shifts` VALUES (28,13,1,'2020-11-24 21:53:00','2020-11-24 21:53:00');
INSERT INTO `shifts` VALUES (29,23,1,'2020-11-24 21:55:47','2020-11-24 21:55:47');
INSERT INTO `shifts` VALUES (30,29,1,'2020-11-24 21:56:00','2020-11-24 21:56:00');
INSERT INTO `shifts` VALUES (31,23,0,'2020-11-24 21:56:40','2020-11-24 21:56:40');
INSERT INTO `shifts` VALUES (32,23,1,'2020-11-24 21:59:37','2020-11-24 21:59:37');
INSERT INTO `shifts` VALUES (33,23,0,'2020-11-24 21:59:43','2020-11-24 21:59:43');
INSERT INTO `shifts` VALUES (34,23,0,'2020-11-24 21:59:43','2020-11-24 21:59:43');
INSERT INTO `shifts` VALUES (35,26,1,'2020-11-24 22:00:58','2020-11-24 22:00:58');
INSERT INTO `shifts` VALUES (36,23,1,'2020-11-24 22:02:54','2020-11-24 22:02:54');
INSERT INTO `shifts` VALUES (37,26,1,'2020-11-24 22:04:09','2020-11-24 22:04:09');
INSERT INTO `shifts` VALUES (38,12,1,'2020-11-24 22:04:12','2020-11-24 22:04:12');
INSERT INTO `shifts` VALUES (39,23,1,'2020-11-24 22:04:42','2020-11-24 22:04:42');
INSERT INTO `shifts` VALUES (40,23,1,'2020-11-24 22:06:19','2020-11-24 22:06:19');
INSERT INTO `shifts` VALUES (41,26,2,'2020-11-24 22:07:02','2020-11-24 22:07:02');
INSERT INTO `shifts` VALUES (42,26,2,'2020-11-24 22:07:03','2020-11-24 22:07:03');
INSERT INTO `shifts` VALUES (43,26,1,'2020-11-24 22:07:23','2020-11-24 22:07:23');
INSERT INTO `shifts` VALUES (44,12,1,'2020-11-24 22:08:54','2020-11-24 22:08:54');
INSERT INTO `shifts` VALUES (45,30,1,'2020-11-24 22:11:07','2020-11-24 22:11:07');
INSERT INTO `shifts` VALUES (46,19,1,'2020-11-24 22:11:27','2020-11-24 22:11:27');
INSERT INTO `shifts` VALUES (47,19,1,'2020-11-24 22:12:32','2020-11-24 22:12:32');
INSERT INTO `shifts` VALUES (48,26,1,'2020-11-24 22:13:22','2020-11-24 22:13:22');
INSERT INTO `shifts` VALUES (49,23,1,'2020-11-24 22:14:22','2020-11-24 22:14:22');
INSERT INTO `shifts` VALUES (50,26,1,'2020-11-24 22:15:27','2020-11-24 22:15:27');
INSERT INTO `shifts` VALUES (51,23,0,'2020-11-24 22:18:11','2020-11-24 22:18:11');
INSERT INTO `shifts` VALUES (52,23,1,'2020-11-24 22:18:18','2020-11-24 22:18:18');
INSERT INTO `shifts` VALUES (53,23,1,'2020-11-24 22:19:23','2020-11-24 22:19:23');
INSERT INTO `shifts` VALUES (54,26,1,'2020-11-24 22:19:29','2020-11-24 22:19:29');
INSERT INTO `shifts` VALUES (55,26,1,'2020-11-24 22:19:30','2020-11-24 22:19:30');
INSERT INTO `shifts` VALUES (56,12,1,'2020-11-24 22:21:15','2020-11-24 22:21:15');
INSERT INTO `shifts` VALUES (57,12,2,'2020-11-24 22:21:36','2020-11-24 22:21:36');
INSERT INTO `shifts` VALUES (58,12,3,'2020-11-24 22:21:40','2020-11-24 22:21:40');
INSERT INTO `shifts` VALUES (59,27,1,'2020-11-24 22:21:42','2020-11-24 22:21:42');
INSERT INTO `shifts` VALUES (60,12,0,'2020-11-24 22:21:45','2020-11-24 22:21:45');
INSERT INTO `shifts` VALUES (61,12,1,'2020-11-24 22:22:46','2020-11-24 22:22:46');
INSERT INTO `shifts` VALUES (62,12,0,'2020-11-24 22:23:11','2020-11-24 22:23:11');
INSERT INTO `shifts` VALUES (63,19,2,'2020-11-24 22:23:14','2020-11-24 22:23:14');
INSERT INTO `shifts` VALUES (64,29,1,'2020-11-24 22:23:15','2020-11-24 22:23:15');
INSERT INTO `shifts` VALUES (65,19,0,'2020-11-24 22:23:26','2020-11-24 22:23:26');
INSERT INTO `shifts` VALUES (66,26,1,'2020-11-24 22:23:46','2020-11-24 22:23:46');
INSERT INTO `shifts` VALUES (67,27,0,'2020-11-24 22:24:02','2020-11-24 22:24:02');
INSERT INTO `shifts` VALUES (68,27,1,'2020-11-24 22:24:04','2020-11-24 22:24:04');
INSERT INTO `shifts` VALUES (69,29,2,'2020-11-24 22:27:41','2020-11-24 22:27:41');
INSERT INTO `shifts` VALUES (70,29,3,'2020-11-24 22:27:42','2020-11-24 22:27:42');
INSERT INTO `shifts` VALUES (71,19,1,'2020-11-24 22:30:11','2020-11-24 22:30:11');
INSERT INTO `shifts` VALUES (72,12,1,'2020-11-24 22:30:18','2020-11-24 22:30:18');
INSERT INTO `shifts` VALUES (73,19,1,'2020-11-24 22:30:36','2020-11-24 22:30:36');
INSERT INTO `shifts` VALUES (74,19,1,'2020-11-24 22:30:47','2020-11-24 22:30:47');
INSERT INTO `shifts` VALUES (75,19,0,'2020-11-24 22:30:50','2020-11-24 22:30:50');
INSERT INTO `shifts` VALUES (76,13,2,'2020-11-24 22:33:51','2020-11-24 22:33:51');
INSERT INTO `shifts` VALUES (77,13,3,'2020-11-24 22:33:54','2020-11-24 22:33:54');
INSERT INTO `shifts` VALUES (78,29,2,'2020-11-24 22:34:01','2020-11-24 22:34:01');
INSERT INTO `shifts` VALUES (79,29,1,'2020-11-24 22:34:45','2020-11-24 22:34:45');
INSERT INTO `shifts` VALUES (80,29,2,'2020-11-24 22:35:25','2020-11-24 22:35:25');
INSERT INTO `shifts` VALUES (81,29,3,'2020-11-24 22:35:27','2020-11-24 22:35:27');
INSERT INTO `shifts` VALUES (82,29,2,'2020-11-24 22:37:18','2020-11-24 22:37:18');
INSERT INTO `shifts` VALUES (83,29,3,'2020-11-24 22:37:20','2020-11-24 22:37:20');
INSERT INTO `shifts` VALUES (84,27,0,'2020-11-24 22:37:26','2020-11-24 22:37:26');
INSERT INTO `shifts` VALUES (85,27,1,'2020-11-24 22:37:31','2020-11-24 22:37:31');
INSERT INTO `shifts` VALUES (86,29,2,'2020-11-24 22:37:42','2020-11-24 22:37:42');
INSERT INTO `shifts` VALUES (87,29,3,'2020-11-24 22:37:43','2020-11-24 22:37:43');
INSERT INTO `shifts` VALUES (88,29,2,'2020-11-24 22:39:08','2020-11-24 22:39:08');
INSERT INTO `shifts` VALUES (89,29,3,'2020-11-24 22:39:11','2020-11-24 22:39:11');
INSERT INTO `shifts` VALUES (90,29,0,'2020-11-24 22:40:12','2020-11-24 22:40:12');
INSERT INTO `shifts` VALUES (91,29,1,'2020-11-24 22:40:14','2020-11-24 22:40:14');
INSERT INTO `shifts` VALUES (92,29,2,'2020-11-24 22:41:05','2020-11-24 22:41:05');
INSERT INTO `shifts` VALUES (93,29,3,'2020-11-24 22:41:07','2020-11-24 22:41:07');
INSERT INTO `shifts` VALUES (94,29,2,'2020-11-24 22:42:18','2020-11-24 22:42:18');
INSERT INTO `shifts` VALUES (95,29,3,'2020-11-24 22:42:23','2020-11-24 22:42:23');
INSERT INTO `shifts` VALUES (96,29,0,'2020-11-24 22:42:58','2020-11-24 22:42:58');
INSERT INTO `shifts` VALUES (97,29,1,'2020-11-24 22:42:59','2020-11-24 22:42:59');
INSERT INTO `shifts` VALUES (98,29,2,'2020-11-24 22:43:05','2020-11-24 22:43:05');
INSERT INTO `shifts` VALUES (99,29,3,'2020-11-24 22:52:15','2020-11-24 22:52:15');
INSERT INTO `shifts` VALUES (100,27,0,'2020-11-24 22:56:33','2020-11-24 22:56:33');
INSERT INTO `shifts` VALUES (101,23,0,'2020-11-24 22:57:40','2020-11-24 22:57:40');
INSERT INTO `shifts` VALUES (102,19,1,'2020-11-27 14:31:42','2020-11-27 14:31:42');
INSERT INTO `shifts` VALUES (103,19,0,'2020-11-27 14:33:43','2020-11-27 14:33:43');
INSERT INTO `shifts` VALUES (104,2,1,'2020-12-01 07:43:34','2020-12-01 07:43:34');
INSERT INTO `shifts` VALUES (105,2,0,'2020-12-01 07:48:34','2020-12-01 07:48:34');
INSERT INTO `shifts` VALUES (106,2,1,'2020-12-01 07:56:32','2020-12-01 07:56:32');
INSERT INTO `shifts` VALUES (107,2,0,'2020-12-01 07:57:11','2020-12-01 07:57:11');
INSERT INTO `shifts` VALUES (108,2,1,'2020-12-01 08:24:27','2020-12-01 08:24:27');
INSERT INTO `shifts` VALUES (109,2,0,'2020-12-01 08:25:10','2020-12-01 08:25:10');
INSERT INTO `shifts` VALUES (110,31,1,'2020-12-03 18:07:57','2020-12-03 18:07:57');
INSERT INTO `shifts` VALUES (111,31,0,'2020-12-03 18:44:16','2020-12-03 18:44:16');
INSERT INTO `shifts` VALUES (112,31,1,'2020-12-03 18:45:32','2020-12-03 18:45:32');
INSERT INTO `shifts` VALUES (113,31,0,'2020-12-03 18:55:33','2020-12-03 18:55:33');
INSERT INTO `shifts` VALUES (114,31,1,'2020-12-03 19:25:08','2020-12-03 19:25:08');
INSERT INTO `shifts` VALUES (115,31,0,'2020-12-03 19:26:57','2020-12-03 19:26:57');
INSERT INTO `shifts` VALUES (116,31,0,'2020-12-03 19:26:58','2020-12-03 19:26:58');
INSERT INTO `shifts` VALUES (117,31,1,'2020-12-03 19:27:00','2020-12-03 19:27:00');
INSERT INTO `shifts` VALUES (118,31,1,'2020-12-03 19:27:50','2020-12-03 19:27:50');
INSERT INTO `shifts` VALUES (119,31,1,'2020-12-03 19:32:33','2020-12-03 19:32:33');
INSERT INTO `shifts` VALUES (120,31,0,'2020-12-03 19:34:48','2020-12-03 19:34:48');
INSERT INTO `shifts` VALUES (121,31,0,'2020-12-03 19:35:25','2020-12-03 19:35:25');
INSERT INTO `shifts` VALUES (122,31,1,'2020-12-03 19:35:26','2020-12-03 19:35:26');
INSERT INTO `shifts` VALUES (123,31,1,'2020-12-03 19:35:40','2020-12-03 19:35:40');
INSERT INTO `shifts` VALUES (124,31,2,'2020-12-04 01:35:45','2020-12-04 01:35:45');
INSERT INTO `shifts` VALUES (125,31,1,'2020-12-03 19:36:46','2020-12-03 19:36:46');
INSERT INTO `shifts` VALUES (126,31,1,'2020-12-03 19:38:15','2020-12-03 19:38:15');
INSERT INTO `shifts` VALUES (127,31,1,'2020-12-03 19:40:11','2020-12-03 19:40:11');
INSERT INTO `shifts` VALUES (128,31,1,'2020-12-03 19:41:06','2020-12-03 19:41:06');
INSERT INTO `shifts` VALUES (129,31,1,'2020-12-03 19:41:55','2020-12-03 19:41:55');
INSERT INTO `shifts` VALUES (130,31,1,'2020-12-03 19:42:30','2020-12-03 19:42:30');
INSERT INTO `shifts` VALUES (131,31,0,'2020-12-03 19:42:58','2020-12-03 19:42:58');
INSERT INTO `shifts` VALUES (132,31,1,'2020-12-03 19:43:00','2020-12-03 19:43:00');
INSERT INTO `shifts` VALUES (133,31,1,'2020-12-03 19:44:25','2020-12-03 19:44:25');
INSERT INTO `shifts` VALUES (134,31,1,'2020-12-03 19:47:36','2020-12-03 19:47:36');
INSERT INTO `shifts` VALUES (135,31,1,'2020-12-03 19:47:50','2020-12-03 19:47:50');
INSERT INTO `shifts` VALUES (136,31,1,'2020-12-03 19:51:31','2020-12-03 19:51:31');
INSERT INTO `shifts` VALUES (137,31,1,'2020-12-03 19:52:42','2020-12-03 19:52:42');
INSERT INTO `shifts` VALUES (138,31,1,'2020-12-03 19:53:45','2020-12-03 19:53:45');
INSERT INTO `shifts` VALUES (139,31,1,'2020-12-03 21:05:07','2020-12-03 21:05:07');
INSERT INTO `shifts` VALUES (140,31,1,'2020-12-03 23:32:59','2020-12-03 23:32:59');
INSERT INTO `shifts` VALUES (141,31,1,'2020-12-06 11:53:50','2020-12-06 11:53:50');
INSERT INTO `shifts` VALUES (142,31,0,'2020-12-06 11:56:48','2020-12-06 11:56:48');
INSERT INTO `shifts` VALUES (143,31,0,'2020-12-06 11:57:59','2020-12-06 11:57:59');
INSERT INTO `shifts` VALUES (144,31,0,'2020-12-06 11:59:22','2020-12-06 11:59:22');
INSERT INTO `shifts` VALUES (145,31,0,'2020-12-06 11:59:38','2020-12-06 11:59:38');
INSERT INTO `shifts` VALUES (146,31,0,'2020-12-06 12:00:20','2020-12-06 12:00:20');
INSERT INTO `shifts` VALUES (147,31,1,'2020-12-06 12:00:47','2020-12-06 12:00:47');
INSERT INTO `shifts` VALUES (148,31,1,'2020-12-06 12:02:34','2020-12-06 12:02:34');
INSERT INTO `shifts` VALUES (149,31,1,'2020-12-06 12:03:12','2020-12-06 12:03:12');
INSERT INTO `shifts` VALUES (150,31,1,'2020-12-06 12:05:39','2020-12-06 12:05:39');
INSERT INTO `shifts` VALUES (151,31,1,'2020-12-06 12:25:06','2020-12-06 12:25:06');
INSERT INTO `shifts` VALUES (152,31,1,'2020-12-06 12:27:32','2020-12-06 12:27:32');
INSERT INTO `shifts` VALUES (153,31,1,'2020-12-06 12:30:34','2020-12-06 12:30:34');
INSERT INTO `shifts` VALUES (154,31,1,'2020-12-07 08:43:43','2020-12-07 08:43:43');
INSERT INTO `shifts` VALUES (155,31,1,'2020-12-07 08:55:18','2020-12-07 08:55:18');
INSERT INTO `shifts` VALUES (156,31,1,'2020-12-07 08:56:26','2020-12-07 08:56:26');
INSERT INTO `shifts` VALUES (157,31,1,'2020-12-07 08:56:36','2020-12-07 08:56:36');
INSERT INTO `shifts` VALUES (158,31,1,'2020-12-07 08:57:33','2020-12-07 08:57:33');
INSERT INTO `shifts` VALUES (159,31,1,'2020-12-14 06:36:29','2020-12-14 06:36:29');
INSERT INTO `shifts` VALUES (160,31,1,'2020-12-14 16:41:04','2020-12-14 16:41:04');
INSERT INTO `shifts` VALUES (161,31,0,'2020-12-14 16:49:25','2020-12-14 16:49:25');
INSERT INTO `shifts` VALUES (162,31,0,'2020-12-14 16:49:26','2020-12-14 16:49:26');
INSERT INTO `shifts` VALUES (163,31,0,'2020-12-14 16:49:30','2020-12-14 16:49:30');
INSERT INTO `shifts` VALUES (164,31,1,'2020-12-14 16:49:31','2020-12-14 16:49:31');
INSERT INTO `shifts` VALUES (165,31,0,'2020-12-14 17:51:10','2020-12-14 17:51:10');
INSERT INTO `shifts` VALUES (166,31,0,'2020-12-14 17:51:10','2020-12-14 17:51:10');
INSERT INTO `shifts` VALUES (167,31,1,'2020-12-14 17:51:12','2020-12-14 17:51:12');
INSERT INTO `shifts` VALUES (168,31,0,'2020-12-14 17:54:44','2020-12-14 17:54:44');
INSERT INTO `shifts` VALUES (169,31,0,'2020-12-14 17:54:45','2020-12-14 17:54:45');
INSERT INTO `shifts` VALUES (170,31,1,'2020-12-14 17:54:46','2020-12-14 17:54:46');
INSERT INTO `shifts` VALUES (171,31,0,'2020-12-14 17:55:20','2020-12-14 17:55:20');
INSERT INTO `shifts` VALUES (172,31,0,'2020-12-14 17:55:21','2020-12-14 17:55:21');
INSERT INTO `shifts` VALUES (173,31,1,'2020-12-14 17:55:22','2020-12-14 17:55:22');
INSERT INTO `shifts` VALUES (174,31,0,'2020-12-14 17:58:11','2020-12-14 17:58:11');
INSERT INTO `shifts` VALUES (175,31,0,'2020-12-14 17:58:11','2020-12-14 17:58:11');
INSERT INTO `shifts` VALUES (176,31,1,'2020-12-14 17:58:13','2020-12-14 17:58:13');
INSERT INTO `shifts` VALUES (177,31,0,'2020-12-14 18:00:16','2020-12-14 18:00:16');
INSERT INTO `shifts` VALUES (178,31,1,'2020-12-14 18:00:52','2020-12-14 18:00:52');
INSERT INTO `shifts` VALUES (179,31,0,'2020-12-14 18:01:26','2020-12-14 18:01:26');
INSERT INTO `shifts` VALUES (180,31,0,'2020-12-14 18:01:27','2020-12-14 18:01:27');
INSERT INTO `shifts` VALUES (181,31,1,'2020-12-14 18:01:28','2020-12-14 18:01:28');
INSERT INTO `shifts` VALUES (182,31,1,'2021-01-06 06:20:05','2021-01-06 06:20:05');
INSERT INTO `shifts` VALUES (183,31,0,'2021-01-06 06:22:47','2021-01-06 06:22:47');
INSERT INTO `shifts` VALUES (184,31,1,'2021-01-21 03:18:44','2021-01-21 03:18:44');
INSERT INTO `shifts` VALUES (185,31,0,'2021-01-21 03:20:12','2021-01-21 03:20:12');
INSERT INTO `shifts` VALUES (186,31,0,'2021-01-21 03:20:14','2021-01-21 03:20:14');
INSERT INTO `shifts` VALUES (187,31,1,'2021-01-21 03:20:16','2021-01-21 03:20:16');
INSERT INTO `shifts` VALUES (188,31,2,'2021-01-21 09:21:26','2021-01-21 09:21:26');
INSERT INTO `shifts` VALUES (189,31,1,'2021-01-21 03:22:07','2021-01-21 03:22:07');
INSERT INTO `shifts` VALUES (190,31,0,'2021-01-21 03:22:11','2021-01-21 03:22:11');
INSERT INTO `shifts` VALUES (191,31,1,'2021-01-21 03:22:16','2021-01-21 03:22:16');
INSERT INTO `shifts` VALUES (192,31,0,'2021-01-21 03:24:44','2021-01-21 03:24:44');
INSERT INTO `shifts` VALUES (193,31,0,'2021-01-21 03:24:46','2021-01-21 03:24:46');
INSERT INTO `shifts` VALUES (194,31,1,'2021-01-21 03:24:47','2021-01-21 03:24:47');
INSERT INTO `shifts` VALUES (195,31,1,'2021-01-21 03:26:06','2021-01-21 03:26:06');
INSERT INTO `shifts` VALUES (196,31,0,'2021-01-21 03:26:11','2021-01-21 03:26:11');
INSERT INTO `shifts` VALUES (197,31,0,'2021-01-21 03:27:02','2021-01-21 03:27:02');
INSERT INTO `shifts` VALUES (198,31,1,'2021-01-21 03:27:06','2021-01-21 03:27:06');
INSERT INTO `shifts` VALUES (199,31,1,'2021-01-21 03:28:11','2021-01-21 03:28:11');
INSERT INTO `shifts` VALUES (200,31,0,'2021-01-21 03:29:23','2021-01-21 03:29:23');
INSERT INTO `shifts` VALUES (201,31,0,'2021-01-21 03:29:24','2021-01-21 03:29:24');
INSERT INTO `shifts` VALUES (202,31,1,'2021-01-21 03:29:26','2021-01-21 03:29:26');
INSERT INTO `shifts` VALUES (203,31,0,'2021-01-21 03:30:31','2021-01-21 03:30:31');
INSERT INTO `shifts` VALUES (204,31,0,'2021-01-21 03:42:54','2021-01-21 03:42:54');
INSERT INTO `shifts` VALUES (205,31,1,'2021-01-21 03:42:56','2021-01-21 03:42:56');
INSERT INTO `shifts` VALUES (206,31,1,'2021-01-21 03:43:20','2021-01-21 03:43:20');
INSERT INTO `shifts` VALUES (207,31,1,'2021-01-21 03:44:42','2021-01-21 03:44:42');
INSERT INTO `shifts` VALUES (208,31,0,'2021-01-21 03:44:47','2021-01-21 03:44:47');
INSERT INTO `shifts` VALUES (209,31,0,'2021-01-21 03:44:47','2021-01-21 03:44:47');
INSERT INTO `shifts` VALUES (210,31,0,'2021-01-21 03:44:47','2021-01-21 03:44:47');
INSERT INTO `shifts` VALUES (211,31,0,'2021-01-21 03:44:47','2021-01-21 03:44:47');
INSERT INTO `shifts` VALUES (212,31,0,'2021-01-21 03:44:47','2021-01-21 03:44:47');
INSERT INTO `shifts` VALUES (213,31,0,'2021-01-21 03:44:47','2021-01-21 03:44:47');
INSERT INTO `shifts` VALUES (214,31,0,'2021-01-21 03:44:47','2021-01-21 03:44:47');
INSERT INTO `shifts` VALUES (215,31,0,'2021-01-21 03:44:47','2021-01-21 03:44:47');
INSERT INTO `shifts` VALUES (216,31,0,'2021-01-21 03:44:47','2021-01-21 03:44:47');
INSERT INTO `shifts` VALUES (217,31,0,'2021-01-21 03:44:47','2021-01-21 03:44:47');
INSERT INTO `shifts` VALUES (218,31,0,'2021-01-21 03:44:48','2021-01-21 03:44:48');
INSERT INTO `shifts` VALUES (219,31,0,'2021-01-21 03:44:48','2021-01-21 03:44:48');
INSERT INTO `shifts` VALUES (220,31,0,'2021-01-21 03:44:48','2021-01-21 03:44:48');
INSERT INTO `shifts` VALUES (221,31,0,'2021-01-21 03:44:48','2021-01-21 03:44:48');
INSERT INTO `shifts` VALUES (222,31,0,'2021-01-21 03:44:48','2021-01-21 03:44:48');
INSERT INTO `shifts` VALUES (223,31,0,'2021-01-21 03:44:48','2021-01-21 03:44:48');
INSERT INTO `shifts` VALUES (224,31,0,'2021-01-21 03:44:48','2021-01-21 03:44:48');
INSERT INTO `shifts` VALUES (225,31,0,'2021-01-21 03:44:48','2021-01-21 03:44:48');
INSERT INTO `shifts` VALUES (226,31,0,'2021-01-21 03:44:48','2021-01-21 03:44:48');
INSERT INTO `shifts` VALUES (227,31,0,'2021-01-21 03:44:48','2021-01-21 03:44:48');
INSERT INTO `shifts` VALUES (228,31,0,'2021-01-21 03:44:48','2021-01-21 03:44:48');
INSERT INTO `shifts` VALUES (229,31,0,'2021-01-21 03:44:49','2021-01-21 03:44:49');
INSERT INTO `shifts` VALUES (230,31,0,'2021-01-21 03:44:49','2021-01-21 03:44:49');
INSERT INTO `shifts` VALUES (231,31,0,'2021-01-21 03:44:49','2021-01-21 03:44:49');
INSERT INTO `shifts` VALUES (232,31,0,'2021-01-21 03:44:49','2021-01-21 03:44:49');
INSERT INTO `shifts` VALUES (233,31,0,'2021-01-21 03:44:49','2021-01-21 03:44:49');
INSERT INTO `shifts` VALUES (234,31,0,'2021-01-21 03:44:49','2021-01-21 03:44:49');
INSERT INTO `shifts` VALUES (235,31,0,'2021-01-21 03:44:49','2021-01-21 03:44:49');
INSERT INTO `shifts` VALUES (236,31,0,'2021-01-21 03:44:49','2021-01-21 03:44:49');
INSERT INTO `shifts` VALUES (237,31,0,'2021-01-21 03:44:49','2021-01-21 03:44:49');
INSERT INTO `shifts` VALUES (238,31,0,'2021-01-21 03:44:49','2021-01-21 03:44:49');
INSERT INTO `shifts` VALUES (239,31,0,'2021-01-21 03:44:50','2021-01-21 03:44:50');
INSERT INTO `shifts` VALUES (240,31,0,'2021-01-21 03:44:50','2021-01-21 03:44:50');
INSERT INTO `shifts` VALUES (241,31,0,'2021-01-21 03:44:50','2021-01-21 03:44:50');
INSERT INTO `shifts` VALUES (242,31,0,'2021-01-21 03:44:50','2021-01-21 03:44:50');
INSERT INTO `shifts` VALUES (243,31,0,'2021-01-21 03:44:50','2021-01-21 03:44:50');
INSERT INTO `shifts` VALUES (244,31,0,'2021-01-21 03:44:50','2021-01-21 03:44:50');
INSERT INTO `shifts` VALUES (245,31,0,'2021-01-21 03:44:50','2021-01-21 03:44:50');
INSERT INTO `shifts` VALUES (246,31,0,'2021-01-21 03:44:50','2021-01-21 03:44:50');
INSERT INTO `shifts` VALUES (247,31,0,'2021-01-21 03:44:50','2021-01-21 03:44:50');
INSERT INTO `shifts` VALUES (248,31,0,'2021-01-21 03:44:50','2021-01-21 03:44:50');
INSERT INTO `shifts` VALUES (249,31,0,'2021-01-21 03:44:51','2021-01-21 03:44:51');
INSERT INTO `shifts` VALUES (250,31,0,'2021-01-21 03:44:51','2021-01-21 03:44:51');
INSERT INTO `shifts` VALUES (251,31,0,'2021-01-21 03:44:51','2021-01-21 03:44:51');
INSERT INTO `shifts` VALUES (252,31,0,'2021-01-21 03:44:51','2021-01-21 03:44:51');
INSERT INTO `shifts` VALUES (253,31,0,'2021-01-21 03:44:51','2021-01-21 03:44:51');
INSERT INTO `shifts` VALUES (254,31,0,'2021-01-21 03:44:51','2021-01-21 03:44:51');
INSERT INTO `shifts` VALUES (255,31,0,'2021-01-21 03:44:51','2021-01-21 03:44:51');
INSERT INTO `shifts` VALUES (256,31,0,'2021-01-21 03:44:51','2021-01-21 03:44:51');
INSERT INTO `shifts` VALUES (257,31,0,'2021-01-21 03:44:51','2021-01-21 03:44:51');
INSERT INTO `shifts` VALUES (258,31,0,'2021-01-21 03:44:51','2021-01-21 03:44:51');
INSERT INTO `shifts` VALUES (259,31,0,'2021-01-21 03:44:51','2021-01-21 03:44:51');
INSERT INTO `shifts` VALUES (260,31,0,'2021-01-21 03:44:52','2021-01-21 03:44:52');
INSERT INTO `shifts` VALUES (261,31,0,'2021-01-21 03:44:52','2021-01-21 03:44:52');
INSERT INTO `shifts` VALUES (262,31,0,'2021-01-21 03:44:52','2021-01-21 03:44:52');
INSERT INTO `shifts` VALUES (263,31,0,'2021-01-21 03:44:52','2021-01-21 03:44:52');
INSERT INTO `shifts` VALUES (264,31,0,'2021-01-21 03:44:52','2021-01-21 03:44:52');
INSERT INTO `shifts` VALUES (265,31,0,'2021-01-21 03:44:52','2021-01-21 03:44:52');
INSERT INTO `shifts` VALUES (266,31,0,'2021-01-21 03:44:52','2021-01-21 03:44:52');
INSERT INTO `shifts` VALUES (267,31,0,'2021-01-21 03:44:52','2021-01-21 03:44:52');
INSERT INTO `shifts` VALUES (268,31,0,'2021-01-21 03:44:52','2021-01-21 03:44:52');
INSERT INTO `shifts` VALUES (269,31,1,'2021-01-21 03:44:54','2021-01-21 03:44:54');
INSERT INTO `shifts` VALUES (270,31,0,'2021-01-21 03:44:57','2021-01-21 03:44:57');
INSERT INTO `shifts` VALUES (271,31,1,'2021-01-21 03:45:04','2021-01-21 03:45:04');
INSERT INTO `shifts` VALUES (272,31,1,'2021-01-21 03:45:27','2021-01-21 03:45:27');
INSERT INTO `shifts` VALUES (273,31,0,'2021-01-21 03:45:33','2021-01-21 03:45:33');
INSERT INTO `shifts` VALUES (274,31,1,'2021-01-21 03:45:36','2021-01-21 03:45:36');
INSERT INTO `shifts` VALUES (275,31,0,'2021-01-21 03:45:41','2021-01-21 03:45:41');
INSERT INTO `shifts` VALUES (276,31,0,'2021-01-21 03:45:47','2021-01-21 03:45:47');
INSERT INTO `shifts` VALUES (277,31,0,'2021-01-21 03:45:50','2021-01-21 03:45:50');
INSERT INTO `shifts` VALUES (278,31,0,'2021-01-21 03:45:51','2021-01-21 03:45:51');
INSERT INTO `shifts` VALUES (279,31,1,'2021-01-21 03:45:53','2021-01-21 03:45:53');
INSERT INTO `shifts` VALUES (280,31,1,'2021-01-21 03:46:24','2021-01-21 03:46:24');
/*!40000 ALTER TABLE `shifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicalNum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hilario','hilario.menendez@excess.software',NULL,'$2y$10$lmR1lCU.vhb.SZexnhLiv.RPIRStaQFJDJ3rMRVip8JdG5c5v20dW','12345',0,NULL,'2020-08-07 04:29:39','2020-11-24 19:38:11');
INSERT INTO `users` VALUES (2,'Santiago','santiago.wever@excess.software',NULL,'$2y$10$IQQ0YdLmye0z/zJd1kAo8.LdjD6GFkUne6qs3RjJMoTy7elQEL3zq','',0,NULL,'2020-08-11 03:27:58','2020-12-01 08:25:10');
INSERT INTO `users` VALUES (3,'Hilario','hilario959@gmail.com',NULL,'$2y$10$QmAjYOqtnGnNK9miL0r0LuAtu8WkAjgE.FlgDvJEEIlXSf1WRoK82','1234',0,NULL,'2020-08-11 03:31:23','2020-09-28 00:03:32');
INSERT INTO `users` VALUES (4,'Santiago 2','swever2@correo.com',NULL,'$2y$10$5ksTZuQ9h83rrcdkFO07JejyXqgxgvi.kaUsKApU1aJvnYHEysTp2','1234',0,NULL,'2020-08-11 03:35:10','2020-09-28 00:03:07');
INSERT INTO `users` VALUES (5,'Santiago 3','swever3@correo.com',NULL,'$2y$10$LyII841DTJ7KmgHwpQtN5OP6/./wGzlPHLLg3Ei97.pu9LOBoHLs6','',0,NULL,'2020-08-11 05:44:41','2020-08-10 23:55:23');
INSERT INTO `users` VALUES (6,'Santiago 4','swever4@correo.com',NULL,'$2y$10$RePAIMnpDMNbfTq.AHl32.sl3emYmLkv9LVj446Y1OWL.cagBUdc2','',0,NULL,'2020-08-11 05:46:54','2020-08-10 23:56:08');
INSERT INTO `users` VALUES (7,'Santiago 5','swever5@correo.com',NULL,'$2y$10$Gfz14nnxMjeD.D9C40ATsON9gI45d.v7NzRroYQI6tStxmCEcj1uS','',0,NULL,'2020-08-11 05:49:03','2020-08-10 23:56:11');
INSERT INTO `users` VALUES (8,'Santiago 6','swever6@correo.com',NULL,'$2y$10$fCo8Yf1JrH2UBd3AfY9nVOSyjxqoG3LZ2waPYn5B.gpI2IUpLJaxa','',0,NULL,'2020-08-11 05:51:13','2020-08-10 23:54:43');
INSERT INTO `users` VALUES (9,'Juan Jose Montenegro','sistemas@consumedicagt.com',NULL,'$2y$10$BGGmwi.YiJO.H/0KNYCZeO/l3/f6DWMZ1N7waEdTYjfuAOSKYq1iO','12345',0,NULL,'2020-10-09 11:03:22','2020-11-24 22:20:22');
INSERT INTO `users` VALUES (10,'Juan Diego Hernandez','juanmercury@hotmail.com',NULL,'$2y$10$TT1EhCU3elGkgDs0jSzkieCFl.h9ZcPRyopIRXj/bYQwe4r3pIOQu','19039',0,NULL,'2020-10-09 13:57:22','2020-11-24 22:16:16');
INSERT INTO `users` VALUES (11,'Alexandra Gonzales','alexa.gonzalez.joya@gmail.com',NULL,'$2y$10$/bD31BkNyxRKuE0R73FIIuJxcO7wuoT5QOT0/mJ88Odso8M4pK/dO','18483',0,NULL,'2020-10-09 13:58:38','2020-11-24 22:16:19');
INSERT INTO `users` VALUES (12,'Michell Bueso','mbuesopineda@gmail.com',NULL,'$2y$10$184J4QKsM8MR4kMpSs6XCu5qZMdJtdJczxt41aMtL5kEzeSx2yLLG','10528',0,NULL,'2020-10-09 13:59:24','2020-11-26 21:57:04');
INSERT INTO `users` VALUES (13,'Fabio Cantillano','fabiocantillano@hotmail.com',NULL,'$2y$10$dSx/9mUf6VDwQDc/TbWv7eoLa6/Db/LQxVKqsEM02YSHYcxazJQGS','16874',0,'XleluUikKfIazOpWbTTOISgiuqhIaj53Jt40ZR21UEqMJSu1NMaDyQRS9vT0','2020-10-09 14:00:10','2020-11-26 21:57:06');
INSERT INTO `users` VALUES (14,'Allison Silva','allisonsilva927@gmail.com',NULL,'$2y$10$yWE7V4k2oo3M.v4II8WWw..KOFPrA1Yg9sExIv/jNeC7FwBOR6PMW','16564',0,'Pw4SMNKjRi23sRJReOayyEcFjbEpI8hRgQ26eBYaOZ0aVm4qMjrA1Xu7v4WW','2020-10-09 14:01:04','2020-11-24 22:19:29');
INSERT INTO `users` VALUES (15,'Angelica Veronica Rodriguez','angy_m2009@hotmail.com',NULL,'$2y$10$6sjBVDag9PGMDrgIdnND3.wRwcdd5CbYZ6lJt1EDsRsR9EQtw0IHu','16384',0,NULL,'2020-10-09 14:02:05','2020-11-24 22:16:24');
INSERT INTO `users` VALUES (16,'Carmen Madrid','carmenmadrid219@gmail.com',NULL,'$2y$10$RDPvV21m.Ol8Y75KLxOss.AGGDEaoJPXyCu8XyIWNf9RaYxOJMQLC','16743',0,'owCejSbrPZIExMV33JD1ZWBnnbNTCeE123VyBKeUp9dYEc34booAVkJnneWj','2020-10-09 14:03:12','2020-11-24 22:19:32');
INSERT INTO `users` VALUES (17,'Veronica Hernandez','vero_ale92@yahoo.com',NULL,'$2y$10$k.KjSoPBX0OjJLrfhFs26uBoDvYl.qmEnCsEyOs3tctFs0PXWvtKK','16422',0,NULL,'2020-10-09 14:04:58','2020-11-24 22:16:33');
INSERT INTO `users` VALUES (18,'Maue Pivaral','meme22_44@hotmail.com',NULL,'$2y$10$/2mSiNwzkbjiqMyv5jRWzO4WWj50e8hL95Rl5VMvpidrNdeMsA8SG','19415',0,NULL,'2020-10-09 14:23:57','2020-11-24 22:19:37');
INSERT INTO `users` VALUES (19,'Carla Paredes','gerencia@centrourgenciasmedicas.com',NULL,'$2y$10$yd3ccIe/j0Tc70So9khO0eszi/.zymVwaXbrfqMQGsumazGOYMt/G','18989',0,'gR052dbATU79GMkCSSsEJgXRiHg15RmJTDi7lrePR654VCHyEHNufXB0MxIm','2020-10-09 14:28:31','2020-11-27 14:33:43');
INSERT INTO `users` VALUES (20,'Eileen Lam','elam@centrourgenicasmedicas.com',NULL,'$2y$10$V2TMUQjqPO5qMMpkThi9Fuz17P80NGYu.c1lznYtGJeGawxqKIiBe','12345',0,NULL,'2020-10-09 17:15:42','2020-11-24 22:19:45');
INSERT INTO `users` VALUES (21,'Ignacio Barrio','ibarrio@centrourgenciasmedicas.com',NULL,'$2y$10$7cad.9gUr552NqSp2qXFF.XSABu/cChiAK55X9DrUCzThtRq7V1Ku','12345',0,'tBjNHuzoQonr7jH7wthNOLDx9aWfEEvNxuGc6BLy9P7Q6KogreNLWFmI20L0','2020-10-09 17:17:13','2020-11-24 22:19:48');
INSERT INTO `users` VALUES (22,'Carlos Manuel Almorza Motta','cmalmorzam@gmail.com',NULL,'$2y$10$5E9go9m3h4wuqYAWpsgFNO4ybKJED.ft50KG4omIt1G2uPtjRZQZK','23228',0,'5usRfYZpa2FvQonipJk4lYCwsh35f0xKjZ5hyIxk9HJhke5mo7YMIH1aPWKl','2020-10-19 13:16:20','2020-11-24 22:20:02');
INSERT INTO `users` VALUES (23,'Andrea Judith Lopez del Cid','andrea.delcid2392@gmail.com',NULL,'$2y$10$rrcFKNzVkqeejs2mLH3OEuBSaLolVyD506RrACV/ATHIJxDR9ks9y','21362',0,NULL,'2020-10-19 13:17:09','2020-11-24 22:57:40');
INSERT INTO `users` VALUES (24,'Dr. Castañeda','ecastaneda@centrourgenciasmedicas.com',NULL,'$2y$10$p2WVJniJdNZR1egu6ePHFevdN6lmGcnOMWZp8LcSuzfQwYpTFwjay','17642',0,'e9m709MI1ixSBkdsfXEY44p2y1jyaMoc24UJVxLRKwixchVgZ9tiycPLsncH','2020-10-19 13:56:48','2020-11-24 22:19:53');
INSERT INTO `users` VALUES (25,'Jaime Jahaziel Cordón Fajardo','cordoncerrato@hotmail.com',NULL,'$2y$10$dHAjhr9ILI.c7rgI6KLR.uFxEgkXWPY.oDTSbPJmwHBkyfHVfvUZS','12109',0,NULL,'2020-11-24 19:08:23','2020-11-24 22:19:56');
INSERT INTO `users` VALUES (26,'Karla Elizabeth Pineda Toro','karlapineda2691@gmail.com',NULL,'$2y$10$iPA4e17z6an/ggBdFjG2wevWcZKn1T9Xk3yNCA2OscP8M28g.15lC','16520',0,NULL,'2020-11-24 19:11:49','2020-11-24 22:19:59');
INSERT INTO `users` VALUES (27,'Lesly Jeanneth Contreras Mejia','leslycontreras23@gmail.com',NULL,'$2y$10$EqAjGQiPeEzwDzFh0s64s.dgOVtrlZQ.Id5se0VDOC2rNk7zPr5oy','11139',0,NULL,'2020-11-24 19:13:01','2020-11-24 22:56:33');
INSERT INTO `users` VALUES (28,'Gloria Alicia Carcamo Portillo','gloali.carcamo@gmail.com',NULL,'$2y$10$v9Bh4Ih.h/2xfLSIHsYa2.4H.FbCoOEuqmbQgp0gnVv8sfsJsCI86','16081',0,NULL,'2020-11-24 19:14:40','2020-11-24 22:20:08');
INSERT INTO `users` VALUES (29,'Juan Carlos Bustillo Galindo','jbautista@centrourgenciasmedicas.com',NULL,'$2y$10$o.Pb.RjU4fWOzP8BZ/KeWeRwhk5/mEe3cDvlNEM4mQPrWQgYdJ4RS','23193',0,'j3eOJ6YdWmdv24yioeKhHpPwMIbZX9gyRMjXaZH6GPQYRPfWJjBGpLwKkJNn','2020-11-24 19:16:59','2020-11-26 21:57:11');
INSERT INTO `users` VALUES (30,'Jennifer Pamela Montoya Burgos','jen_mobu@hotmail.com',NULL,'$2y$10$ljL8M089fBxTAkRzINaSwuYBF.Q5vqJkTZnc9rwMdzawd1xm2mB1y','14644',0,NULL,'2020-11-24 20:37:33','2020-11-24 22:20:14');
INSERT INTO `users` VALUES (31,'SAMUEL AMBROSIO','samuelambrosio99@gmail.com',NULL,'$2y$10$OirH7amoxeL2HG4d4Ig5quSwTw2GueA1TREuCjYAt1ANOs8ooarJC','00000',0,NULL,'2020-12-03 18:06:27','2021-01-21 09:46:37');
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

-- Dump completed on 2021-01-21  9:10:09
