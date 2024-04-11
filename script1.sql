-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: blog_laravel
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (10,'Java','java','red','red','2024-02-29 07:24:10','2024-02-29 07:24:10'),(11,'vue','vue','white','green','2024-03-01 06:58:22','2024-03-01 06:58:22'),(12,'Go-lang','go-lang','white','blue','2024-03-01 06:59:14','2024-03-01 06:59:14'),(13,'Cooking','cooking','red','red','2024-03-01 07:07:53','2024-03-01 07:07:53');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_post`
--

DROP TABLE IF EXISTS `category_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_post` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_post`
--

LOCK TABLES `category_post` WRITE;
/*!40000 ALTER TABLE `category_post` DISABLE KEYS */;
INSERT INTO `category_post` VALUES (8,105,10,NULL,NULL),(10,106,11,NULL,NULL),(11,107,12,NULL,NULL),(12,108,13,NULL,NULL);
/*!40000 ALTER TABLE `category_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (8,1,105,'post hay thees','2024-02-29 09:31:59','2024-02-29 09:31:59'),(9,3,105,'grger','2024-02-29 09:41:52','2024-02-29 09:41:52'),(10,4,106,'post như hạch','2024-03-01 07:12:12','2024-03-01 07:12:12'),(11,2,107,'hello','2024-03-02 08:28:52','2024-03-02 08:28:52'),(12,3,108,'hdfg','2024-03-06 21:39:39','2024-03-06 21:39:39');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2024_02_26_064725_create_sessions_table',1),(7,'2024_02_26_075731_create_posts_table',2),(8,'2024_02_26_075804_create_categories_table',2),(9,'2024_02_26_075926_create_category_post_table',2),(10,'2024_02_26_084559_create_posts_table',3),(11,'2024_02_28_124817_create_post_likes_table',4),(12,'2024_02_29_143658_create_comments_table',5),(13,'2024_02_29_154147_create_comments_table',6),(14,'2024_03_01_085044_add_role_to_users',7);
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_likes`
--

DROP TABLE IF EXISTS `post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_likes_user_id_index` (`user_id`),
  KEY `post_likes_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_likes`
--

LOCK TABLES `post_likes` WRITE;
/*!40000 ALTER TABLE `post_likes` DISABLE KEYS */;
INSERT INTO `post_likes` VALUES (23,702,105,'2024-02-29 10:28:08','2024-02-29 10:28:08'),(24,703,106,'2024-03-01 07:12:05','2024-03-01 07:12:05'),(25,704,107,'2024-03-01 07:12:36','2024-03-01 07:12:36'),(26,704,106,'2024-03-01 07:12:48','2024-03-01 07:12:48'),(27,3,106,'2024-03-13 18:33:34','2024-03-13 18:33:34');
/*!40000 ALTER TABLE `post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (105,1,'posts/thumbnails/01HQR8CN01G07DTPKWXVP8HMSC.jpg','java','java spring','<p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/jpeg&quot;,&quot;filename&quot;:&quot;forest.jpg&quot;,&quot;filesize&quot;:14546,&quot;height&quot;:314,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/posts/images/QAgcRXhYyKX7pmsGvtIrxTdoyyC2mjCR3uhT8XAi.jpg&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/posts/images/QAgcRXhYyKX7pmsGvtIrxTdoyyC2mjCR3uhT8XAi.jpg&quot;,&quot;width&quot;:563}\" data-trix-content-type=\"image/jpeg\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--jpg\"><a href=\"http://127.0.0.1:8000/storage/posts/images/QAgcRXhYyKX7pmsGvtIrxTdoyyC2mjCR3uhT8XAi.jpg\"><img src=\"http://127.0.0.1:8000/storage/posts/images/QAgcRXhYyKX7pmsGvtIrxTdoyyC2mjCR3uhT8XAi.jpg\" width=\"563\" height=\"314\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">forest.jpg</span> <span class=\"attachment__size\">14.21 KB</span></figcaption></a></figure></p><p>## Java là gì?<br><br>Java là ngôn ngữ lập trình hướng đối tượng, được phát triển bởi Sun Microsystems (nay thuộc Oracle) vào năm 1995. Java được thiết kế để có thể chạy trên mọi nền tảng (platform) mà không cần biên dịch lại mã nguồn, với tiêu chí \"Viết một lần, chạy mọi nơi\" (Write Once, Run Anywhere - WORA).<br><br>## Đặc điểm nổi bật của Java<br><br>* **Hướng đối tượng:** Java là ngôn ngữ lập trình hướng đối tượng hoàn toàn, giúp cho việc lập trình dễ dàng và hiệu quả hơn.<br>* **Độc lập phần cứng và hệ điều hành:** Java có thể chạy trên mọi hệ điều hành mà không cần biên dịch lại mã nguồn.<br>* **Bảo mật cao:** Java được thiết kế với tính bảo mật cao, giúp cho các ứng dụng Java an toàn hơn so với các ứng dụng viết bằng các ngôn ngữ khác.<br>* **Có nhiều thư viện hỗ trợ:** Java có một bộ thư viện phong phú hỗ trợ cho nhiều lĩnh vực khác nhau như: lập trình web, lập trình ứng dụng di động, lập trình game, v.v.<br><br>## Ứng dụng của Java<br><br>Java được sử dụng rộng rãi trong nhiều lĩnh vực khác nhau như:<br><br>* **Lập trình web:** Java được sử dụng để phát triển các ứng dụng web server-side như: servlet, JSP, JSF, Spring Boot, v.v.<br>* **Lập trình ứng dụng di động:** Java được sử dụng để phát triển các ứng dụng di động Android.<br>* **Lập trình game:** Java được sử dụng để phát triển các game 2D và 3D.<br>* **Lập trình ứng dụng desktop:** Java được sử dụng để phát triển các ứng dụng desktop như: phần mềm quản lý, phần mềm kế toán, v.v.<br>* **Lập trình ứng dụng nhúng:** Java được sử dụng để phát triển các ứng dụng nhúng trong các thiết bị điện tử như: smart TV, smart watch, v.v.<br><br>## Học Java như thế nào?<br><br>Có nhiều cách để học Java như:<br><br>* **Tự học:** Có nhiều tài liệu và khóa học trực tuyến miễn phí giúp bạn có thể tự học Java.<br>* **Tham gia khóa học:** Có nhiều trung tâm tin học và trường đại học tổ chức các khóa học Java.<br>* **Tham gia cộng đồng:** Tham gia các cộng đồng Java trực tuyến để học hỏi kinh nghiệm từ những người đi trước.<br><br>## Lời khuyên<br><br>* **Bắt đầu từ những kiến thức cơ bản:** Bắt đầu học Java từ những kiến thức cơ bản như: cú pháp, kiểu dữ liệu, biến, v.v.<br>* **Luyện tập thường xuyên:** Viết code thường xuyên để trau dồi kỹ năng lập trình Java.<br>* **Tham gia cộng đồng:** Tham gia các cộng đồng Java trực tuyến để học hỏi kinh nghiệm từ những người đi trước.<br><br>## Kết luận<br><br>Java là ngôn ngữ lập trình mạnh mẽ và phổ biến với nhiều ứng dụng trong thực tế. Nếu bạn muốn học lập trình, Java là một lựa chọn tốt cho bạn.</p><p><br></p>','2024-02-26 17:00:00',1,NULL,'2024-02-28 09:22:31','2024-03-02 08:08:33'),(106,1,'posts/thumbnails/01HQX4TPQFS2WAR4BBP0Y6F4DJ.png','Vue','vue','<p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/png&quot;,&quot;filename&quot;:&quot;Logo-Vuejs.png&quot;,&quot;filesize&quot;:12346,&quot;height&quot;:300,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/posts/images/tgaJfMlv3Qp5Bm9pK3Ifap3oaenJ1OBuyR29Ynbv.png&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/posts/images/tgaJfMlv3Qp5Bm9pK3Ifap3oaenJ1OBuyR29Ynbv.png&quot;,&quot;width&quot;:500}\" data-trix-content-type=\"image/png\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--png\"><a href=\"http://127.0.0.1:8000/storage/posts/images/tgaJfMlv3Qp5Bm9pK3Ifap3oaenJ1OBuyR29Ynbv.png\"><img src=\"http://127.0.0.1:8000/storage/posts/images/tgaJfMlv3Qp5Bm9pK3Ifap3oaenJ1OBuyR29Ynbv.png\" width=\"500\" height=\"300\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">Logo-Vuejs.png</span> <span class=\"attachment__size\">12.06 KB</span></figcaption></a></figure>- Giới thiệu Vue.js<br><br>Vue.js (viết tắt là Vue) là một framework JavaScript mã nguồn mở được sử dụng để xây dựng các giao diện người dùng (UI) và ứng dụng web một trang (SPA) hiện đại.&nbsp;<br><br>- Những ưu điểm của Vue.js:<br><br>- Dễ học và sử dụng: Vue có cú pháp đơn giản, dễ hiểu và thân thiện với người mới bắt đầu học.&nbsp;<br> -&nbsp; Linh hoạt: Vue có thể được sử dụng để xây dựng các dự án nhỏ gọn hay các ứng dụng web phức tạp.<br> - Hiệu suất cao: Vue có hiệu suất rendering nhanh và tối ưu, mang lại trải nghiệm người dùng mượt mà.<br> -&nbsp; Cộng đồng lớn&nbsp; Vue có cộng đồng người dùng và developer đông đảo, sẵn sàng hỗ trợ nhau trong quá trình học tập và phát triển.<br><br>**Các khái niệm cơ bản trong Vue.js:**<br><br>* **Component:** Vue sử dụng các component để xây dựng giao diện người dùng. Mỗi component là một khối độc lập, có template riêng để hiển thị nội dung và logic riêng để xử lý sự kiện.<br>* **Data binding:** Vue sử dụng data binding để đồng bộ dữ liệu giữa model (dữ liệu) và view (giao diện). Bất kỳ thay đổi nào trên dữ liệu sẽ tự động được cập nhật lên giao diện và ngược lại.<br>* **Lifecycle hooks:** Vue cung cấp các lifecycle hooks cho phép developer thực hiện các tác vụ nhất định trong các giai đoạn khác nhau của vòng đời của một component.<br><br>**Những tài liệu học Vue.js:**<br><br>* **Trang chủ Vue.js:** [https://vuejs.org/](https://vuejs.org/)<br>* **Các bài hướng dẫn trên trang web chính thức:** [https://vuejs.org/guide/introduction.html](https://vuejs.org/guide/introduction.html)<br>* **Các khóa học online:** Nhiều nền tảng học online cung cấp các khóa học về Vue.js, từ cơ bản đến nâng cao.<br><br>Với những ưu điểm và tính dễ học, Vue.js là một lựa chọn tuyệt vời cho các developer muốn xây dựng các ứng dụng web hiện đại, hiệu quả và dễ bảo trì.</p>','2024-02-28 17:00:00',1,NULL,'2024-03-01 06:56:30','2024-03-06 21:45:48'),(107,1,'posts/thumbnails/01HQX55ASFJRMR2D99ZZA0FK29.png','Golang','golang','<p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/png&quot;,&quot;filename&quot;:&quot;15nbR1DnN8fHxFD-VtmWBRnXYMU6_wnBk.png&quot;,&quot;filesize&quot;:71694,&quot;height&quot;:1080,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/posts/images/fPkShiRsVQxCC0HEkvLSspKhVjyZavicaxrIFfSp.png&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/posts/images/fPkShiRsVQxCC0HEkvLSspKhVjyZavicaxrIFfSp.png&quot;,&quot;width&quot;:1920}\" data-trix-content-type=\"image/png\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--png\"><a href=\"http://127.0.0.1:8000/storage/posts/images/fPkShiRsVQxCC0HEkvLSspKhVjyZavicaxrIFfSp.png\"><img src=\"http://127.0.0.1:8000/storage/posts/images/fPkShiRsVQxCC0HEkvLSspKhVjyZavicaxrIFfSp.png\" width=\"1920\" height=\"1080\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">15nbR1DnN8fHxFD-VtmWBRnXYMU6_wnBk.png</span> <span class=\"attachment__size\">70.01 KB</span></figcaption></a></figure>Go (hay còn được biết đến với tên gọi Golang) là một ngôn ngữ lập trình mới và mạnh mẽ đã xuất hiện trong thập kỷ gần đây. Được phát triển bởi Google, Go được thiết kế để đáp ứng nhu cầu ngày càng tăng về hiệu suất và sự dễ bảo trì trong các dự án phần mềm lớn.<br><br>Một số đặc điểm quan trọng của Go bao gồm:<br><br>1. **Hiệu suất cao:** Go được tối ưu hóa để cung cấp hiệu suất cao, làm cho nó trở thành một lựa chọn phổ biến cho việc xây dựng các hệ thống đòi hỏi xử lý nhanh và đáng tin cậy.<br><br>2. **Dễ đọc và đơn giản:** Cú pháp của Go là rất đơn giản và dễ đọc, giúp giảm thiểu các lỗi phổ biến và tăng khả năng bảo trì của mã nguồn.<br><br>3. **Hỗ trợ đa luồng:** Go cung cấp hỗ trợ đa luồng tích hợp, giúp dễ dàng xử lý các tác vụ đồng thời mà không gặp phải những vấn đề phức tạp của đa luồng truyền thống.<br><br>4. **Thuận tiện cho việc phát triển web:** Go đi kèm với các thư viện mạnh mẽ, giúp người phát triển xây dựng các ứng dụng web hiệu quả và dễ bảo trì.<br><br>5. **Tự động quản lý bộ nhớ:** Go có thu gọn bộ nhớ tự động (garbage collection), giúp giảm bớt gánh nặng cho lập trình viên khi quản lý bộ nhớ.<br><br>6. **Tích hợp tốt với các công cụ khác:** Go có khả năng tích hợp tốt với các công cụ khác, điều này giúp người phát triển dễ dàng tích hợp và mở rộng ứng dụng của mình.<br><br>7. **Cộng đồng lớn và hỗ trợ mạnh mẽ:** Go có một cộng đồng lớn và năng động, với nhiều nguồn tài nguyên và hỗ trợ từ cộng đồng.<br><br>Tóm lại, Go là một ngôn ngữ lập trình mạnh mẽ, đơn giản và hiệu quả, làm cho nó trở thành một lựa chọn phổ biến cho nhiều dự án phần mềm hiện đại.</p>','2024-02-27 17:00:00',1,NULL,'2024-03-01 07:02:18','2024-03-01 08:19:52'),(108,2,'posts/thumbnails/01HQX5M8AH2EVKX6PF33RMZTAN.jpg','How to cook steak','how-to-cook-steak','<p>Cooking a steak to perfection involves a combination of the right cut, proper seasoning, and precise cooking techniques. Here\'s a basic guide to cooking steak:<br><br>### Ingredients:<br>- Steak (choose a high-quality cut like ribeye, sirloin, or filet mignon)<br>- Salt and pepper (to taste)<br>- Olive oil or clarified butter<br><br>### Instructions:<br><br>1. **Choose the Right Steak:**<br>&nbsp; &nbsp;- Select a well-marbled steak for better flavor and tenderness. Popular choices include ribeye, sirloin, or filet mignon.<br><br>2. **Bring the Steak to Room Temperature:**<br>&nbsp; &nbsp;- Remove the steak from the refrigerator at least 30-60 minutes before cooking. This helps the steak cook more evenly.<br><br>3. **Season the Steak:**<br>&nbsp; &nbsp;- Pat the steak dry with paper towels to remove excess moisture. Season both sides generously with salt and pepper. You can also add other seasonings or herbs according to your preference.<br><br>4. **Preheat the Pan or Grill:**<br>&nbsp; &nbsp;- Use a cast-iron skillet, grill, or a heavy-duty pan. Preheat it over medium-high heat. Add a small amount of olive oil or clarified butter and let it get hot.<br><br>5. **Cooking the Steak:**<br>&nbsp; &nbsp;- Place the steak in the hot pan or on the grill. For a medium-rare steak, cook each side for about 3-5 minutes, depending on the thickness of the steak. Adjust the time for your desired level of doneness.<br><br>6. **Use the Sear-and-Flip Technique:**<br>&nbsp; &nbsp;- For a good sear, only flip the steak once. Let it sear on one side until a crust forms, then flip it using tongs. Repeat for the other side.<br><br>7. **Checking Doneness:**<br>&nbsp; &nbsp;- Use a meat thermometer to check the internal temperature. For medium-rare, it should be around 130-135°F (54-57°C). The temperatures vary for different levels of doneness.<br><br>8. **Resting Period:**<br>&nbsp; &nbsp;- Allow the steak to rest for about 5-10 minutes after cooking. This helps redistribute the juices, keeping the steak juicy and flavorful.<br><br>9. **Slice and Serve:**<br>&nbsp; &nbsp;- Slice the steak against the grain for tenderness. Serve it with your favorite sides.<br><br>Remember, these are general guidelines, and the cooking times may vary based on the thickness of the steak and your preferred level of doneness. Adjust the cooking time accordingly and practice to find the perfect method for your taste preferences.</p>','2024-02-27 17:00:00',0,NULL,'2024-03-01 07:10:27','2024-03-02 08:09:01');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
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
INSERT INTO `sessions` VALUES ('wIr0nmj7gdQ6N3O8okKUxVkbvEI3f6pbfYvHbf7l',3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiU0g0cVplZmtTU3BkSWxlUWhXbkxwNmlPeTR4WVhYZXRveW5vOEE2dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRBRXAwWDh5eDNJQnE3LmdsbXNlZEFlWnE3a1IzTGtVTDBPUHdkbG5vaVJ1WUVZaW92djJkVyI7fQ==',1712649962);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=705 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','test@gmail.com',NULL,'$2y$12$ioYJwZaY055rUkxVT7aAouzYOT/9hvhGDcS0If/YQSlVIvDocPywK',NULL,NULL,NULL,NULL,NULL,'profile-photos/bgpIJrhCfqdVKqyrqR2fW466ekNmeYFNpGKtskEg.jpg','2024-02-26 00:00:34','2024-03-02 08:13:51','AUTHOR'),(2,'user2','user2@gmail.com',NULL,'$2y$12$fxHRwjng1NA78fEhq/PMDuyPMUgcc66VGUXVpUImuYMfYPqXYsw1m',NULL,NULL,NULL,NULL,NULL,'profile-photos/FD2yobbsgAPpb9pQaYz9gIaQxkMYav2P35bxAiPx.jpg','2024-02-28 06:32:07','2024-03-01 02:24:22','USER'),(3,'admin','admin@gmail.com',NULL,'$2y$12$AEp0X8yx3IBq7.glmsedAeZq7kR3LkUL0OPwdlnoiRuYEYiovv2dW',NULL,NULL,NULL,'83LAegq69EqCQ7r4XVNK5nyW5c9DvSXXF5taYg0i53uRXppjXzUGpynuEVvS',NULL,'profile-photos/gw8Oz8fzj0IMD0kVoNp59kidGFTbDkXYcZmUKy7Q.png','2024-03-01 02:15:20','2024-03-02 08:12:36','Admin'),(4,'author1','author1@gmail.com',NULL,'$2y$12$hCk0rVVhLe1ud4On2zlOR.47cA6fcNTjl/vz4NPqZYHw8cHTLSbvq',NULL,NULL,NULL,NULL,NULL,NULL,'2024-03-01 07:04:33','2024-03-01 07:05:02','AUTHOR');
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

-- Dump completed on 2024-04-09 23:51:16
