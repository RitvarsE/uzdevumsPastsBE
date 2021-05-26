-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for pasts
CREATE DATABASE IF NOT EXISTS `pasts` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `pasts`;

-- Dumping structure for table pasts.basics
CREATE TABLE IF NOT EXISTS `basics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `curriculum_vitae_id` smallint(6) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pasts.basics: ~2 rows (approximately)
/*!40000 ALTER TABLE `basics` DISABLE KEYS */;
INSERT INTO `basics` (`id`, `curriculum_vitae_id`, `name`, `surname`, `email`, `number`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Ritvars Eglajs', 'Eglajs', 'ritvars.eglajs@outlook.com', '26060220', '2021-05-18 20:39:08', '2021-05-18 20:39:08'),
	(4, 8, 'Ritvars', 'Eglajsasd', 'ritvars.eglajs@outlook.com', '26060220', '2021-05-18 23:38:51', '2021-05-19 11:24:00');
/*!40000 ALTER TABLE `basics` ENABLE KEYS */;

-- Dumping structure for table pasts.curriculum_vitaes
CREATE TABLE IF NOT EXISTS `curriculum_vitaes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pasts.curriculum_vitaes: ~2 rows (approximately)
/*!40000 ALTER TABLE `curriculum_vitaes` DISABLE KEYS */;
INSERT INTO `curriculum_vitaes` (`id`, `title`, `created_at`, `updated_at`) VALUES
	(8, 'RitvarsEglajsCV', '2021-05-18 23:38:35', '2021-05-18 23:38:35'),
	(13, 'asdasdasd', '2021-05-19 11:07:58', '2021-05-19 11:07:58');
/*!40000 ALTER TABLE `curriculum_vitaes` ENABLE KEYS */;

-- Dumping structure for table pasts.education
CREATE TABLE IF NOT EXISTS `education` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `curriculum_vitae_id` smallint(6) NOT NULL,
  `school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldOfStudy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` date NOT NULL,
  `finished_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pasts.education: ~0 rows (approximately)
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` (`id`, `curriculum_vitae_id`, `school`, `faculty`, `fieldOfStudy`, `degree`, `status`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES
	(2, 8, 'Olaine College', 'Biotechnology and mechinal', 'Biotechnology', '1st higher professional', 'half', '2021-02-18', '2021-05-20', '2021-05-18 23:39:40', '2021-05-19 11:33:52');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;

-- Dumping structure for table pasts.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pasts.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table pasts.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `curriculum_vitae_id` smallint(6) NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `load` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` date NOT NULL,
  `finished_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pasts.jobs: ~1 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`id`, `curriculum_vitae_id`, `job`, `title`, `load`, `started_at`, `finished_at`, `created_at`, `updated_at`) VALUES
	(4, 8, 'Latvijas piens', 'Food specialist', 'full', '2015-01-20', '2021-05-01', '2021-05-19 10:14:48', '2021-05-19 10:14:48');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table pasts.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pasts.migrations: ~9 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(58, '2014_10_12_000000_create_users_table', 1),
	(59, '2014_10_12_100000_create_password_resets_table', 1),
	(60, '2019_08_19_000000_create_failed_jobs_table', 1),
	(61, '2021_05_18_113941_create_curriculum_vitaes_table', 1),
	(62, '2021_05_18_161451_create_basics_table', 1),
	(63, '2021_05_18_161500_create_skills_table', 1),
	(64, '2021_05_18_161513_create_jobs_table', 1),
	(65, '2021_05_18_161529_create_education_table', 1),
	(66, '2021_05_18_161541_create_others_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table pasts.others
CREATE TABLE IF NOT EXISTS `others` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `curriculum_vitae_id` smallint(6) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pasts.others: ~1 rows (approximately)
/*!40000 ALTER TABLE `others` DISABLE KEYS */;
INSERT INTO `others` (`id`, `curriculum_vitae_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
	(3, 8, 'Languages', 'Latvian, english, russian', '2021-05-18 23:40:01', '2021-05-18 23:40:01');
/*!40000 ALTER TABLE `others` ENABLE KEYS */;

-- Dumping structure for table pasts.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pasts.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table pasts.skills
CREATE TABLE IF NOT EXISTS `skills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `curriculum_vitae_id` smallint(6) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pasts.skills: ~0 rows (approximately)
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` (`id`, `curriculum_vitae_id`, `description`, `created_at`, `updated_at`) VALUES
	(2, 8, 'Good PHP', '2021-05-18 23:39:47', '2021-05-19 11:34:01'),
	(3, 8, 'Not so good CSS', '2021-05-19 11:34:10', '2021-05-19 11:34:10');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;

-- Dumping structure for table pasts.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pasts.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
