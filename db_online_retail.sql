-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_online_retail
CREATE DATABASE IF NOT EXISTS `db_online_retail` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_online_retail`;

-- Dumping structure for table db_online_retail.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `ID_Kategori` int NOT NULL AUTO_INCREMENT,
  `Nama_Kategori` varchar(255) NOT NULL,
  `Deskripsi_Kategori` text,
  PRIMARY KEY (`ID_Kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_online_retail.kategori: ~3 rows (approximately)
REPLACE INTO `kategori` (`ID_Kategori`, `Nama_Kategori`, `Deskripsi_Kategori`) VALUES
	(1, 'Elektronik', 'Elektronik Murah'),
	(2, 'Pakaian', 'Pakaian Semua Jenis'),
	(3, 'Alat Rumah Tangga', 'Gelegar Murahnya');

-- Dumping structure for table db_online_retail.pelanggan
CREATE TABLE IF NOT EXISTS `pelanggan` (
  `ID_Pelanggan` int NOT NULL AUTO_INCREMENT,
  `Nama_Pelanggan` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_online_retail.pelanggan: ~10 rows (approximately)
REPLACE INTO `pelanggan` (`ID_Pelanggan`, `Nama_Pelanggan`, `Alamat`, `Email`) VALUES
	(1, 'John Doe', 'Jl. Contoh No. 123', 'john.doe@example.com'),
	(2, 'Alice Smith', 'Jl. Utama No. 456', 'alice.smith@example.com'),
	(3, 'Bob Johnson', 'Jl. Raya No. 789', 'bob.johnson@example.com'),
	(4, 'Eva Davis', 'Jl. Maju No. 101', 'eva.davis@example.com'),
	(5, 'Michael Wilson', 'Jl. Baru No. 202', 'michael.wilson@example.com'),
	(6, 'Lisa Brown', 'Jl. Sederhana No. 303', 'lisa.brown@example.com'),
	(7, 'David Lee', 'Jl. Lama No. 404', 'david.lee@example.com'),
	(8, 'Sarah Clark', 'Jl. Depan No. 505', 'sarah.clark@example.com'),
	(9, 'Daniel Turner', 'Jl. Belakang No. 606', 'daniel.turner@example.com'),
	(10, 'Olivia Taylor', 'Jl. Terdepan No. 707', 'olivia.taylor@example.com');

-- Dumping structure for table db_online_retail.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `ID_Produk` int NOT NULL AUTO_INCREMENT,
  `Nama_Produk` varchar(255) NOT NULL,
  `Harga` int NOT NULL,
  `Stok` int NOT NULL,
  `ID_Kategori` int DEFAULT NULL,
  PRIMARY KEY (`ID_Produk`),
  KEY `ID_Kategori` (`ID_Kategori`),
  CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`ID_Kategori`) REFERENCES `kategori` (`ID_Kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_online_retail.produk: ~10 rows (approximately)
REPLACE INTO `produk` (`ID_Produk`, `Nama_Produk`, `Harga`, `Stok`, `ID_Kategori`) VALUES
	(1, 'Baju Distro', 100000, 10, 2),
	(2, 'Laptop', 5000000, 5, 1),
	(3, 'Sapu', 4000, 20, 3),
	(4, 'Pel', 5000, 30, 3),
	(5, 'Mesin Cuci', 9000000, 15, 1),
	(6, 'Celana', 100000, 10, 2),
	(7, 'Celana Chino', 200000, 5, 2),
	(8, 'Kulot', 4000, 20, 2),
	(9, 'Vacum', 50000, 30, 3),
	(10, 'Tv', 9000000, 15, 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
