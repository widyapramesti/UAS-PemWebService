# Host: localhost  (Version 5.5.5-10.1.10-MariaDB)
# Date: 2018-06-27 15:17:38
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "mahasiswas"
#

DROP TABLE IF EXISTS `mahasiswas`;
CREATE TABLE `mahasiswas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nim` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nm_mhs` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fakultas` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `jk` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `prodi` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `agama` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `notlp` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "mahasiswas"
#

INSERT INTO `mahasiswas` VALUES (1,'1512504567','juki','fti','pria','si','islam','089667455245','cipondoh','2018-06-27 13:38:04','2018-06-27 15:00:37',NULL),(4,'1512501234','Widya','fti','wanita','si','islam','08975126357','ciputat','2018-06-27 14:29:15','2018-06-27 15:03:47',NULL),(5,'1512507886','rani','fti','wanita','si','islam','08977891341','jakarta','2018-06-27 14:29:21','2018-06-27 15:04:40',NULL),(6,'1512500628','rafly aswin','fti','pria','si','islam','089667453779','maharta','2018-06-27 14:30:15','2018-06-27 14:30:15',NULL);

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (1,'2018_06_25_130419_create_table_mahasiswa',1);
