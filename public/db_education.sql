-- MySQL dump 10.14  Distrib 5.5.65-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: education
-- ------------------------------------------------------
-- Server version	5.5.65-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'HuuTrang','nguyentrang97bn@gmail.com',NULL,'$2y$10$rayJ/U4/vyAJn0dhPnehH..GNtioVtH7he0BKJHWsCkMGAqMY229S','0986420994',1,NULL,NULL,NULL,NULL),(2,'v??n nhi???m','nguyennadadahiemmc2k@gmail.com',NULL,'$2y$10$bWpjLt6T8y7pnBqutWSG3eSkItFK6AAOlFQXnzMShCUUmvpd3/XKG','0766592222',0,NULL,NULL,'2020-11-04 12:53:51','2020-11-04 12:53:51'),(3,'D?????c NV','duocnv@gmail.com',NULL,'$2y$10$LebL4i/wX.mYZqLQQkbejOVdNSDL1hZyvF7aBk3lL0saZr12qYwTO','0988111222',1,NULL,NULL,'2020-12-27 02:21:36','2020-12-27 02:21:36');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT '0',
  `a_status` tinyint(4) NOT NULL DEFAULT '1',
  `a_menu_id` int(11) NOT NULL DEFAULT '0',
  `a_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_auth_id` int(11) NOT NULL DEFAULT '0',
  `a_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_keyword_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_a_slug_unique` (`a_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_keywords`
--

DROP TABLE IF EXISTS `articles_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_keywords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ak_article_id` int(11) NOT NULL DEFAULT '0',
  `ak_keyword_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_keywords_ak_article_id_ak_keyword_id_unique` (`ak_article_id`,`ak_keyword_id`),
  KEY `articles_keywords_ak_article_id_index` (`ak_article_id`),
  KEY `articles_keywords_ak_keyword_id_index` (`ak_keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_keywords`
--

LOCK TABLES `articles_keywords` WRITE;
/*!40000 ALTER TABLE `articles_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_sort` tinyint(4) NOT NULL DEFAULT '0',
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `c_hot` tinyint(4) NOT NULL DEFAULT '0',
  `c_position_3` tinyint(4) NOT NULL DEFAULT '0',
  `c_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `c_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `c_parent_id` int(11) NOT NULL DEFAULT '0',
  `c_child_all` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_all` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_keyword_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  KEY `categories_c_parent_id_index` (`c_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Kho?? h???c combo','khoa-hoc-combo','fa fa-cubes',0,1,1,0,0,1,0,NULL,NULL,'Kho?? h???c combo',NULL,NULL,'Kho?? h???c combo','2020-10-28 23:26:51','2020-10-29 12:34:50'),(2,'Sale & CSKH','sale-cskh','fa fa-female',0,1,1,0,0,1,0,NULL,NULL,'Sale & CSKH',NULL,NULL,'Sale & CSKH','2020-10-28 23:27:24','2020-10-29 12:35:05'),(3,'K??? n??ng c??ng vi???c','ky-nang-cong-viec','fa fa-mortar-board',0,1,1,0,0,1,0,NULL,NULL,'K??? n??ng c??ng vi???c',NULL,NULL,'K??? n??ng c??ng vi???c','2020-10-28 23:31:31','2020-10-29 12:34:57'),(4,'K??? n??ng con ng?????i','ky-nang-con-nguoi','fa fa-graduation-cap',0,1,0,0,0,0,0,NULL,NULL,'K??? n??ng con ng?????i',NULL,NULL,'K??? n??ng con ng?????i','2020-10-28 23:32:59',NULL),(5,'K??? n??ng qu???n tr???','ky-nang-quan-tri','fa fa-magic',0,1,0,0,0,0,0,NULL,NULL,'K??? n??ng qu???n tr???',NULL,NULL,'K??? n??ng qu???ng tr???','2020-10-28 23:33:37','2020-11-03 07:09:15'),(6,'B??n h??ng','ban-hang',NULL,0,1,0,0,0,0,2,NULL,NULL,'B??n h??ng',NULL,NULL,'B??n h??ng','2020-10-30 21:36:34',NULL),(7,'Ch??m s??c kh??ch h??ng','cham-soc-khach-h',NULL,0,1,0,0,0,0,2,NULL,NULL,'Ch??m s??c kh??ch h',NULL,NULL,'Ch??m s??c kh??ch h??ng','2020-10-30 21:36:47',NULL),(8,'Telesales','telesales',NULL,0,1,0,0,0,0,2,NULL,NULL,'Telesales',NULL,NULL,'Telesales','2020-10-30 21:37:07',NULL),(9,'Ph??t tri???n c?? nh??n','phat-trien-ca-nhan','fa fa-user-o',0,1,0,0,0,0,0,NULL,NULL,'Ph??t tri???n c?? nh??n',NULL,NULL,'Ph??t tri???n c?? nh??n','2020-10-31 02:53:40',NULL),(10,'Thi???t k??? ????? ho???','thiet-ke-do-hoa','fa fa-shower',0,1,0,0,0,0,0,NULL,NULL,'Thi???t k??? ????? ho???',NULL,NULL,'Thi???t k??? ????? ho???','2020-10-31 02:54:16',NULL),(11,'?????i s???ng','doi-song','fa fa-bank',0,1,0,0,0,0,0,NULL,NULL,'?????i s???ng',NULL,NULL,'?????i s???ng','2020-10-31 02:54:49',NULL),(12,'Kinh doanh - Kh???i nghi???p','kinh-doanh---khoi-nghiep','fa fa-building',0,1,0,0,0,0,0,NULL,NULL,'Kinh doanh - Kh???i nghi???p',NULL,NULL,'Kinh doanh - Kh???i nghi???p','2020-10-31 02:55:19',NULL),(13,'Ngo???i ng???','ngoai-ngu','fa fa-compass',0,1,0,0,0,0,0,NULL,NULL,'Ngo???i ng???',NULL,NULL,'Ngo???i ng???','2020-10-31 02:56:31',NULL),(14,'T??i ch??nh k??? to??n','tai-chinh-ke-toan','fa fa-gears',0,1,0,0,0,0,0,NULL,NULL,'T??i ch??nh k??? to??n',NULL,NULL,'T??i ch??nh k??? to??n','2020-10-31 02:57:52',NULL),(15,'Ph???n m???m','phan-mem','fa fa-film',0,1,0,0,0,0,0,NULL,NULL,'Ph???n m???m',NULL,NULL,'Ph???n m???m','2020-10-31 02:59:01',NULL),(16,'Marketing v?? truy???n th??ng','marketing-va-truyen-thong','fa fa-line-chart',0,1,0,0,0,0,0,NULL,NULL,'Marketing v?? truy???n th??ng',NULL,NULL,'Marketing v?? truy???n th??ng','2020-10-31 02:59:40',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_bottom` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,NULL,'codethue94@gmail.com','0986420994','?? 2019 - B???n quy???n c???a C??ng Ty TNHH ????o T???o Ngu???n L???c Vi???t (NLV Training)\r\nTr??? s??? ch??nh: T???ng 20, To?? nh?? E.Town Central, S??? 11 ??o??n V??n B??, Ph?????ng 12, Qu???n 4, TP. H??? Ch?? Minh, Vi???t Nam\r\nGi???y ph??p ??KKD s??? 0315889657 do S??? K??? ho???ch v?? ?????u t?? TPHCM c???p','2020-11-21 09:11:08','2020-11-21 09:11:08'),(2,NULL,'abc@gmail.com','0986420994','?? 2019 - B???n quy???n c???a C??ng Ty TNHH ????o T???o Ngu???n L???c Vi???t (NLV Training)\r\nTr??? s??? ch??nh: T???ng 20, To?? nh?? E.Town Central, S??? 11 ??o??n V??n B??, Ph?????ng 12, Qu???n 4, TP. H??? Ch?? Minh, Vi???t Nam\r\nGi???y ph??p ??KKD s??? 0315889657 do S??? K??? ho???ch v?? ?????u t?? TPHCM c???p','2020-12-20 09:02:28','2020-12-20 09:02:28');
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_total_time` tinyint(4) NOT NULL DEFAULT '0',
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT '0',
  `c_position_3` tinyint(4) NOT NULL DEFAULT '0',
  `c_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `c_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `c_sale` tinyint(4) NOT NULL DEFAULT '0',
  `c_level` tinyint(4) NOT NULL DEFAULT '0',
  `c_price` int(11) NOT NULL DEFAULT '0',
  `c_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_keyword_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_teacher_id` int(11) NOT NULL DEFAULT '0',
  `c_category_id` int(11) NOT NULL DEFAULT '0',
  `c_total_evaluate` int(11) NOT NULL DEFAULT '0',
  `c_total_star` int(11) NOT NULL DEFAULT '0',
  `c_total_pay` int(11) NOT NULL DEFAULT '0',
  `c_video_demo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_about` text COLLATE utf8mb4_unicode_ci,
  `c_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_c_slug_unique` (`c_slug`),
  KEY `courses_c_teacher_id_index` (`c_teacher_id`),
  KEY `courses_c_category_id_index` (`c_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'B?? quy???t gia t??ng l???i nhu???n b???n v???ng trong kinh doanh b???t ?????ng s???n cho ng?????i m???i c?? v???n ??t','bi-quyet-gia-tang-loi-nhuan-ben-vung-trong-kinh-doanh-bat-dong-san-cho-nguoi-moi-co-von-it',20,1,'2020-10-31__video-cover-image-url-1602234996crop-730x436.jpg',1,0,0,1,5,0,20000,'B?? quy???t gia t??ng l???i nhu???n b???n v???ng trong kinh doanh b???t ?????ng s???n cho ng?????i m???i c?? v???n ??t',NULL,'B?? quy???t gia t??ng l???i nhu???n b???n v???ng trong kinh doanh b???t ?????ng s???n cho ng?????i m???i c?? v???n ??t',4,1,0,0,0,NULL,'05 n??m kinh nghi???m tr???i nghi???m tri???n khai l??m th???c t??? nhi???u th????ng v??? kinh doanh MUA NH?? S???A CHO THU?? v?? MUA NH?? S???A B??N ??em l???i  m???c l???i nhu???n b???n v???ng cho c?? nh??n v?? c??c ?????i t??c g??p v???n.\r\nC??ch ????y 5 n??m, anh v???n t???ng l?? m???t ng?????i l??m v??n ph??ng, nh??ng v???i ni???m ??am m?? v??? b???t ?????ng s???n c??ng nh?? mong mu???n t???o th??m ngu???n thu nh???p cho gia ????nh, anh ???? kh??ng ng???ng h???c h???i kinh nghi???m c???a nh???ng ng?????i ??i tr?????c, nh???ng ng?????i th??nh c??ng trong l??nh v???c kinh doanh b???t ?????ng s???n v?? ???? tri???n khai th???c t???, ????c r??t kinh nghi???m ????? t???o ra nhi???u th????ng v??? kinh doanh th??nh c??ng cho m??nh v?? c??c c???ng s??? g??p v???n',NULL,'2020-10-30 21:39:06','2020-10-31 02:44:26'),(2,'V?????t qua bu???n ch??n v?? lo ??u','vuot-qua-buon-chan-va-lo-au',20,1,'2020-10-31__video-cover-image-url-1602234996crop-730x436.jpg',1,0,0,1,0,0,0,'V?????t qua bu???n ch??n v?? lo ??u',NULL,'V?????t qua bu???n ch??n v?? lo ??u',4,1,0,0,0,NULL,'N???i dung ??ang ???????c c???p nh???t',NULL,'2020-10-31 02:46:23',NULL),(3,'Photoshop cho thi???t k??? web','photoshop-cho-thiet-ke-web',40,1,'2020-10-31__image-url-1599711018.jpg',1,0,0,0,0,0,0,'Photoshop cho thi???t k??? web',NULL,'Photoshop cho thi???t k??? web',4,1,0,0,0,NULL,NULL,NULL,'2020-10-31 02:47:16',NULL),(4,'30 ph??t t?? duy n??i Ti???ng Anh l??u lo??t','30-phut-tu-duy-noi-tieng-anh-luu-loat',33,1,'2020-10-31__image-url-1595301026.jpg',0,0,0,0,0,0,0,'30 ph??t t?? duy n??i Ti???ng Anh l??u lo??t',NULL,'30 ph??t t?? duy n??i Ti???ng Anh l??u lo??t',4,1,0,0,0,NULL,NULL,NULL,'2020-10-31 02:48:50',NULL),(5,'H???c ph??t ??m Ti???ng Trung c?? b???n','hoc-phat-am-tieng-trung-co-ban',55,1,'2020-10-31__image-url-1599547569.jpg',0,0,0,0,0,0,0,'H???c ph??t ??m Ti???ng Trung c?? b???n',NULL,'H???c ph??t ??m Ti???ng Trung c?? b???n',4,1,0,0,0,NULL,NULL,NULL,'2020-10-31 02:49:29',NULL),(6,'B??? 3 k??? n??ng giao ti???p v?? g??y ???nh h?????ng - G??i Chuy??n nghi???p','bo-3-ky-nang-giao-tiep-va-gay-anh-huong---goi-chuyen-nghiep',40,1,'2020-11-01__image-url-1505536044crop-730x436.jpg',1,0,0,1,0,0,200000,'B??? 3 k??? n??ng giao ti???p v?? g??y ???nh h?????ng - G??i Chuy??n nghi???p',NULL,'B??? 3 k??? n??ng giao ti???p v?? g??y ???nh h?????ng - G??i Chuy??n nghi???p',3,2,0,0,0,NULL,NULL,NULL,'2020-11-01 02:32:59',NULL),(7,'T?? duy logic v?? gi???i quy???t v???n ?????','tu-duy-logic-va-giai-quyet-van-de',30,1,'2020-11-02__video-cover-image-url-1600657858crop-730x436.jpg',0,0,0,0,0,0,120000,'T?? duy logic v?? gi???i quy???t v???n ?????',NULL,'T?? duy logic v?? gi???i quy???t v???n ?????',3,2,0,0,0,NULL,NULL,NULL,'2020-11-02 11:44:54',NULL),(8,'Ngh??? thu???t b??n h??ng qua ??i???n tho???i','nghe-thuat-ban-hang-qua-dien-thoai',45,1,'2020-11-02__2.jpg',0,0,0,0,2,0,198000,'Ngh??? thu???t b??n h??ng qua ??i???n tho???i',NULL,'Ngh??? thu???t b??n h??ng qua ??i???n tho???i',2,2,0,0,0,NULL,NULL,NULL,'2020-11-02 11:46:13',NULL),(9,'Thi???t K??? Tr??nh Chi???u PowerPoint 2016 T??? A-Z','thiet-ke-trinh-chieu-powerpoint-2016-tu-a-z',5,1,'2020-11-03__do-hoa-1.jpg',0,0,0,0,0,0,190000,'Thi???t K??? Tr??nh Chi???u PowerPoint 2016 T??? A-Z',NULL,'Thi???t K??? Tr??nh Chi???u PowerPoint 2016 T??? A-Z',4,3,0,0,0,NULL,NULL,NULL,'2020-11-03 02:10:11',NULL),(10,'Gi???i m?? m??u s???c v?? b??? c???c trong thi????t k????','giai-ma-mau-sac-va-bo-cuc-trong-thiet-ke',6,1,'2020-11-03__do-hoa-2.jpg',0,0,0,0,0,0,249999,'Gi???i m?? m??u s???c v?? b??? c???c trong thi????t k????',NULL,'Gi???i m?? m??u s???c v?? b??? c???c trong thi????t k????',4,10,0,0,0,NULL,NULL,NULL,'2020-11-03 02:16:35','2020-11-03 02:28:42'),(11,'???nh s???n ph???m chuy??n nghi???p','anh-san-pham-chuyen-nghiep',6,1,'2020-11-03__dohoa3.jpg',0,0,0,0,0,0,234567,'???nh s???n ph???m chuy??n nghi???p',NULL,'???nh s???n ph???m chuy??n nghi???p',4,10,0,0,0,NULL,NULL,NULL,'2020-11-03 02:20:25','2020-11-03 02:28:28'),(12,'T??? tin thi???t k??? chi ti???t 3D v???i Autodesk Inventor Professional','tu-tin-thiet-ke-chi-tiet-3d-voi-autodesk-inventor-professional',10,1,'2020-11-03__dh4.jpg',0,0,0,0,0,0,567890,'T??? tin thi???t k??? chi ti???t 3D v???i Autodesk Inventor Professional',NULL,'T??? tin thi???t k??? chi ti???t 3D v???i Autodesk Inventor Professional',4,10,0,0,0,NULL,NULL,NULL,'2020-11-03 02:21:31','2020-11-03 02:28:15'),(13,'D???ng h??nh nh??n v???t 3D v???i Blender','dung-hinh-nhan-vat-3d-voi-blender',11,1,'2020-11-03__dh5.png',0,0,0,0,0,0,345678,'D???ng h??nh nh??n v???t 3D v???i Blender',NULL,'D???ng h??nh nh??n v???t 3D v???i Blender',4,10,0,0,0,NULL,NULL,NULL,'2020-11-03 02:22:24','2020-11-03 02:27:58'),(14,'English for Business Presentation - 07 b?????c x??y d???ng b??i thuy???t tr??nh b???ng ti???ng Anh chuy??n nghi???p','english-for-business-presentation---07-buoc-xay-dung-bai-thuyet-trinh-bang-tieng-anh-chuyen-nghiep',0,1,'2020-11-03__annoi1.jpg',0,0,0,0,0,0,556789,'English for Business Presentation - 07 b?????c x??y d???ng b??i thuy???t tr??nh b???ng ti???ng Anh chuy??n nghi???p',NULL,'English for Business Presentation - 07 b?????c x??y d???ng b??i thuy???t tr??nh b???ng ti???ng Anh chuy??n nghi???p',4,4,0,0,0,NULL,NULL,NULL,'2020-11-03 02:32:29',NULL),(15,'???ng d???ng c??ng c??? DISC trong ph??n t??ch h??nh vi kh??ch h??ng','ung-dung-storytelling-nghe-thuat-ke-chuyen-trong-thuyet-trinh-cho-kinh-doanh',0,1,'2020-11-03__annoi2.jpg',0,0,0,0,0,0,489200,'???ng D???ng Storytelling: Ngh??? Thu???t K??? Chuy???n Trong Thuy???t Tr??nh Cho Kinh Doanh',NULL,'???ng d???ng c??ng c??? DISC trong ph??n t??ch h??nh vi kh??ch h??ng',4,3,0,0,0,NULL,NULL,NULL,'2020-11-03 02:37:35',NULL),(16,'V?????t tr???i sau ?????i d???ch v???i b??? 7 k??? n??ng thi???t y???u','vuot-troi-sau-dai-dich-voi-bo-7-ky-nang-thiet-yeu',0,1,'2020-11-03__annoi3.jpg',0,0,0,0,0,0,213123,'V?????t tr???i sau ?????i d???ch v???i b??? 7 k??? n??ng thi???t y???u',NULL,'V?????t tr???i sau ?????i d???ch v???i b??? 7 k??? n??ng thi???t y???u',4,3,0,0,0,NULL,NULL,NULL,'2020-11-03 02:39:38',NULL),(17,'???ng d???ng c??ng c??? DISC trong ph??n t??ch h??nh vi d??nh cho l??nh ?????o','ung-dung-cong-cu-disc-trong-phan-tich-hanh-vi-danh-cho-lanh-dao',0,1,'2020-11-03__giuaotiep.png',0,0,0,0,0,0,312333,'???ng d???ng c??ng c??? DISC trong ph??n t??ch h??nh vi d??nh cho l??nh ?????o',NULL,'???ng d???ng c??ng c??? DISC trong ph??n t??ch h??nh vi d??nh cho l??nh ?????o',4,4,0,0,0,NULL,NULL,NULL,'2020-11-03 02:40:41',NULL),(18,'K??? N??ng Ph??t Tri???n ?????ng L???c Cho B???n Th??n V?? ?????i Nh??m','ky-nang-phat-trien-dong-luc-cho-ban-than-va-doi-nhom',0,1,'2020-11-03__connguoi1.jpg',0,0,0,0,0,0,312312,'K??? N??ng Ph??t Tri???n ?????ng L???c Cho B???n Th??n V?? ?????i Nh??m',NULL,'K??? N??ng Ph??t Tri???n ?????ng L???c Cho B???n Th??n V?? ?????i Nh??m',4,4,0,0,0,NULL,NULL,NULL,'2020-11-03 02:41:56',NULL),(19,'Gi???i Ph??p ????o T???o V?? Ph??t Tri???n Nh??n Vi??n','giai-phap-dao-tao-va-phat-trien-nhan-vien',0,1,'2020-11-03__phattrien.jpg',0,0,0,0,0,0,322433,'Gi???i Ph??p ????o T???o V?? Ph??t Tri???n Nh??n Vi??n',NULL,'Gi???i Ph??p ????o T???o V?? Ph??t Tri???n Nh??n Vi??n',4,4,0,0,0,NULL,NULL,NULL,'2020-11-03 02:44:50',NULL),(20,'T??i c???u tr??c ngu???n l???c trong v?? sau Covid','tai-cau-truc-nguon-luc-trong-va-sau-covid',0,1,'2020-11-03__image-url-1599539687crop-730x436.jpg',0,0,0,0,0,0,357543,'T??i c???u tr??c ngu???n l???c trong v?? sau Covid',NULL,'T??i c???u tr??c ngu???n l???c trong v?? sau Covid',4,5,0,0,0,NULL,NULL,NULL,'2020-11-03 02:47:06',NULL),(21,'Ti???ng Trung kinh doanh th???c chi???n','tieng-trung-kinh-doanh-thuc-chien',20,1,'2020-11-03__1.png',0,0,0,0,0,0,320000,'Ti???ng Trung kinh doanh th???c chi???n',NULL,'Ti???ng Trung kinh doanh th???c chi???n',2,2,0,0,0,NULL,NULL,NULL,'2020-11-03 06:12:24',NULL),(22,'Phong C??ch Chuy??n Nghi???p','phong-cach-chuyen-nghiep',14,1,'2020-11-03__2.jpg',0,0,0,0,0,0,600000,'Phong C??ch Chuy??n Nghi???p',NULL,'Phong C??ch Chuy??n Nghi???p',4,2,0,0,0,NULL,NULL,NULL,'2020-11-03 06:13:53',NULL),(23,'7 B??????c ba??n ha??ng chuy??n nghi????p','7-buoc-ban-hang-chuyen-nghiep',12,1,'2020-11-03__3.jpg',0,0,0,0,0,0,300000,'7 B??????c ba??n ha??ng chuy??n nghi????p',NULL,'7 B??????c ba??n ha??ng chuy??n nghi????p',4,1,0,0,0,NULL,NULL,NULL,'2020-11-03 06:14:50','2020-11-03 06:15:07'),(24,'12 B??????c Tr???? Tha??nh T?? V????n Vi??n Ba??o Hi????m Nh??n Tho?? Tri????u ???? MDRT','12-buoc-tro-thanh-tu-van-vien-bao-hiem-nhan-tho-trieu-do-mdrt',16,1,'2020-11-03__4.jpg',0,0,0,0,0,0,700000,'12 B??????c Tr???? Tha??nh T?? V????n Vi??n Ba??o Hi????m Nh??n Tho?? Tri????u ???? MDRT',NULL,'12 B??????c Tr???? Tha??nh T?? V????n Vi??n Ba??o Hi????m Nh??n Tho?? Tri????u ???? MDRT',4,2,0,0,0,NULL,NULL,NULL,'2020-11-03 06:16:00',NULL),(25,'K??? N??ng B??n B???o Hi???m Nh??n Th??? Chuy??n Nghi???p','ky-nang-ban-bao-hiem-nhan-tho-chuyen-nghiep',8,1,'2020-11-03__5.jpg',0,0,0,0,0,0,550000,'K??? N??ng B??n B???o Hi???m Nh??n Th??? Chuy??n Nghi???p',NULL,'K??? N??ng B??n B???o Hi???m Nh??n Th??? Chuy??n Nghi???p',3,2,0,0,0,NULL,NULL,NULL,'2020-11-03 06:17:24',NULL),(26,'???ng d???ng Trello v??o qu???n l?? d??? ??n','ung-dung-trello-vao-quan-ly-du-an',5,1,'2020-11-03__6.jpg',0,0,0,0,0,0,50000,'???ng d???ng Trello v??o qu???n l?? d??? ??n',NULL,'???ng d???ng Trello v??o qu???n l?? d??? ??n',2,3,0,0,0,NULL,NULL,NULL,'2020-11-03 06:19:12',NULL),(27,'Ng??n ng??? h??nh th??? trong thuy???t tr??nh','ngon-ngu-hinh-the-trong-thuyet-trinh',13,1,'2020-11-03__7.jpg',0,0,0,0,0,0,240000,'Ng??n ng??? h??nh th??? trong thuy???t tr??nh',NULL,'Ng??n ng??? h??nh th??? trong thuy???t tr??nh',4,3,0,0,0,NULL,NULL,NULL,'2020-11-03 06:20:30',NULL),(28,'K??? n??ng ????? xu???t t??ng l????ng','ky-nang-de-xuat-tang-luong',16,1,'2020-11-03__8.jpg',0,0,0,0,0,0,200000,'K??? n??ng ????? xu???t t??ng l????ng',NULL,'K??? n??ng ????? xu???t t??ng l????ng',4,1,0,0,0,NULL,NULL,NULL,'2020-11-03 06:22:12',NULL),(29,'K??? n??ng thuy???t tr??nh v?? n??i tr?????c c??ng ch??ng','ky-nang-thuyet-trinh-va-noi-truoc-cong-chung',16,1,'2020-11-03__9.jpg',0,0,0,0,0,0,200000,'K??? n??ng thuy???t tr??nh v?? n??i tr?????c c??ng ch??ng',NULL,'K??? n??ng thuy???t tr??nh v?? n??i tr?????c c??ng ch??ng',3,3,0,0,0,NULL,NULL,NULL,'2020-11-03 06:23:16',NULL),(30,'Tri?? tu???? xu??c ca??m trong qua??n ly?? doanh nghi????p','tri-tue-xuc-cam-trong-quan-ly-doanh-nghiep',9,1,'2020-11-03__10.png',0,0,0,0,0,0,340000,'Tri?? tu???? xu??c ca??m trong qua??n ly?? doanh nghi????p',NULL,'Tri?? tu???? xu??c ca??m trong qua??n ly?? doanh nghi????p',3,4,0,0,0,NULL,NULL,NULL,'2020-11-03 06:24:51',NULL),(31,'Ph??t ??m ti???ng Anh t??? ng???ng ?????n s??i','phat-am-tieng-anh-tu-ngong-den-soi',36,1,'2020-11-03__11.jpg',0,0,0,0,0,0,520000,'Ph??t ??m ti???ng Anh t??? ng???ng ?????n s??i',NULL,'Ph??t ??m ti???ng Anh t??? ng???ng ?????n s??i',3,4,0,0,0,NULL,NULL,NULL,'2020-11-03 06:25:59',NULL),(32,'K??? N??ng Ph??n Quy???n Trong Doanh Nghi???p','ky-nang-phan-quyen-trong-doanh-nghiep',12,1,'2020-11-03__12.jpg',0,0,0,0,0,0,500000,'K??? N??ng Ph??n Quy???n Trong Doanh Nghi???p',NULL,'K??? N??ng Ph??n Quy???n Trong Doanh Nghi???p',3,5,0,0,0,NULL,NULL,NULL,'2020-11-03 06:27:10',NULL),(33,'H???c L??m L??nh ?????o','hoc-lam-lanh-dao',12,1,'2020-11-03__13.jpg',0,0,0,0,0,0,390000,'H???c L??m L??nh ?????o',NULL,'H???c L??m L??nh ?????o',3,5,0,0,0,NULL,NULL,NULL,'2020-11-03 06:27:57',NULL),(34,'N??ng T???m T??i N??ng Tr???','nang-tam-tai-nang-tre',7,1,'2020-11-03__14.jpg',0,0,0,0,0,0,590000,'N??ng T???m T??i N??ng Tr???',NULL,'N??ng T???m T??i N??ng Tr???',2,5,0,0,0,NULL,NULL,NULL,'2020-11-03 06:28:45',NULL),(35,'X??y d???ng doanh nghi???p th??nh c??ng','xay-dung-doanh-nghiep-thanh-cong',26,1,'2020-11-03__15.jpg',1,0,0,1,0,0,400000,'X??y d???ng doanh nghi???p th??nh c??ng',NULL,'X??y d???ng doanh nghi???p th??nh c??ng',4,1,0,0,0,NULL,NULL,NULL,'2020-11-03 06:29:29','2020-11-03 07:18:32'),(37,'Ho??n thi???n k??? n??ng ch??i guitar t??? c?? b???n ?????n chuy??n s??u','hoan-thien-ky-nang-choi-guitar-tu-co-ban-den-chuyen-sau',7,1,'2020-11-03__17.jpg',0,0,0,0,0,0,400000,'Ho??n thi???n k??? n??ng ch??i guitar t??? c?? b???n ?????n chuy??n s??u',NULL,'Ho??n thi???n k??? n??ng ch??i guitar t??? c?? b???n ?????n chuy??n s??u',2,11,0,0,0,NULL,NULL,NULL,'2020-11-03 06:32:35',NULL),(38,'Ch???p ???nh s???n ph???m chuy??n nghi???p','chup-anh-san-pham-chuyen-nghiep',22,1,'2020-11-03__18.jpg',0,0,0,0,0,0,300000,'Ch???p ???nh s???n ph???m chuy??n nghi???p',NULL,'Ch???p ???nh s???n ph???m chuy??n nghi???p',2,11,0,0,0,NULL,NULL,NULL,'2020-11-03 06:33:12',NULL),(39,'Ki???m so??t c???m x??c v?? c???i thi???n gi???c ng??? ???ng d???ng Yoga v?? Thi???n','kiem-soat-cam-xuc-va-cai-thien-giac-ngu-ung-dung-yoga-va-thien',26,1,'2020-11-03__19.jpg',0,0,0,0,0,0,700000,'Ki???m so??t c???m x??c v?? c???i thi???n gi???c ng??? ???ng d???ng Yoga v?? Thi???n',NULL,'Ki???m so??t c???m x??c v?? c???i thi???n gi???c ng??? ???ng d???ng Yoga v?? Thi???n',3,11,0,0,0,NULL,NULL,NULL,'2020-11-03 06:33:43',NULL),(40,'Thi???n v?? qu???n tr??? c???m x??c cho ng?????i hi???n ?????i','thien-va-quan-tri-cam-xuc-cho-nguoi-hien-dai',26,1,'2020-11-03__20.jpg',0,0,0,0,0,0,430000,'Thi???n v?? qu???n tr??? c???m x??c cho ng?????i hi???n ?????i',NULL,'Thi???n v?? qu???n tr??? c???m x??c cho ng?????i hi???n ?????i',4,11,0,0,0,NULL,NULL,NULL,'2020-11-03 06:34:25','2020-11-03 06:34:55'),(41,'H???c nh???y Shuffle Dance c??ng Y???n Cua','hoc-nhay-shuffle-dance-cung-yen-cua',36,1,'2020-11-03__21.jpg',0,0,0,0,0,0,640000,'H???c nh???y Shuffle Dance c??ng Y???n Cua',NULL,'H???c nh???y Shuffle Dance c??ng Y???n Cua',2,11,0,0,0,NULL,NULL,NULL,'2020-11-03 06:37:40',NULL),(43,'Kh??a h???c ?????u t?? b???t ?????ng s???n thu?? v?? cho thu?? th??nh c??ng','khoa-hoc-dau-tu-bat-dong-san-thue-va-cho-thue-thanh-cong',15,1,'2020-11-03__23.jpg',0,0,0,0,0,0,190000,'Kh??a h???c ?????u t?? b???t ?????ng s???n thu?? v?? cho thu?? th??nh c??ng',NULL,'Kh??a h???c ?????u t?? b???t ?????ng s???n thu?? v?? cho thu?? th??nh c??ng',2,9,0,0,0,NULL,NULL,NULL,'2020-11-03 06:41:50',NULL),(44,'L??m Sao T??m Vi???c Hi???u Qu???','lam-sao-tim-viec-hieu-qua',32,1,'2020-11-03__24.jpg',0,0,0,0,0,0,290000,'L??m Sao T??m Vi???c Hi???u Qu???',NULL,'L??m Sao T??m Vi???c Hi???u Qu???',2,9,0,0,0,NULL,NULL,NULL,'2020-11-03 06:42:34',NULL),(48,'C???m nang gi??p b???n du h???c an to??n v?? ti???t ki???m','cam-nang-giup-ban-du-hoc-an-toan-va-tiet-kiem',38,1,'2020-11-03__27.jpg',1,0,0,1,0,0,600000,'C???m nang gi??p b???n du h???c an to??n v?? ti???t ki???m',NULL,'C???m nang gi??p b???n du h???c an to??n v?? ti???t ki???m',4,1,0,0,0,NULL,NULL,NULL,'2020-11-03 06:46:00','2020-11-03 07:18:13'),(49,'30 ng??y tinh th??ng Mind Map','30-ngay-tinh-thong-mind-map',28,1,'2020-11-03__28.jpg',1,0,0,1,0,0,500000,'30 ng??y tinh th??ng Mind Map',NULL,'30 ng??y tinh th??ng Mind Map',4,1,0,0,0,NULL,NULL,NULL,'2020-11-03 06:46:44','2020-11-03 07:18:08'),(50,'K??? n??ng l??m vi???c ??? c??ng ty n?????c ngo??i','ky-nang-lam-viec-o-cong-ty-nuoc-ngoai',18,1,'2020-11-03__29.jpg',1,0,0,1,0,0,200000,'K??? n??ng l??m vi???c ??? c??ng ty n?????c ngo??i',NULL,'K??? n??ng l??m vi???c ??? c??ng ty n?????c ngo??i',4,1,3,15,2,NULL,NULL,NULL,'2020-11-03 06:47:24','2020-12-27 02:49:40'),(51,'Kh??a h???c Photosho','khoa-hoc-photosho',0,1,NULL,0,0,0,0,0,0,467545,'Kh??a h???c Photosho',NULL,'Kh??a h???c Photosho',4,19,0,0,0,NULL,NULL,NULL,'2020-11-04 10:21:21','2020-11-04 10:46:32'),(52,'Kh??a H???c N??ng Cao K??? N??ng M???m','khoa-hoc-nang-cao-ky-nang-mem',0,1,NULL,0,0,0,0,0,0,500000,'Kh??a H???c N??ng Cao K??? N??ng M???m',NULL,'Kh??a H???c N??ng Cao K??? N??ng M???m',4,10,0,0,0,NULL,NULL,NULL,'2020-11-04 10:23:45','2020-11-04 10:28:27'),(54,'Kh??a h???c Facebook','khoa-hoc-facebook',0,1,NULL,0,0,0,0,0,0,5000000,'Kh??a h???c Facebook',NULL,'Kh??a h???c Facebook',2,17,0,0,0,NULL,NULL,NULL,'2020-11-04 10:39:15',NULL),(55,'Qu???ng C??o Instagram','quang-cao-instagram',0,1,NULL,0,0,0,0,0,0,5000000,'Qu???ng C??o Instagram',NULL,'Qu???ng C??o Instagram',4,17,0,0,0,NULL,NULL,NULL,'2020-11-04 10:44:27',NULL),(56,'Kinh Doanh ?????t Ph??','kinh-doanh-dot-pha',0,1,NULL,0,0,0,0,0,0,1000000,'Kinh Doanh ?????t Ph??',NULL,'Kinh Doanh ?????t Ph??',2,1,0,0,0,NULL,'B???t Ph?? V???i Chi???n Thu???t Kinh Doanh Hot Nh???t 2020',NULL,'2020-11-04 11:18:18','2020-11-13 18:32:12'),(57,'Xu H?????ng Marketing Nh???t ?????nh Ph???i Bi???t','xu-huong-marketing-nhat-dinh-phai-biet',0,1,NULL,0,0,0,0,0,0,2000000,'Xu H?????ng Marketing Nh???t ?????nh Ph???i Bi???t',NULL,'Xu H?????ng Marketing Nh???t ?????nh Ph???i Bi???t',2,1,0,0,0,NULL,'Ki???n th???c c?? b???n trong marketing m?? b???n nh???t ?????nh ph???i n???m r??',NULL,'2020-11-04 11:35:24','2020-11-13 18:32:03'),(58,'????n ?????u xu th??? ??? X??y d???ng c??? m??y b??n h??ng tr??n Tiktok','don-dau-xu-the-xay-dung-co-may-ban-hang-tren-tiktok',0,1,NULL,0,0,0,0,0,0,3000000,'????n ?????u xu th??? ??? X??y d???ng c??? m??y b??n h??ng tr??n Tiktok',NULL,'????n ?????u xu th??? ??? X??y d???ng c??? m??y b??n h??ng tr??n Tiktok',4,18,0,0,0,NULL,'X??y D???ng M???t C??? M??y B??n H??ng Tr??n Tik Tok',NULL,'2020-11-04 12:56:07',NULL),(59,'Facebook Chuy??n S??u Lever 2','facebook-chuyen-sau-lever-2',0,1,NULL,0,0,0,0,0,0,10000000,'Facebook Chuy??n S??u Lever 2',NULL,'Facebook Chuy??n S??u Lever 2',2,1,0,0,0,NULL,'Facebook Chuy??n S??u : Gi??p Ta T???i Gi???n ???????c Ng??n S??ch Khi Ch???y',NULL,'2020-11-04 12:57:39','2020-11-13 18:31:53'),(60,'Marketing Chuy??n S??u TikTok','marketing-chuyen-sau-tiktok',0,1,NULL,0,0,0,0,0,0,1000000,'Marketing Chuy??n S??u TikTok',NULL,'Marketing Chuy??n S??u TikTok',2,1,0,0,0,NULL,'Marketing Chuy??n S??u V??? H??? Th??ng TikTok',NULL,'2020-11-04 13:00:50','2020-11-13 18:31:43'),(61,'Qu???ng C??o Facebook B??i B???n','quang-cao-facebook-bai-ban',0,1,NULL,0,0,0,0,0,0,5000000,'Qu???ng C??o Facebook B??i B???n',NULL,'Qu???ng C??o Facebook B??i B???n',2,1,0,0,0,NULL,NULL,NULL,'2020-11-04 13:02:09','2020-11-13 18:31:35');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_contents`
--

DROP TABLE IF EXISTS `courses_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_contents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cc_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_total_video` tinyint(4) NOT NULL DEFAULT '0',
  `cc_total_question` tinyint(4) NOT NULL DEFAULT '0',
  `cc_sort` tinyint(4) NOT NULL DEFAULT '0',
  `cc_course_id` int(11) NOT NULL DEFAULT '0',
  `cc_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_contents_cc_course_id_index` (`cc_course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_contents`
--

LOCK TABLES `courses_contents` WRITE;
/*!40000 ALTER TABLE `courses_contents` DISABLE KEYS */;
INSERT INTO `courses_contents` VALUES (1,'Ph???n 1. Gi???i thi???u t???ng quan',3,0,0,1,'Ph???n 1. Gi???i thi???u t???ng quan','2020-10-30 21:40:28','2020-10-30 21:40:28'),(2,'Ph???n 2. Chi???n l?????c ??i s??n nh??',9,0,0,1,'Ph???n 2. Chi???n l?????c ??i s??n nh??','2020-10-30 21:41:00','2020-10-30 21:41:00'),(3,'Ph???n 3. ?????nh gi?? v?? ????m ph??n gi??',7,0,0,1,'Ph???n 3. ?????nh gi?? v?? ????m ph??n gi??','2020-10-30 21:41:42','2020-10-30 21:41:42'),(4,'Gi???i thi???u',4,0,0,50,'??ang c???p nh???t','2020-12-27 02:35:50',NULL),(5,'Ph???n th??n b??i',8,0,0,50,'??ang c???p nh???t','2020-12-27 02:36:06',NULL),(6,'H?????ng d???n c?? b???n',5,2,0,61,'H?????ng d???n c?? b???n cho c??c h???c sinh v??? to??n l???p 5','2020-12-27 02:46:58','2020-12-27 02:56:45');
/*!40000 ALTER TABLE `courses_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_tags`
--

DROP TABLE IF EXISTS `courses_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ct_course_id` int(11) NOT NULL,
  `ct_tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_tags_ct_course_id_ct_tag_id_unique` (`ct_course_id`,`ct_tag_id`),
  KEY `courses_tags_ct_course_id_index` (`ct_course_id`),
  KEY `courses_tags_ct_tag_id_index` (`ct_tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_tags`
--

LOCK TABLES `courses_tags` WRITE;
/*!40000 ALTER TABLE `courses_tags` DISABLE KEYS */;
INSERT INTO `courses_tags` VALUES (5,1,3),(6,1,5),(7,2,3),(8,3,7),(9,4,4),(10,5,4),(11,6,3),(12,6,5),(13,7,4),(14,7,6),(15,8,2),(16,8,4),(17,9,7),(36,10,2),(37,10,4),(34,11,2),(35,11,7),(32,12,2),(33,12,7),(30,13,2),(31,13,7),(38,14,2),(39,14,5),(40,15,2),(41,15,5),(42,16,3),(43,16,5),(44,17,2),(45,17,4),(46,18,2),(47,18,5),(48,19,2),(49,19,5),(50,20,2),(51,21,4),(52,21,8),(53,22,4),(54,22,5),(57,23,2),(58,23,4),(59,24,3),(60,24,4),(61,25,2),(62,25,3),(63,26,4),(64,26,5),(65,27,4),(66,27,6),(67,28,3),(68,28,4),(69,29,6),(70,29,7),(71,30,7),(72,30,8),(73,31,6),(74,31,8),(75,32,3),(76,32,7),(77,33,3),(78,33,8),(79,34,4),(80,34,6),(120,35,4),(121,35,7),(83,36,3),(84,36,5),(85,36,6),(86,37,3),(87,37,5),(88,38,3),(89,38,5),(96,40,5),(97,40,7),(98,41,3),(99,41,6),(100,43,4),(101,43,5),(102,45,2),(103,45,4),(104,46,4),(105,46,6),(118,47,4),(119,47,6),(115,48,6),(116,48,7),(117,48,8),(113,49,4),(114,49,5),(128,51,7),(124,52,8),(126,53,7),(127,55,2),(141,56,2),(142,56,9),(139,57,9),(140,57,10),(137,61,2),(138,61,9);
/*!40000 ALTER TABLE `courses_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_videos`
--

DROP TABLE IF EXISTS `courses_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_videos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cv_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_link` mediumtext COLLATE utf8mb4_unicode_ci,
  `cv_course_content_id` int(11) NOT NULL DEFAULT '0',
  `cv_course_id` int(11) NOT NULL DEFAULT '0',
  `cv_status` tinyint(4) NOT NULL DEFAULT '0',
  `cv_sort` tinyint(4) NOT NULL DEFAULT '0',
  `cv_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_videos`
--

LOCK TABLES `courses_videos` WRITE;
/*!40000 ALTER TABLE `courses_videos` DISABLE KEYS */;
INSERT INTO `courses_videos` VALUES (1,'H?????ng d???n s??? d???ng Css','2020-12-27__video-khoa-hoc.mov',NULL,4,50,0,0,NULL,'2020-12-27 02:36:35','2020-12-27 03:36:11'),(2,'H?????ng d???n HTML',NULL,'<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9IeMA75UrL0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>',4,50,0,0,NULL,'2020-12-27 02:36:56','2020-12-27 03:36:26'),(3,'H?????ng d???n php',NULL,NULL,5,50,0,0,NULL,'2020-12-27 02:37:41',NULL),(4,'H?????ng d???n Laravel',NULL,NULL,5,50,0,0,NULL,'2020-12-27 02:37:49',NULL),(5,'Video 1','2020-12-27__2020-09-19-08-33-40.mp4',NULL,6,61,0,0,NULL,'2020-12-27 02:47:31','2020-12-27 16:06:05');
/*!40000 ALTER TABLE `courses_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `f_user_id` int(11) NOT NULL DEFAULT '0',
  `f_id` int(11) NOT NULL DEFAULT '0',
  `f_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 course',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `favourites_f_id_f_type_unique` (`f_id`,`f_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
INSERT INTO `favourites` VALUES (1,1,49,1,'2020-12-27 03:04:13',NULL),(14,1,12,1,'2020-12-27 03:07:31',NULL);
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keywords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_sort` tinyint(4) NOT NULL DEFAULT '0',
  `k_status` tinyint(4) NOT NULL DEFAULT '1',
  `k_hot` tinyint(4) NOT NULL DEFAULT '0',
  `k_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_keyword_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keywords_k_slug_unique` (`k_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords_search`
--

DROP TABLE IF EXISTS `keywords_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keywords_search` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ks_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ks_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ks_count` tinyint(4) NOT NULL DEFAULT '0',
  `ks_total_count_search` int(11) NOT NULL DEFAULT '0',
  `ks_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keywords_search_ks_slug_unique` (`ks_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords_search`
--

LOCK TABLES `keywords_search` WRITE;
/*!40000 ALTER TABLE `keywords_search` DISABLE KEYS */;
INSERT INTO `keywords_search` VALUES (1,'kho?? h???c l???p tr??nh','khoa-hoc-lap-trinh',7,0,0,'2020-11-17 11:04:11',NULL),(2,'121','121',0,0,0,'2020-12-15 19:25:59',NULL),(3,'342342424','342342424',0,1,0,'2020-12-23 07:19:34','2020-12-23 07:19:35'),(4,'?????NG H??? EPOS','dong-ho-epos',3,1,0,'2020-12-25 20:01:37','2020-12-25 20:01:45'),(5,'k','k',1,0,0,'2020-12-26 11:48:06',NULL),(6,'????n ?????u xu th??? ??? X??y d???ng c??? m??y b??n h??ng tr??n Tiktok','don-dau-xu-the-xay-dung-co-may-ban-hang-tren-tiktok',18,5,0,'2020-12-26 13:30:17','2020-12-27 18:14:35'),(7,'??d','ad',1,0,0,'2020-12-27 02:46:10',NULL),(8,'a','a',1,0,0,'2020-12-27 02:46:12',NULL),(9,'fa','fa',1,0,0,'2020-12-27 02:46:17',NULL),(10,'Facebook Chuy??n S??u Lever 2','facebook-chuyen-sau-lever-2',6,0,0,'2020-12-27 02:46:22',NULL),(11,'Qu???ng C??o Instagram','quang-cao-instagram',5,0,0,'2020-12-27 05:18:57',NULL),(12,'Qu???ng c??o Facebook','quang-cao-facebook',5,0,0,'2020-12-27 16:06:46',NULL),(13,'\"s??das','sadas',2,0,0,'2020-12-28 01:41:00',NULL),(14,NULL,'',0,0,0,'2020-12-28 02:59:06',NULL),(15,'Qu???ng C??o Facebook B??i B???n','quang-cao-facebook-bai-ban',9,0,0,'2020-12-28 02:59:13',NULL);
/*!40000 ALTER TABLE `keywords_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `m_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_sort` tinyint(4) NOT NULL DEFAULT '0',
  `m_status` tinyint(4) NOT NULL DEFAULT '1',
  `m_hot` tinyint(4) NOT NULL DEFAULT '0',
  `m_position` tinyint(4) NOT NULL DEFAULT '0',
  `m_parent_id` int(11) NOT NULL DEFAULT '0',
  `m_child_all` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_parent_all` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_keyword_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_m_slug_unique` (`m_slug`),
  KEY `menus_m_parent_id_index` (`m_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Tin 1','tin-1','T',0,1,0,0,0,NULL,NULL,'Tin 1',NULL,NULL,'Tin 1','2020-12-20 08:51:41',NULL);
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_10_21_100518_create_tags_table',1),(5,'2020_10_24_035554_create_categories_table',1),(6,'2020_10_24_151226_create_teacher_table',1),(7,'2020_10_24_165810_create_course_table',1),(8,'2020_10_25_163003_create_seo_education_table',2),(9,'2020_10_28_105518_create_slides_table',2),(10,'2020_10_29_160626_alter_column_position_in_table_courses',3),(11,'2020_10_29_170915_create_courses_tags_table',3),(12,'2020_10_29_182230_alter_column_position_in_table_categories',3),(13,'2020_10_30_135047_alter_column_position_in_table_tags',4),(14,'2020_10_30_152022_create_admins_table',4),(15,'2020_10_30_155255_create_permission_tables',4),(16,'2020_10_31_015637_create_courses_contents_table',4),(17,'2020_11_02_134614_create_transactions_table',5),(18,'2020_11_02_134619_create_orders_table',5),(19,'2020_11_03_172005_create_favourites_table',6),(20,'2020_11_04_070600_alter_column_in_table_users',6),(21,'2020_11_07_034829_create_course_videos_table',6),(22,'2020_11_07_072610_create_menus_table',7),(23,'2020_11_07_072617_create_keywords_table',7),(24,'2020_11_07_072623_create_articles_table',7),(25,'2020_11_07_072636_create_articles_keywords_table',7),(26,'2020_11_10_172038_create_seos_blog_table',8),(27,'2020_11_12_123736_alter_column_o_user_id_in_table_orders',8),(28,'2020_11_17_164037_create_teachers_tags_table',9),(29,'2020_11_17_174546_create_keyword_search_table',9),(30,'2020_11_18_083721_alter_column_m_position_in_table_article',10),(31,'2020_11_21_004619_create_votes_table',10),(32,'2020_11_21_152822_create_configuration_table',10),(33,'2020_12_28_071247_alter_column_social_in_table_user',11);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\System\\Admin',1),(1,'App\\Models\\System\\Admin',2),(1,'App\\Models\\System\\Admin',3);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `o_transaction_id` int(11) NOT NULL DEFAULT '0',
  `o_action_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID khoa hoc hoac combo hoac cai gi day',
  `o_user_id` int(11) NOT NULL DEFAULT '0',
  `o_sale` tinyint(4) NOT NULL DEFAULT '0',
  `o_price` int(11) NOT NULL DEFAULT '0',
  `o_status` tinyint(4) NOT NULL DEFAULT '1',
  `o_admin_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_o_transaction_id_index` (`o_transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,20,0,0,357543,1,0,NULL,NULL),(2,2,50,0,0,200000,1,0,NULL,NULL),(3,3,50,1,0,200000,1,0,NULL,NULL),(4,4,49,1,0,500000,1,0,NULL,NULL),(5,6,49,1,0,500000,1,0,NULL,NULL),(6,7,50,1,0,200000,3,0,NULL,NULL),(7,8,50,1,0,200000,3,0,NULL,NULL),(8,9,49,1,0,500000,1,0,NULL,NULL),(9,10,49,1,0,500000,1,0,NULL,NULL),(10,11,54,6,0,5000000,1,0,NULL,NULL),(11,11,12,6,0,567890,1,0,NULL,NULL),(12,12,59,6,0,10000000,1,0,NULL,NULL),(13,13,48,6,0,600000,1,0,NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_permission` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'tag_index','admins','Qu???n l?? t??? kho??',2,'2020-10-30 21:23:49','2020-10-30 21:23:49'),(2,'tag_create','admins','Th??m t??? kho??',2,'2020-10-30 21:24:00','2020-10-30 21:24:00'),(3,'tag_edit','admins','C???p nh???t t??? kho??',2,'2020-10-30 21:24:12','2020-10-30 21:24:12'),(4,'tag_delete','admins','Xo?? t??? kho??',2,'2020-10-30 21:24:22','2020-10-30 21:24:22'),(5,'category_index','admins','Qu???n l?? danh m???c',3,'2020-10-30 21:24:33','2020-10-30 21:24:33'),(6,'category_create','admins','Th??m m???i danh m???c',3,'2020-10-30 21:24:45','2020-10-30 21:24:45'),(7,'category_edit','admins','C???p nh???t danh m???c',3,'2020-10-30 21:24:58','2020-10-30 21:24:58'),(8,'category_delete','admins','Xo?? danh m???c',3,'2020-10-30 21:25:08','2020-10-30 21:25:08'),(9,'teacher_index','admins','Qu???n l?? gi??o vi??n',4,'2020-10-30 21:25:23','2020-10-30 21:25:23'),(10,'teacher_create','admins','Th??m m???i gi??o vi??n',4,'2020-10-30 21:25:34','2020-10-30 21:25:34'),(11,'teacher_edit','admins','C???p nh???t gi??o vi??n',4,'2020-10-30 21:25:51','2020-10-30 21:25:51'),(12,'teacher_delete','admins','Xo?? gi??o vi??n',4,'2020-10-30 21:26:04','2020-10-30 21:26:04'),(13,'course_index','admins','Qu???n l?? kho?? h???c',5,'2020-10-30 21:26:17','2020-10-30 21:26:17'),(14,'course_create','admins','Th??m m???i kho?? h???c',5,'2020-10-30 21:26:28','2020-10-30 21:26:28'),(15,'course_edit','admins','C???p nh???t kho?? h???c',5,'2020-10-30 21:26:58','2020-10-30 21:26:58'),(16,'course_delete','admins','Xo?? kho?? h???c',5,'2020-10-30 21:27:08','2020-10-30 21:27:08'),(17,'course_content_add','admins','Th??m m???i content kho?? h???c',5,'2020-10-30 21:27:29','2020-10-30 21:27:29'),(18,'slide_index','admins','Qu???n l?? slide',9,'2020-10-30 21:28:34','2020-10-30 21:28:34'),(19,'slide_create','admins','Th??m m???i slide',9,'2020-10-30 21:28:48','2020-10-30 21:28:48'),(20,'slide_edit','admins','C???p nh???t slide',9,'2020-10-30 21:28:59','2020-10-30 21:28:59'),(21,'slide_delete','admins','Xo?? slide',9,'2020-10-30 21:29:09','2020-10-30 21:29:09'),(22,'user_index','admins','Qu???n l?? th??nh vi??n',10,'2020-10-30 21:29:29','2020-10-30 21:29:29'),(23,'user_create','admins','Th??m m???i th??nh vi??n',10,'2020-10-30 21:29:43','2020-10-30 21:29:43'),(24,'user_edit','admins','C???p nh???t th??nh vi??n',10,'2020-10-30 21:29:55','2020-10-30 21:29:55'),(25,'user_delete','admins','Xo?? th??nh vi??n',10,'2020-10-30 21:30:06','2020-10-30 21:30:06'),(26,'full','admins','Full to??n quy???n',1,'2020-10-30 21:30:44','2020-10-30 21:30:44');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `role_has_permissions` VALUES (26,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Supper Admin','Full nh??m quy???n','admins','2020-10-30 21:31:13','2020-10-30 21:31:13');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_blog`
--

DROP TABLE IF EXISTS `seo_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_blog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sb_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sb_md5` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sb_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 keyword, 2 menu, 3 article',
  `sb_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `seo_blog_sb_id_sb_type_unique` (`sb_id`,`sb_type`),
  UNIQUE KEY `seo_blog_sb_md5_unique` (`sb_md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_blog`
--

LOCK TABLES `seo_blog` WRITE;
/*!40000 ALTER TABLE `seo_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `seo_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_education`
--

DROP TABLE IF EXISTS `seo_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_education` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `se_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `se_md5` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `se_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 tag, 2 category, 3 course',
  `se_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `seo_education_se_id_se_type_unique` (`se_id`,`se_type`),
  UNIQUE KEY `seo_education_se_md5_unique` (`se_md5`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_education`
--

LOCK TABLES `seo_education` WRITE;
/*!40000 ALTER TABLE `seo_education` DISABLE KEYS */;
INSERT INTO `seo_education` VALUES (1,'khoa-hoc-combo-c','d0ec31a878a0e36967cca2e7728d95f9',1,1,'2020-10-28 23:26:51',NULL),(2,'sale-cskh-c','c89349ee37bcfefd0b921ba49725b7a1',1,2,'2020-10-28 23:27:24',NULL),(3,'ky-nang-cong-viec-c','bfa575805a7d8e221f8b7554c06d978b',1,3,'2020-10-28 23:31:31',NULL),(4,'ky-nang-con-nguoi-c','1d0ff7844fb32e565a54bc43646ad19b',1,4,'2020-10-28 23:32:59',NULL),(5,'ky-nang-quang-tri-c','568894ab1cc3a3252a058e16eb8c24c9',1,5,'2020-10-28 23:33:37',NULL),(6,'bat-dong-san-t','7e2233f88feb04145b0f497ecd67cfae',2,1,'2020-10-29 12:32:32',NULL),(7,'content-t','001b46d1f6cfd776b42c338e04efd688',2,2,'2020-10-29 12:32:52',NULL),(8,'bao-hiem-t','2610abc72f55a6f8e2c1c51d0f5ebe68',2,3,'2020-10-29 12:33:03',NULL),(9,'nang-cao-hieu-su-t','db98eadfe892bc33ed43a8bf2681b732',2,4,'2020-10-29 12:33:14',NULL),(10,'quan-tri-nhan-s-t','c6833a8eeb582fdf845eb8692bee714b',2,5,'2020-10-29 12:33:28',NULL),(11,'luyen-thi-t','a01fe9e5ee160d0db3eb80a9abb7c515',2,6,'2020-10-29 12:33:41',NULL),(12,'lap-trinh-vien-t','9fb457e7b29f91b81a993f80eec36e44',2,7,'2020-10-29 12:33:49',NULL),(13,'toefl-t','b2deecd4697f23c48cb7e3bc816440b6',2,8,'2020-10-29 12:34:09',NULL),(14,'ban-hang-c','83dc118c4e8244945c41bbdef83accb0',1,6,'2020-10-30 21:36:34',NULL),(15,'cham-soc-khach-h-c','4e792ba254e12b7a19c11a55ed4ca020',1,7,'2020-10-30 21:36:47',NULL),(16,'telesales-c','763a573fba8a2329ec97e1c6173eded8',1,8,'2020-10-30 21:37:07',NULL),(17,'bi-quyet-gia-tang-loi-nhuan-ben-vung-trong-kinh-doanh-bat-dong-san-cho-nguoi-moi-co-von-it-cr','019f792dc35562be1562ed96b75567f7',3,1,'2020-10-30 21:39:06',NULL),(18,'vuot-qua-buon-chan-va-lo-au-cr','8dd5f94b8e6075a2a6b2ea2ee8444a19',3,2,'2020-10-31 02:46:23',NULL),(19,'photoshop-cho-thiet-ke-web-cr','e7574894f85d7935128d1cd556f7cda3',3,3,'2020-10-31 02:47:16',NULL),(20,'30-phut-tu-duy-noi-tieng-anh-luu-loat-cr','e16d5712b796fc6bf35449525622b457',3,4,'2020-10-31 02:48:50',NULL),(21,'hoc-phat-am-tieng-trung-co-ban-cr','3f8dd247f0fa8782d9dfd388096a0497',3,5,'2020-10-31 02:49:29',NULL),(22,'phat-trien-ca-nhan-c','0c105601ff03f62aaa9494f574048602',1,9,'2020-10-31 02:53:40',NULL),(23,'thiet-ke-do-hoa-c','1bda79ef8a1258f2a16c2dbf8acc9c78',1,10,'2020-10-31 02:54:16',NULL),(24,'doi-song-c','5f572a18dc86d80fbb772bf0cf320ed3',1,11,'2020-10-31 02:54:49',NULL),(25,'kinh-doanh-khoi-nghiep-c','33518276d46a9f6900c6416c4bea8414',1,12,'2020-10-31 02:55:19',NULL),(26,'ngoai-ngu-c','34b93d3e5e917cad41681eba12821ab4',1,13,'2020-10-31 02:56:31',NULL),(27,'tai-chinh-ke-toan-c','06ebddec21ade45f5111a4b7258b94fd',1,14,'2020-10-31 02:57:52',NULL),(28,'phan-mem-c','c9af2df94d74862261b6ffcd22a5554a',1,15,'2020-10-31 02:59:01',NULL),(29,'marketing-va-truyen-thong-c','f386ce59c40edf098e1adf69f0b461bb',1,16,'2020-10-31 02:59:40',NULL),(30,'bo-3-ky-nang-giao-tiep-va-gay-anh-huong-goi-chuyen-nghiep-cr','980830eef9f8cdb902f8baf5e1b175b7',3,6,'2020-11-01 02:32:59',NULL),(31,'tu-duy-logic-va-giai-quyet-van-de-cr','f7b9a8bba68af3f1b9eb917fc74e74f4',3,7,'2020-11-02 11:44:54',NULL),(32,'nghe-thuat-ban-hang-qua-dien-thoai-cr','debde51d9e2b3ea23347ba8e06e81202',3,8,'2020-11-02 11:46:13',NULL),(33,'thiet-ke-trinh-chieu-powerpoint-2016-tu-a-z-cr','6faf5dd8299b6c7774e8aeadd48e85d4',3,9,'2020-11-03 02:10:11',NULL),(34,'giai-ma-mau-sac-va-bo-cuc-trong-thiet-ke-cr','eca15344e9d54d11b85f6d7fb0a496ea',3,10,'2020-11-03 02:16:35',NULL),(35,'anh-san-pham-chuyen-nghiep-cr','1146368ad2e232d9a171fef2f589203b',3,11,'2020-11-03 02:20:25',NULL),(36,'tu-tin-thiet-ke-chi-tiet-3d-voi-autodesk-inventor-professional-cr','a3382359643e2c6c8416a149ce36ea01',3,12,'2020-11-03 02:21:31',NULL),(37,'dung-hinh-nhan-vat-3d-voi-blender-cr','507ed68a53dc4b7db12369527f7b28de',3,13,'2020-11-03 02:22:24',NULL),(38,'english-for-business-presentation-07-buoc-xay-dung-bai-thuyet-trinh-bang-tieng-anh-chuyen-nghiep-cr','505f80374a676e6b18efe424fb03b00d',3,14,'2020-11-03 02:32:29',NULL),(39,'ung-dung-storytelling-nghe-thuat-ke-chuyen-trong-thuyet-trinh-cho-kinh-doanh-cr','37820885ef1576b765b4a5e7a3d98499',3,15,'2020-11-03 02:37:35',NULL),(40,'vuot-troi-sau-dai-dich-voi-bo-7-ky-nang-thiet-yeu-cr','aee9d833e0559aa7b9ddf985fe050b4b',3,16,'2020-11-03 02:39:38',NULL),(41,'ung-dung-cong-cu-disc-trong-phan-tich-hanh-vi-danh-cho-lanh-dao-cr','90014bdd9ba495251e60fea097862913',3,17,'2020-11-03 02:40:41',NULL),(42,'ky-nang-phat-trien-dong-luc-cho-ban-than-va-doi-nhom-cr','44e921dfc662caf4659b5371f9370c37',3,18,'2020-11-03 02:41:56',NULL),(43,'giai-phap-dao-tao-va-phat-trien-nhan-vien-cr','472b5937841028a5641107f957555fa4',3,19,'2020-11-03 02:44:50',NULL),(44,'tai-cau-truc-nguon-luc-trong-va-sau-covid-cr','d1c13e4740f301437648f0fb3c606415',3,20,'2020-11-03 02:47:06',NULL),(45,'tieng-trung-kinh-doanh-thuc-chien-cr','52698fbfb190f8a2844d4fed2fd6ade7',3,21,'2020-11-03 06:12:24',NULL),(46,'phong-cach-chuyen-nghiep-cr','5e9b2340395d17a48d0c83b241d9337c',3,22,'2020-11-03 06:13:53',NULL),(47,'7-buoc-ban-hang-chuyen-nghiep-cr','f1ee7991856346468d24b52ce0573956',3,23,'2020-11-03 06:14:50',NULL),(48,'12-buoc-tro-thanh-tu-van-vien-bao-hiem-nhan-tho-trieu-do-mdrt-cr','677e809d3897f4bccf86fe48aeb460eb',3,24,'2020-11-03 06:16:00',NULL),(49,'ky-nang-ban-bao-hiem-nhan-tho-chuyen-nghiep-cr','170030556542b63bee7823acc83f7e9b',3,25,'2020-11-03 06:17:24',NULL),(50,'ung-dung-trello-vao-quan-ly-du-an-cr','ad363161690c115e745d57d18b8a1128',3,26,'2020-11-03 06:19:12',NULL),(51,'ngon-ngu-hinh-the-trong-thuyet-trinh-cr','62ea7fbcce921a1c6dd461fe72112ed3',3,27,'2020-11-03 06:20:30',NULL),(52,'ky-nang-de-xuat-tang-luong-cr','9d2eb649dfe63d03ad7b03519ed72cf1',3,28,'2020-11-03 06:22:12',NULL),(53,'ky-nang-thuyet-trinh-va-noi-truoc-cong-chung-cr','e54f9ff4ef7933f020eaeafe0cc9d5a2',3,29,'2020-11-03 06:23:16',NULL),(54,'tri-tue-xuc-cam-trong-quan-ly-doanh-nghiep-cr','36a664fc215e288cb54d085b82056065',3,30,'2020-11-03 06:24:51',NULL),(55,'phat-am-tieng-anh-tu-ngong-den-soi-cr','73c5f6fd04b92e19239b8d2c18c429a0',3,31,'2020-11-03 06:25:59',NULL),(56,'ky-nang-phan-quyen-trong-doanh-nghiep-cr','0b351e2f2ed3d7201421bbe1a1745f69',3,32,'2020-11-03 06:27:10',NULL),(57,'hoc-lam-lanh-dao-cr','fc382c53f5174258bd50349727379328',3,33,'2020-11-03 06:27:57',NULL),(58,'nang-tam-tai-nang-tre-cr','cc8aa34f44a7f9b0723269ec4ffd3f42',3,34,'2020-11-03 06:28:45',NULL),(59,'xay-dung-doanh-nghiep-thanh-cong-cr','6271dac81ca773e81c8673735cdd95a5',3,35,'2020-11-03 06:29:29',NULL),(61,'hoan-thien-ky-nang-choi-guitar-tu-co-ban-den-chuyen-sau-cr','04d9a3639af2fdbbb21b8594bc3a234f',3,37,'2020-11-03 06:32:35',NULL),(62,'chup-anh-san-pham-chuyen-nghiep-cr','fc1b426b9c3f94c23e34c6464ae985ee',3,38,'2020-11-03 06:33:12',NULL),(63,'kiem-soat-cam-xuc-va-cai-thien-giac-ngu-ung-dung-yoga-va-thien-cr','6fa55d34809e0f02342fa6564d5d8b41',3,39,'2020-11-03 06:33:43',NULL),(64,'thien-va-quan-tri-cam-xuc-cho-nguoi-hien-dai-cr','bb296e73dfdac649cda41e93bbc27e1b',3,40,'2020-11-03 06:34:25',NULL),(65,'hoc-nhay-shuffle-dance-cung-yen-cua-cr','59c1381be22425c103292d9ae755a7b9',3,41,'2020-11-03 06:37:40',NULL),(67,'khoa-hoc-dau-tu-bat-dong-san-thue-va-cho-thue-thanh-cong-cr','b09fcf98b358de6b251c6e3862083a93',3,43,'2020-11-03 06:41:50',NULL),(68,'lam-sao-tim-viec-hieu-qua-cr','bc093e6c4ab75ff81ebc6b5e73c3a746',3,44,'2020-11-03 06:42:34',NULL),(72,'cam-nang-giup-ban-du-hoc-an-toan-va-tiet-kiem-cr','64150767c6e257c342a377b1870b2d45',3,48,'2020-11-03 06:46:00',NULL),(73,'30-ngay-tinh-thong-mind-map-cr','3fed85bce87e010e3ec96a248e0462ff',3,49,'2020-11-03 06:46:45',NULL),(74,'ky-nang-lam-viec-o-cong-ty-nuoc-ngoai-cr','8a82f3b1e7cf82e547198648408d7416',3,50,'2020-11-03 06:47:24',NULL),(76,'khoa-hoc-photosho-cr','beffa1e4e2993439ee90edb97fbdc870',3,51,'2020-11-04 10:21:21',NULL),(77,'khoa-hoc-nang-cao-ky-nang-mem-cr','aaeb351f50cc9959516a1ebf547d3d33',3,52,'2020-11-04 10:23:45',NULL),(80,'khoa-hoc-facebook-cr','ff95ee259b5e53e13356276e247caf6c',3,54,'2020-11-04 10:39:15',NULL),(83,'quang-cao-instagram-cr','b7a070a56c120f1aa0ac44f1b82e4d15',3,55,'2020-11-04 10:44:27',NULL),(84,'facebook-marketing-t','3c58cbc2eb8570baab22a6e575d336ae',2,9,'2020-11-04 10:45:26',NULL),(85,'chay-quang-cao-t','8b1d7d7954714786299bfcc67b7d8003',2,10,'2020-11-04 10:45:37',NULL),(86,'tu-van-bat-dong-san-t','1dd38a2a275ff79ed168c76954d814c2',2,11,'2020-11-04 10:45:53',NULL),(87,'kinh-doanh-dot-pha-cr','671d6f24a4ec5c009e082e10c90ab393',3,56,'2020-11-04 11:18:18',NULL),(88,'xu-huong-marketing-nhat-dinh-phai-biet-cr','bab716aba054d00a7a6f05f5cfc05d81',3,57,'2020-11-04 11:35:24',NULL),(91,'don-dau-xu-the-xay-dung-co-may-ban-hang-tren-tiktok-cr','b2f51ec910bfe8fa78dedafa95641ca8',3,58,'2020-11-04 12:56:07',NULL),(92,'facebook-chuyen-sau-lever-2-cr','7bdfbedf5ee4c3fa49bf6768d6454ed8',3,59,'2020-11-04 12:57:39',NULL),(93,'marketing-chuyen-sau-tiktok-cr','e620fd2e735ec839363b382e1fb48109',3,60,'2020-11-04 13:00:50',NULL),(94,'quang-cao-facebook-bai-ban-cr','15eccbab5e123826887ea6c7a21ac5aa',3,61,'2020-11-04 13:02:09',NULL);
/*!40000 ALTER TABLE `seo_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slides` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `s_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_target` tinyint(4) NOT NULL DEFAULT '1',
  `s_sort` tinyint(4) NOT NULL DEFAULT '1',
  `s_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'HuuTrang','https://www.facebook.com/nguyenhuu.trang.54','2020-10-29__anh3.png',1,0,1,'2020-10-29 12:37:35','2020-10-29 12:51:08'),(2,'HuuTrang','https://www.facebook.com/nguyenhuu.trang.54','2020-10-29__anh2.jpg',1,0,1,'2020-10-29 12:38:03','2020-10-29 12:50:58'),(3,'V??n Nhi???m','https://www.facebook.com/FBCUANHIEM','2020-11-03__do-hoa-1.jpg',1,0,1,'2020-10-29 12:38:18','2020-11-03 02:06:48');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `t_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_sort` tinyint(4) NOT NULL DEFAULT '0',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_hot` tinyint(4) NOT NULL DEFAULT '0',
  `t_position_3` tinyint(4) NOT NULL DEFAULT '0',
  `t_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `t_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `t_title_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_keyword_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_description_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_t_slug_unique` (`t_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'b???t ?????ng s???n','bat-dong-san',0,1,1,0,0,0,'b???t ?????ng s???n',NULL,NULL,'b???t ?????ng s???n','2020-10-29 12:32:32',NULL),(2,'Content','content',0,1,1,0,0,0,'Content',NULL,NULL,'Content','2020-10-29 12:32:52',NULL),(3,'B???o hi???m','bao-hiem',0,1,0,0,0,0,'B???o hi???m',NULL,NULL,'B???o hi???m','2020-10-29 12:33:03',NULL),(4,'N??ng cao hi???u su???t','nang-cao-hieu-su',0,1,0,0,0,0,'N??ng cao hi???u su',NULL,NULL,'N??ng cao hi???u su???t','2020-10-29 12:33:14',NULL),(5,'Qu???n tr??? nh??n s???','quan-tri-nhan-s',0,1,1,0,0,0,'Qu???n tr??? nh??n s',NULL,NULL,'Qu???n tr??? nh??n s???','2020-10-29 12:33:28','2020-11-01 02:33:30'),(6,'Luy???n thi','luyen-thi',0,1,0,0,0,0,'Luy???n thi',NULL,NULL,'Luy???n thi','2020-10-29 12:33:41',NULL),(7,'L???p tr??nh vi??n','lap-trinh-vien',0,1,1,0,0,0,'L???p tr??nh vi??n',NULL,NULL,'L???p tr??nh vi??n','2020-10-29 12:33:49','2020-11-01 02:33:26'),(8,'TOEFL','toefl',0,1,1,0,0,0,'TOEFL',NULL,NULL,'TOEFL','2020-10-29 12:34:09','2020-10-29 12:34:18'),(9,'Facebook marketing','facebook-marketing',0,1,0,0,0,0,'Facebook marketing',NULL,NULL,'Facebook marketing','2020-11-04 10:45:26',NULL),(10,'Ch???y qu???ng c??o','chay-quang-cao',0,1,0,0,0,0,'Ch???y qu???ng c??o',NULL,NULL,'Ch???y qu???ng c??o','2020-11-04 10:45:37',NULL),(11,'T?? V???n b???t ?????ng s???n','tu-van-bat-dong-san',0,1,0,0,0,0,'T?? V???n b???t ?????ng s???n',NULL,NULL,'T?? V???n b???t ?????ng s???n','2020-11-04 10:45:53',NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `t_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_content` text COLLATE utf8mb4_unicode_ci,
  `t_count_course` tinyint(4) NOT NULL DEFAULT '0',
  `t_question` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teachers_t_slug_unique` (`t_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Nguy???n ?????c Ho??ng Long','nguyen-duc-hoang-long','2020-11-04__hoanglong.jpg','Founder -Acamotion','0988121212','master-tran@gmail.com',NULL,NULL,0,0,'2020-10-30 21:32:55','2020-11-04 10:33:13'),(2,'Ph???m Duy Tu??n','pham-duy-tuan',NULL,'chuy??n vi??n qu???ng c??o marketing, social media','0987876121','marsal-academy@gmail.com',NULL,NULL,0,0,'2020-10-30 21:33:50','2020-11-04 10:44:29'),(3,'Nguy???n V??n Long Thi??n','nguyen-van-long-thien',NULL,'Chuy??n gia ????o t???o, t?? v???n v?? tri???n khai gi???i ph??p v??? E-Commerce, E-Business, E-Marketing, Kinh doanh','0914444999','phanducanh@gmail.com',NULL,NULL,0,0,'2020-10-30 21:34:43','2020-11-13 18:31:10'),(4,'Nguy???n V??n Nhi???m','nguyen-van-nhiem',NULL,'Th???c s??? Khoa h???c m??y t??nh- Chuy??n vi??n marketing','0766592222','vannhiemit2k@gmail.com',NULL,NULL,0,0,'2020-10-30 21:35:29','2020-11-04 10:43:34');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_tags`
--

DROP TABLE IF EXISTS `teachers_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tt_teacher_id` int(11) NOT NULL DEFAULT '0',
  `tt_tag_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teachers_tags_tt_teacher_id_tt_tag_id_unique` (`tt_teacher_id`,`tt_tag_id`),
  KEY `teachers_tags_tt_teacher_id_index` (`tt_teacher_id`),
  KEY `teachers_tags_tt_tag_id_index` (`tt_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_tags`
--

LOCK TABLES `teachers_tags` WRITE;
/*!40000 ALTER TABLE `teachers_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `teachers_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `t_user_id` int(11) NOT NULL DEFAULT '0',
  `t_admin_id` int(11) NOT NULL DEFAULT '0',
  `t_total_money` int(11) NOT NULL DEFAULT '0',
  `t_code` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_note` text COLLATE utf8mb4_unicode_ci,
  `t_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_type_pay` tinyint(4) NOT NULL DEFAULT '1',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_time_process` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_t_user_id_index` (`t_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,0,357543,NULL,NULL,NULL,1,1,NULL,'2020-11-03 02:53:09',NULL),(2,1,0,200000,NULL,NULL,NULL,1,1,NULL,'2020-11-04 10:47:10',NULL),(3,1,0,200000,NULL,NULL,NULL,1,1,NULL,'2020-11-21 09:04:25',NULL),(4,1,0,500000,NULL,NULL,NULL,1,1,NULL,'2020-12-26 14:18:40',NULL),(5,1,0,0,NULL,NULL,NULL,3,1,NULL,'2020-12-26 14:18:56',NULL),(6,1,0,500000,NULL,NULL,NULL,2,1,NULL,'2020-12-26 18:58:41',NULL),(7,1,0,200000,NULL,NULL,NULL,4,3,NULL,'2020-12-26 21:41:19','2020-12-27 01:48:26'),(8,1,0,200000,NULL,NULL,NULL,1,3,NULL,'2020-12-27 02:49:18','2020-12-27 02:49:28'),(9,1,0,500000,NULL,NULL,NULL,3,1,NULL,'2020-12-27 03:06:18',NULL),(10,1,0,500000,NULL,NULL,NULL,3,1,NULL,'2020-12-27 03:06:34',NULL),(11,6,0,5567890,NULL,NULL,NULL,2,1,NULL,'2020-12-28 02:24:39',NULL),(12,6,0,10000000,NULL,NULL,NULL,3,1,NULL,'2020-12-28 02:25:14',NULL),(13,6,0,600000,NULL,NULL,NULL,3,1,NULL,'2020-12-28 02:26:06',NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `total_course` int(11) NOT NULL DEFAULT '0',
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_social` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'HuuTrang','nguyentrang97bn@gmail.com',NULL,'$2y$10$TSAZhOcoEvyfb/GG1T5ya.24MguuRjpgO2pT0nbHndgbeXCEIxgFG','aHeoDwrANe0fBGWodU3Eze27LpYHFNVBgswwut9rrhyXRBhe8ljPlq9sRGnN',NULL,'2020-12-28 00:37:37',NULL,NULL,NULL,NULL,1,0,'google','','106738833952998328415'),(2,'Nguy??n V??n D?????c','duocnvoit@gmail.com',NULL,'$2y$10$XWoLgI19bRRddChjMOZ/cevKcq74iwXTBGSjslH5s4blqDhCLCUay',NULL,'2020-12-27 02:02:47',NULL,NULL,'0928817228',NULL,NULL,1,0,'','',''),(3,'T???n ????nh Ho??ng','daohainamnam28@gmail.com',NULL,'daohainamnam28@gmail.com','gghPpDtuVnEKXeQ3GIRfszSoFNJTTNYNFRNrtiedOg5pJ0MKFIyKIlbUAblx','2020-12-28 00:51:01','2020-12-28 00:51:01',NULL,NULL,NULL,NULL,1,0,'google','https://lh4.googleusercontent.com/-ad9WyeDGPwI/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclcdoZqddG7FQbR5s2PAR7vHjEngg/s96-c/photo.jpg','118326123659883004311'),(4,'S???ng l?? Ph???i vui','songlaphaivui28@gmail.com',NULL,'songlaphaivui28@gmail.com','yk5P48yTija6SwNlivzsphW5wOtgiwqFhPBsK1PY2Xidghp7Q9OeM5Q03pfQ','2020-12-28 00:51:38','2020-12-28 00:51:38',NULL,NULL,NULL,NULL,1,0,'google','https://lh3.googleusercontent.com/a-/AOh14GiJ1WFB-BsX4kHErJSjUFRkXv9kuO5hKH50iogI=s96-c','116603188857469013794'),(5,'Hoang Tu','hoanganhtu408@gmail.com',NULL,'hoanganhtu408@gmail.com','YcbDLx73mQI0JgprziMu4nhjxDjhzrRErTSRB8QdtCmJhaFkb1n6hGhsvPac','2020-12-28 00:51:56','2020-12-28 00:51:56',NULL,NULL,NULL,NULL,1,0,'google','https://lh5.googleusercontent.com/-7sSHO0k-Np0/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckdD9pjrur63Z2DeLMTjR--w420vQ/s96-c/photo.jpg','112639392387665863981'),(6,'Ph?? Tr????ng','phuprokute123456789@gmail.com',NULL,'phuprokute123456789@gmail.com','5bofzdiWuJJRdrlm4aP7zWz0hHaj1Wk0pSeZRYcsuF7bHqZN88PzFw3uVjjf','2020-12-28 02:22:21','2020-12-28 02:22:21',NULL,NULL,NULL,NULL,1,0,'google','https://lh3.googleusercontent.com/-NCOeJv13W10/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckEzfXeGH5vXXUBuUW3BTexTxj5XA/s96-c/photo.jpg','103845371210790310787'),(7,'huy l??','minhuy10a2@gmail.com',NULL,'minhuy10a2@gmail.com','tzkZKQ1TEUylhuhvP03ppzqVacPF2c72e5VBPeT7wzlizQZdkoIXbSbAf1Nz','2020-12-28 02:57:20','2020-12-28 02:57:20',NULL,NULL,NULL,NULL,1,0,'google','https://lh5.googleusercontent.com/-dOPHyuITZjw/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmthpyJiyygOVcicls8wPwE4uvgtg/s96-c/photo.jpg','105055645507162618654'),(8,'Tr???n Nam ?????nh_15A2','trannamdinh04111995@gmail.com',NULL,'trannamdinh04111995@gmail.com','hmsx5AjVfwmHtqU9OqbvLGEf9vQPhjs4NGsujUdAxlsaNmJghWmnTzcw2BIv','2020-12-28 04:16:06','2020-12-28 04:16:06',NULL,NULL,NULL,NULL,1,0,'google','https://lh3.googleusercontent.com/a-/AOh14GjRN-u-iWYKxPPIFT9KqNQWVAZLP7kN0Qt9obSQ=s96-c','102174287046151491346'),(9,'H O ?? N G','huynhhuyhoang9999@gmail.com',NULL,'huynhhuyhoang9999@gmail.com','9XGSH9I4jxAk1SxYitsGg4187XZQ7fRN0v32aSlla5rC4oaRb9Rr1iNLy1jn','2020-12-28 04:23:32','2020-12-28 04:23:32',NULL,NULL,NULL,NULL,1,0,'google','https://lh3.googleusercontent.com/a-/AOh14GiYGTNlbLZ1uen1uss4YcXcEUE0akUmZ2BQJUxxwQ=s96-c','117193864544682115503');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `v_user_id` int(11) NOT NULL DEFAULT '0',
  `v_id` int(11) NOT NULL DEFAULT '0' COMMENT ' ID kho?? h???c, ID combo kho?? h???c',
  `v_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT ' 1 la khoa hoc',
  `v_content` text COLLATE utf8mb4_unicode_ci,
  `v_number` tinyint(4) NOT NULL DEFAULT '0',
  `v_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES (1,1,50,1,'????ng l?? 1 kho?? h???c tuy???t v???i. M??nh l???i ??ang c???n g???p ngay ?? b???n gi???i thi???u',5,1,'2020-11-21 09:06:42',NULL),(2,1,50,1,'Kho?? h???c th???t hay v?? r???t b??? ??ch. Hi v???ng c??c b???n s??? c???m nh???n ???????c n?? nh?? m??nh. Ngo??i ra c??c b???n mu???n mua ????? ??n n??y th?? li??n h??? v???i m??nh nh??.',5,1,'2020-12-27 01:49:18',NULL),(3,1,50,1,'Kho?? h???c th???t hay v?? r???t b??? ??ch. Hi v???ng c??c b???n s??? c???m nh???n ???????c n?? nh?? m??nh. Ngo??i ra c??c b???n mu???n mua ????? ??n n??y th?? li??n h??? v???i m??nh nh??.',5,1,'2020-12-27 02:49:40',NULL);
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-28 22:06:03
