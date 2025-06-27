-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.45-community - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for saloon
CREATE DATABASE IF NOT EXISTS `saloon` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `saloon`;

-- Dumping structure for table saloon.accepted_report
CREATE TABLE IF NOT EXISTS `accepted_report` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `total_hair_kg` varchar(50) NOT NULL DEFAULT '',
  `total_melanin` varchar(50) NOT NULL DEFAULT '',
  `total_kertain` varchar(50) NOT NULL DEFAULT '',
  `batch` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.admin_files
CREATE TABLE IF NOT EXISTS `admin_files` (
  `pro_id` varchar(3) NOT NULL DEFAULT '0',
  `product_name` varchar(50) NOT NULL DEFAULT '0',
  `product_desc` text NOT NULL,
  `product_type` varchar(100) NOT NULL DEFAULT '0',
  `price` varchar(30) NOT NULL DEFAULT '0',
  `volume` varchar(30) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '0',
  `ingrediants` varchar(255) NOT NULL DEFAULT '0',
  `purpose` varchar(255) NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.calculation
CREATE TABLE IF NOT EXISTS `calculation` (
  `mail_id` varchar(50) NOT NULL DEFAULT '',
  `melanin_ratio` varchar(50) NOT NULL DEFAULT '',
  `kertain_ration` varchar(50) NOT NULL DEFAULT '',
  `ethanol_amount_1` varchar(50) NOT NULL DEFAULT '',
  `h202_amount_l` varchar(50) NOT NULL DEFAULT '',
  `naoh_amount_l` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.client_register
CREATE TABLE IF NOT EXISTS `client_register` (
  `username` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `confirm_password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.collection_management
CREATE TABLE IF NOT EXISTS `collection_management` (
  `emp_name` varchar(30) NOT NULL,
  `emp_mail` varchar(30) NOT NULL,
  `emp_phone` varchar(10) NOT NULL,
  `emp_id` varchar(4) NOT NULL,
  `password` varchar(15) NOT NULL DEFAULT '0',
  `emp_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.collection_result
CREATE TABLE IF NOT EXISTS `collection_result` (
  `mail_id` varchar(50) NOT NULL,
  `initial_melanin` varchar(50) NOT NULL,
  `initial_kertain` varchar(50) NOT NULL,
  `melanin_yield` varchar(50) NOT NULL,
  `kertain_yield` varchar(50) NOT NULL,
  `amount_of_hair` varchar(50) NOT NULL,
  `batch_details` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.employee_status
CREATE TABLE IF NOT EXISTS `employee_status` (
  `id` varchar(50) NOT NULL,
  `batch` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.fixed_amount
CREATE TABLE IF NOT EXISTS `fixed_amount` (
  `id` varchar(50) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.hair_dataset
CREATE TABLE IF NOT EXISTS `hair_dataset` (
  `id` varchar(50) NOT NULL,
  `month` varchar(30) NOT NULL,
  `total_kg` varchar(30) NOT NULL,
  `hair_type` varchar(30) NOT NULL,
  `length` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `condition` varchar(30) NOT NULL,
  `service_type` varchar(30) NOT NULL,
  `batch` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.ionic_liquid_kertain
CREATE TABLE IF NOT EXISTS `ionic_liquid_kertain` (
  `id` varchar(50) NOT NULL,
  `chemical_name` varchar(50) NOT NULL,
  `chemical_formula` varchar(50) NOT NULL,
  `boiling_point` varchar(50) NOT NULL,
  `solublity` varchar(50) NOT NULL,
  `appreance` varchar(50) NOT NULL,
  `result` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.ionic_liquid_melanin
CREATE TABLE IF NOT EXISTS `ionic_liquid_melanin` (
  `id` varchar(50) NOT NULL,
  `chemical_name` varchar(50) NOT NULL,
  `chemical_formula` varchar(50) NOT NULL,
  `boiling_point` varchar(50) NOT NULL,
  `solubility` varchar(50) NOT NULL,
  `appreance` varchar(50) NOT NULL,
  `result` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.kertain_report
CREATE TABLE IF NOT EXISTS `kertain_report` (
  `batch` varchar(50) NOT NULL,
  `initial_protein` varchar(50) NOT NULL DEFAULT '',
  `temperature` varchar(50) NOT NULL DEFAULT '',
  `remaining_protein` varchar(50) NOT NULL DEFAULT '',
  `solublity` varchar(50) NOT NULL DEFAULT '',
  `apperance` varchar(150) NOT NULL DEFAULT '',
  `result` varchar(200) NOT NULL DEFAULT '',
  `formula_name` varchar(50) NOT NULL DEFAULT '',
  `id` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.melanin_report
CREATE TABLE IF NOT EXISTS `melanin_report` (
  `batch` varchar(50) NOT NULL DEFAULT '',
  `melanin_ionic_amount` varchar(50) NOT NULL DEFAULT '',
  `molecular_weight_melanin` varchar(50) NOT NULL,
  `melanin_temperature` varchar(50) NOT NULL,
  `appreance` varchar(100) NOT NULL,
  `result` varchar(150) NOT NULL,
  `formula_name` varchar(50) NOT NULL DEFAULT '',
  `id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.payment
CREATE TABLE IF NOT EXISTS `payment` (
  `order_id` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `account_number` varchar(30) NOT NULL,
  `total_amount` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.permanent_order
CREATE TABLE IF NOT EXISTS `permanent_order` (
  `order_id` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.process_analysis
CREATE TABLE IF NOT EXISTS `process_analysis` (
  `empname` varchar(30) NOT NULL,
  `empmail` varchar(30) NOT NULL,
  `empphone` varchar(10) NOT NULL,
  `empid` varchar(4) NOT NULL DEFAULT '0',
  `password` varchar(15) NOT NULL DEFAULT '0',
  `empstatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.saloon_owner
CREATE TABLE IF NOT EXISTS `saloon_owner` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `shop_name` varchar(30) NOT NULL,
  `shop_Address` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table saloon.temp_order
CREATE TABLE IF NOT EXISTS `temp_order` (
  `id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `decc` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `volume` varchar(100) NOT NULL,
  `ingrediants` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
