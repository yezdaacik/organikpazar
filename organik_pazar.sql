-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.21-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- organik_pazar için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `organik_pazar` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `organik_pazar`;

-- tablo yapısı dökülüyor organik_pazar.musteri
CREATE TABLE IF NOT EXISTS `musteri` (
  `mno` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `dtarih` date NOT NULL,
  `tel` varchar(11) NOT NULL,
  PRIMARY KEY (`mno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- organik_pazar.musteri: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `musteri` DISABLE KEYS */;
/*!40000 ALTER TABLE `musteri` ENABLE KEYS */;

-- tablo yapısı dökülüyor organik_pazar.musteriurun
CREATE TABLE IF NOT EXISTS `musteriurun` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `mno` int(11) NOT NULL DEFAULT 0,
  `uno` int(11) NOT NULL DEFAULT 0,
  `tarih` date NOT NULL,
  `miktar` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- organik_pazar.musteriurun: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `musteriurun` DISABLE KEYS */;
/*!40000 ALTER TABLE `musteriurun` ENABLE KEYS */;

-- tablo yapısı dökülüyor organik_pazar.urun
CREATE TABLE IF NOT EXISTS `urun` (
  `uno` int(11) NOT NULL AUTO_INCREMENT,
  `uadi` varchar(50) NOT NULL,
  `fiyat` int(11) DEFAULT NULL,
  `miktar` double DEFAULT NULL,
  PRIMARY KEY (`uno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- organik_pazar.urun: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `urun` DISABLE KEYS */;
/*!40000 ALTER TABLE `urun` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
