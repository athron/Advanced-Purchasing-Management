/*
SQLyog  v11.01 (32 bit)
MySQL - 5.6.21 : Database - purchasing
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`purchasing` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `purchasing`;

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `kd_item_jenis` char(2) NOT NULL,
  `kd_item` char(2) NOT NULL,
  `kd_item_unit` char(2) NOT NULL,
  `nm_item` char(50) DEFAULT NULL,
  PRIMARY KEY (`kd_item_jenis`,`kd_item`),
  UNIQUE KEY `idx_item_0` (`kd_item`,`nm_item`),
  KEY `idx_item_1` (`kd_item_jenis`),
  KEY `idx_item_2` (`kd_item_unit`),
  CONSTRAINT `fk_item_item_jenis` FOREIGN KEY (`kd_item_jenis`) REFERENCES `item_jenis` (`kd_item_jenis`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_item_item_unit` FOREIGN KEY (`kd_item_unit`) REFERENCES `item_unit` (`kd_item_unit`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `item` */

insert  into `item`(`kd_item_jenis`,`kd_item`,`kd_item_unit`,`nm_item`) values ('00','00','07','BALLPOINT'),('00','01','0D','KERTAS HVS UK/ A4'),('00','02','0D','KERTAS HVS UK/ F4'),('00','03','0D','KERTAS BURAM'),('00','04','01','CONTINUOUS FORM 7PLY'),('00','05','01','CONTINUOUS FORM 6PLY'),('00','06','01','CONTINUOUS FORM 2PLY'),('00','07','01','CONTINUOUS FORM 1PLY'),('00','08','08','STICKER PAPER'),('00','09','08','LABEL TOM & JERRY'),('00','0A','0B','AMPLOP COKLAT A3'),('00','0B','0B','BUKU BESAR UK/ FOLIO'),('00','0C','0B','BUKU EKSPEDISI'),('00','0D','0B','BUKU AKUNTANSI KECIL'),('00','0E','07','SPIDOL BOARDMARKER PERMANENT'),('00','0F','07','SPIDOL ARTLINE 70'),('00','0G','0B','SPIDOL ARTLINE-90 ( UJUNG KOTAK )'),('00','0H','08','AMPLOP COKLAT FOLIO'),('00','0I','08','AMPLOP PUTIH BESAR'),('00','0J','08','AMPLOP PUTIH KECIL'),('00','0K','0E','KERTAS FAX'),('00','0L','0B','TINTA REFILL DATAPRINT'),('00','0M','0B','TINTA REFILL SPIDOL PERMANENT'),('00','0N','0B','TINTA STEMPEL'),('00','0O','0B','LEM KERTAS'),('00','0P','0B','MAP BIASA'),('00','0Q','0B','MAP JEPIT/MAP PLASTIK FILE'),('00','0R','00','KWITANSI KECIL'),('00','0S','00','KWITANSI BESAR'),('00','0T','0E','ISOLATIF BENING/DOUBLE TAPE'),('00','0U','0B','BATU BATERAI AA'),('00','0V','0B','POST IT NO.655'),('00','0W','0B','POST IT NO.645'),('00','0X','0B','TIP-EX'),('00','0Y','08','PENSIL 2B'),('00','0Z','0B','STABILO'),('00','10','01','BINDER CLIPS BESAR'),('00','11','01','BINDER CLIPS KECIL'),('00','12','0B','BOX FILE'),('00','13','01','PENJEPIT KERTAS'),('00','14','01','PAPER CLIPS'),('00','15','01','ISI CUTTER BESAR L 150'),('00','16','01','ISI CUTTER KECIL A 100'),('00','17','0E','PITA DIMO'),('00','18','0B','TRAY/STANDART BUKU'),('00','19','08','PLASTIC POCKET'),('00','1A','0B','ORDNER KECIL'),('00','1B','0B','ORDNER BESAR'),('00','1C','0B','STAPLER SEDANG'),('00','1D','07','ISI STAPLER KECIL'),('00','1E','00','BUKU NOTA/KECIL'),('00','1F','00','BUKU SURAT JALAN (DR)'),('00','1G','00','BUKU CASH VOUCHER'),('00','1H','00','BUKU BUKTI TERIMA BARANG'),('00','1I','00','BUKU REPACKING / DILUTION'),('00','1J','00','BUKU CASH RECEIPT VOUCHER'),('00','1K','00','BUKU PURCHASE REQUEST ( PR )'),('00','1L','00','BUKU FAKTUR PAJAK STANDARD'),('00','1M','00','BUKU MEMO'),('00','1N','00','BUKU TANDA TERIMA'),('01','00','05','VALENCIA ORANGE'),('01','01','05','FROZEN CONC. ORANGE JUICE'),('01','02','05','ORANGE CELL'),('01','03','05','FC LEMON JUICE'),('01','04','05','MANGO TOTAPURI PUREE'),('01','05','05','POMEGRANATE CONCENTRATE'),('01','06','05','FRESH KIWI'),('02','00','05','FRESH APPLE (MANALAGI)'),('02','01','05','FRESH PINEAPPLE'),('02','02','05','PINK GUAVA PUREE'),('02','03','05','WHITE GUAVA PUREE'),('02','04','05','FRESH PINK GUAVA'),('02','05','05','FRESH WHITE GUAVA'),('02','06','05','SOURSOP PUREE'),('02','07','05','FRESH SOURSOP'),('02','08','05','STRAWBERRY CONCENTRATE'),('02','09','05','STRAWBERRY PUREE'),('02','0A','05','FRESH STRAWBERRY'),('02','0B','05','STRAWBERRY FRESH SUPER'),('02','0C','05','FRESH BANANA'),('02','0D','05','KIWI PUREE'),('02','0E','03','FRESH GRAPEFRUIT/JERUK BALI'),('02','0F','05','FRESH LEMON'),('02','0G','05','FRESH LIME'),('02','0H','05','KLENGKENG FRESH'),('02','0I','05','FRESH RAMBUTAN'),('02','0J','05','FRESH CARROT'),('02','0K','01','FRESH GRAPE'),('02','0L','05','FRESH LYCHEE'),('02','0M','05','FRESH POMEGRANATE'),('02','0N','05','FRESH TERONG BELANDA'),('03','00','05','FRUCTOSE HFS 55%'),('03','01','05','FLAVOUR ORANGE CIP'),('03','02','05','FLAVOUR ORANGE WSE'),('03','03','05','FLAVOUR ORANGE CITRONOVA'),('03','04','05','FLAVOUR APPLE'),('03','05','05','FLAVOUR PINEAPPLE'),('03','06','05','FLAVOUR PINK GUAVA'),('03','07','05','FLAVOUR MANGO'),('03','08','05','FLAVOUR LEMON WSE'),('03','09','05','FLAVOUR LEMON MANE'),('03','0A','05','FLAVOUR SOURSOP'),('03','0B','05','FLAVOUR STRAWBERRY'),('03','0C','05','FLAVOUR BANANA'),('03','0D','05','FLAVOUR LEMON 502142 CTNK ( LIME )'),('03','0E','05','FLAVOUR LYCHEE'),('03','0F','05','FLAVOUR GRAPE'),('03','0G','05','FLAVOUR CRANBERRY'),('03','0H','05','FLAVOR BLUEBERRY R 1006527'),('03','0I','05','FLAVOUR POMEGRANATE'),('03','0J','05','FLAVOUR MARQUISA'),('03','0K','05','FLAVOUR SOYA MILK'),('03','0L','05','FLAVOUR TAMARIND'),('03','0M','05','FLAVOR CINCAU'),('03','0N','05','FLAVOR KURMA R 1012399'),('03','0O','05','CHOCOLATE PASTE FLAVOUR ( C002.P-6024 { MOD }'),('03','0P','05','CHOCOLATE PASTE FLAVOUR ( C002.P-7729 { MOD }'),('03','0Q','05','FLAVOR GREEN BEAN 1423272'),('03','0R','06','PERASA BROTOWALI'),('03','0S','05','CARAMEL'),('03','0T','05','CITRIC ACID'),('03','0U','05','MALIC ACID'),('03','0V','05','POTASSIUM SORBATE'),('03','0W','05','SODIUM BENZOATE'),('03','0X','05','GUAR GUM'),('03','0Y','05','EGG YELLOW'),('03','0Z','05','TITANIUM DIOKSIDE'),('03','10','05','F4R (PONCEU 4R)'),('03','11','05','CARMOISINE'),('03','12','05','TARTRAZINE'),('03','13','05','CLOUDYFIER R 0812833'),('03','14','05','CLOUDYFIER POWDER 3442'),('03','15','05','CLOUDYFIER HB'),('03','16','05','CLOUDY KJ 3800'),('03','17','05','JELLY G TIPE HA'),('03','18','05','SODIUM CITRATE'),('03','19','05','BETACAROTENE WSP N - 033'),('03','1A','05','BRILLIANT BLUE'),('03','1B','05','RED 80'),('03','1C','05','CMC'),('03','1D','05','ASCORBIC ACID (VITAMIN C)'),('03','1E','05','LOW CAROTENE 1 CWD/Y'),('03','1F','05','NATRIUM META BISULFIT'),('03','1G','05','GREEN LMS'),('03','1H','05','SODIUM CYCLAMATE NF 13'),('03','1I','05','SODIUM CYCLAMATE SUPER'),('03','1J','05','PECTIN APC 170 HM'),('03','1K','05','XANTHAN GUM'),('03','1L','06','AIR'),('03','1M','05','CHICKEN POWDER R 1016862'),('03','1N','05','HYDROLYZED VEGETABLE PROTEIN POWDER ( HVP )'),('03','1O','05','CHICKEN FAT POWDER ( FOODEX-FDX-05090-N )'),('03','1P','05','GARLIC POWDER R 1008825'),('03','1Q','05','ONION POWDER R 1008835'),('03','1R','02','PHENOLPHTHALEIN INDIKATOR'),('04','00','0B','BOTOL 330 ML'),('04','01','0B','BOTOL 330 ML PP + CAP GOLD'),('04','02','0B','BOTOL 1 LITER'),('04','03','0B','BOTOL 2 LITER'),('04','04','0B','BOTOL 5 LITER'),('04','05','0B','BOTOL 100 ML CLEAR PET'),('04','06','0B','CP 1.5 LT PUTIH+LID+CP'),('04','07','0B','CP 2.5 LT PUTIH PENDEK+LID'),('04','08','0B','TOPLES F3 ( 0231 ) + TUTUP HM+ PLUG POLOS'),('04','09','0B','PAIL 5 KG BLUEIS DAS'),('04','0A','0B','CUP 130 ML'),('04','0B','0B','CUP  220 ML'),('04','0C','0B','CUP 14 OZ'),('04','0D','0B','CUP 180 ML'),('04','0E','0B','CUP 170 ML'),('04','0F','0B','TUTUP CUP 14 OZ'),('04','0G','0B','CAP + WADDING BTL 5 L'),('04','0H','0B','WADDING BTL 1 L'),('04','0I','0B','BOTOL 10 LITER'),('04','0J','0B','KARTON 130 X 45'),('04','0K','0B','KARTON 330 X 24'),('04','0L','0B','KARTON 1 X 12'),('04','0M','0B','KARTON 1 X 12 TOZA POLOS'),('04','0N','0B','KARTON 2 X 6'),('04','0O','0B','KARTON SECENG JUS 170 ML X 24 PCS'),('04','0P','0E','LAKBAN'),('04','0Q','0B','CAP SEAL (ALMNM FOIL)'),('04','0R','0E','CODE TAPE GOLD'),('04','0S','0E','CODE TAPE BLACK'),('04','0T','0E','HOT PRINT ROLL'),('04','0U','0B','PLASTIK SHRINK 1 L'),('04','0V','0B','PLASTIK SHRINK 330 ML'),('04','0W','0B','SHRINK CAPSEAL POLOS'),('04','0X','0E','LID CUP PLASTIK POLOS'),('04','0Y','0E','LID CUP MEKARSARI'),('04','0Z','0B','LID CUP SECENG JUS LYCHEE'),('04','10','0B','LID CUP SECENG JUS GRAPE'),('04','11','0B','LID CUP SECENG JUS ORANGE'),('04','12','0B','CYLINDER LID SECENG JUS'),('04','13','08','KANTONG PLASTIK PUTIH'),('04','14','0B','STRAW/SEDOTAN U-SHAPE 330 ML'),('04','15','0B','STRAW/SEDOTAN CUP 130 ML'),('04','16','05','SEDOTAN FLEXIBLE 6X20 CM'),('04','17','0B','STRAW/SEDOTAN CUP 180 ML PERFORASI'),('04','18','0B','STICKER 330 ML'),('04','19','0B','STICKER 1 L'),('04','1A','0B','STICKER 5 L'),('04','1B','0B','STICKER BULAT'),('04','1C','0B','STICKER U - JUS 2 LITER'),('04','1D','0B','STICKER MY JUICE 330 ML'),('04','1E','0B','STICKER U - JUS ORANGE 330 ML'),('04','1F','0B','ST. PROCHEF KALDU AYAM 1 KG'),('04','1G','0B','ST. PROCHEF KALDU AYAM 165 GRAM'),('04','1H','0B','ST. SUSU KEDELAI COKLAT BULAT TRANSPARANT'),('04','1I','0B','ST. SUSU KEDELAI STRAWBERRY BULAT TRANSPARANT'),('04','1J','0B','ST. MY JAM STRAWBERRY 145 GR'),('04','1K','0B','ST. MY JAM PINEAPPLE 145 GR'),('04','1L','0B','ST. MY JAM ORANGE 145 GR'),('04','1M','0B','ST. MY JAM STRAWBERRY 5 KG'),('04','1N','0B','ST. MY JAM PINEAPPLE 5 KG'),('04','1O','0B','ST. MY JAM ORANGE 5 KG'),('04','1P','0B','ST. MY JAM STRAWBERRY 2 KG'),('04','1Q','0B','ST. MY JAM PINEAPPLE 2 KG'),('04','1R','0B','ST. MY JAM ORANGE 2 KG'),('04','1S','0B','STICKER PLASTIK'),('05','00','08','PLASTIK SAMPAH'),('05','01','0B','PISAU'),('05','02','0B','PEMBUKA KALENG ( VICTORINOX )'),('05','03','0B','SABUT CUCI'),('05','04','0B','ALAT PEL LANTAI'),('05','05','0B','SIKAT LANTAI BERTANGKAI'),('05','06','0B','SIKAT LANTAI'),('05','07','0B','TARIKAN AIR'),('05','08','0C','SEPATU BOOT'),('05','09','0B','TOPI PRODUKSI'),('05','0A','0B','CELEMEK PRODUKSI'),('05','0B','0A','HAND COVER'),('05','0C','01','GLOVES RUBBER'),('05','0D','01','MASKER'),('05','0E','0E','TISSUE'),('05','0F','0B','POWER CLEAN'),('05','0G','02','PORSTEX'),('05','0H','02','SABUN SOS'),('05','0I','04','FORWARD ( FLOOR CLEANER )'),('05','0J','0B','PALLET PLASTIK'),('05','0K','0B','KURSI KECIL'),('05','0L','0B','GENTONG 130 L'),('05','0M','0F','REFRACTOMETER'),('05','0N','0F','MESIN CODING'),('05','0O','0F','ECO TDS'),('05','0P','0F','PH METER AZ 8681'),('05','0Q','05','KAPUR'),('05','0R','05','TAWAS'),('05','0S','05','UREA'),('05','0T','05','KAPORIT'),('05','0U','05','SODA API'),('05','0V','0B','CODE CHARACTER MESIN SECENG JUS'),('05','0W','0B','CODE CHARACTER BIASA'),('05','0X','0B','KURSI PLASTIK'),('05','0Y','06','ALKOHOL 70%'),('05','0Z','05','KARET GELANG'),('05','10','08','PLASTIK PE PUREE'),('05','11','08','PLASTIK BENING'),('05','12','0E','TALI RAPIA'),('05','13','0B','EMBER PLASTIK 20 L'),('05','14','0B','KANEBO'),('05','15','09','TITRISOL'),('05','16','06','AQUADEST'),('05','17','0B','PAPER BAG'),('05','18','0B','PAPER BAG UK. KECIL'),('05','19','06','APPLIED 3-300'),('05','1A','0B','KERANJANG BUAH SEGAR'),('05','1B','0B','KESET'),('05','1C','0F','STOP LAMP'),('05','1D','0B','BOX TUPPERWARE'),('05','1E','0B','BOX CONTAINER UK. 125 LITER'),('05','1F','0B','BOX CONTAINER UK. 15 LITER'),('05','1G','0B','SAPU LANTAI'),('05','1H','0B','PAYUNG'),('05','1I','0B','PENGKI PLASTIK'),('05','1J','0B','TULIP GANTUNGAN BAJU'),('05','1K','0F','SENTER');

/*Table structure for table `item_buffer` */

DROP TABLE IF EXISTS `item_buffer`;

CREATE TABLE `item_buffer` (
  `kd_item_jenis` char(2) NOT NULL,
  `kd_item` char(2) NOT NULL,
  `kd_item_buffer` char(2) NOT NULL,
  `v_item_buffer` bigint(20) NOT NULL,
  `kd_pengguna` char(2) NOT NULL,
  `tanggal` datetime NOT NULL,
  PRIMARY KEY (`kd_item_jenis`,`kd_item`,`kd_item_buffer`),
  KEY `idx_item_buffer` (`kd_item_jenis`,`kd_item`),
  KEY `idx_item_buffer_0` (`kd_pengguna`),
  CONSTRAINT `fk_item_buffer_item` FOREIGN KEY (`kd_item_jenis`, `kd_item`) REFERENCES `item` (`kd_item_jenis`, `kd_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_item_buffer_pengguna` FOREIGN KEY (`kd_pengguna`) REFERENCES `pengguna` (`kd_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `item_buffer` */

/*Table structure for table `item_harga` */

DROP TABLE IF EXISTS `item_harga`;

CREATE TABLE `item_harga` (
  `kd_item_jenis` char(2) NOT NULL,
  `kd_item` char(2) NOT NULL,
  `kd_item_harga` char(2) NOT NULL,
  `kd_pengguna` char(2) NOT NULL,
  `tanggal` datetime NOT NULL,
  `v_item_harga` bigint(20) NOT NULL,
  PRIMARY KEY (`kd_item_jenis`,`kd_item`,`kd_item_harga`),
  KEY `idx_item_harga_0` (`kd_item_jenis`,`kd_item`),
  KEY `idx_item_harga_1` (`kd_pengguna`),
  CONSTRAINT `fk_item_harga_item` FOREIGN KEY (`kd_item_jenis`, `kd_item`) REFERENCES `item` (`kd_item_jenis`, `kd_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_item_harga_pengguna` FOREIGN KEY (`kd_pengguna`) REFERENCES `pengguna` (`kd_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `item_harga` */

/*Table structure for table `item_jenis` */

DROP TABLE IF EXISTS `item_jenis`;

CREATE TABLE `item_jenis` (
  `kd_item_jenis` char(2) NOT NULL,
  `nm_item_jenis` char(50) NOT NULL,
  PRIMARY KEY (`kd_item_jenis`),
  UNIQUE KEY `idx_item_jenis_0` (`nm_item_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `item_jenis` */

insert  into `item_jenis`(`kd_item_jenis`,`nm_item_jenis`) values ('00','ALAT TULIS KANTOR'),('01','BAHAN BAKU IMPORT'),('02','BAHAN BAKU LOKAL'),('03','BAHAN PEMBANTU'),('04','PACKAGING'),('05','PERALATAN PABRIK');

/*Table structure for table `item_unit` */

DROP TABLE IF EXISTS `item_unit`;

CREATE TABLE `item_unit` (
  `kd_item_unit` char(2) NOT NULL,
  `nm_item_unit` char(8) DEFAULT NULL,
  PRIMARY KEY (`kd_item_unit`),
  UNIQUE KEY `idx_item_unit_0` (`nm_item_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `item_unit` */

insert  into `item_unit`(`kd_item_unit`,`nm_item_unit`) values ('00','BK'),('01','BOX'),('02','BTL'),('03','BUAH'),('04','GALON'),('05','KG'),('06','LITER'),('07','LSN'),('08','PACK'),('09','PAIL'),('0A','PAIR'),('0B','PCS'),('0C','PSG'),('0D','RIM'),('0E','ROLL'),('0F','UNIT');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `kd_requirement` char(4) NOT NULL,
  `kd_supplier` char(2) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `kd_order` char(2) NOT NULL,
  `kd_pengguna` char(2) NOT NULL,
  PRIMARY KEY (`kd_requirement`,`kd_order`),
  KEY `idx_order` (`kd_requirement`),
  KEY `idx_order_0` (`kd_supplier`),
  KEY `idx_order_1` (`kd_pengguna`),
  CONSTRAINT `fk_order_pengguna` FOREIGN KEY (`kd_pengguna`) REFERENCES `pengguna` (`kd_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_requirement` FOREIGN KEY (`kd_requirement`) REFERENCES `requirement` (`kd_requirement`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_supplier` FOREIGN KEY (`kd_supplier`) REFERENCES `supplier` (`kd_supplier`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order` */

/*Table structure for table `order_item` */

DROP TABLE IF EXISTS `order_item`;

CREATE TABLE `order_item` (
  `kd_requirement` char(4) NOT NULL,
  `kd_order` char(2) NOT NULL,
  `kd_requirement_item` char(2) NOT NULL,
  `qty_order` bigint(20) NOT NULL,
  `kd_order_item` char(2) NOT NULL,
  PRIMARY KEY (`kd_requirement`,`kd_order`,`kd_requirement_item`,`kd_order_item`),
  KEY `idx_order_item` (`kd_requirement`,`kd_order`),
  KEY `idx_order_item_0` (`kd_requirement`,`kd_requirement_item`),
  CONSTRAINT `fk_order_item_order` FOREIGN KEY (`kd_requirement`, `kd_order`) REFERENCES `order` (`kd_requirement`, `kd_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_item_requirement_item` FOREIGN KEY (`kd_requirement`, `kd_requirement_item`) REFERENCES `requirement_item` (`kd_requirement`, `kd_requirement_item`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_item` */

/*Table structure for table `pengguna` */

DROP TABLE IF EXISTS `pengguna`;

CREATE TABLE `pengguna` (
  `kd_pengguna_jenis` char(2) NOT NULL,
  `kd_pengguna` char(2) NOT NULL,
  `nm_pengguna` char(50) NOT NULL,
  `login` char(32) NOT NULL,
  `sandi` char(32) NOT NULL,
  PRIMARY KEY (`kd_pengguna`),
  UNIQUE KEY `idx_pengguna_0` (`login`),
  KEY `idx_pengguna_1` (`kd_pengguna_jenis`),
  CONSTRAINT `fk_pengguna_pengguna_jenis` FOREIGN KEY (`kd_pengguna_jenis`) REFERENCES `pengguna_jenis` (`kd_pengguna_jenis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pengguna` */

insert  into `pengguna`(`kd_pengguna_jenis`,`kd_pengguna`,`nm_pengguna`,`login`,`sandi`) values ('00','00','NDUT','NDUT','NDUT');

/*Table structure for table `pengguna_jenis` */

DROP TABLE IF EXISTS `pengguna_jenis`;

CREATE TABLE `pengguna_jenis` (
  `kd_pengguna_jenis` char(2) NOT NULL,
  `nm_pengguna_jenis` char(15) DEFAULT NULL,
  PRIMARY KEY (`kd_pengguna_jenis`),
  UNIQUE KEY `idx_pengguna_jenis_0` (`nm_pengguna_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pengguna_jenis` */

insert  into `pengguna_jenis`(`kd_pengguna_jenis`,`nm_pengguna_jenis`) values ('01','Admin'),('00','ADMINISTRATOR');

/*Table structure for table `receive` */

DROP TABLE IF EXISTS `receive`;

CREATE TABLE `receive` (
  `kd_requirement` char(4) NOT NULL,
  `kd_order` char(2) NOT NULL,
  `kd_receive` char(2) NOT NULL,
  `tgl_receive` date NOT NULL,
  `kd_pengguna` char(2) NOT NULL,
  PRIMARY KEY (`kd_requirement`,`kd_order`,`kd_receive`),
  KEY `idx_receive` (`kd_requirement`,`kd_order`),
  KEY `idx_receive_1` (`kd_requirement`),
  KEY `idx_receive_2` (`kd_pengguna`),
  CONSTRAINT `fk_receive_order` FOREIGN KEY (`kd_requirement`, `kd_order`) REFERENCES `order` (`kd_requirement`, `kd_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_receive_pengguna` FOREIGN KEY (`kd_pengguna`) REFERENCES `pengguna` (`kd_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `receive` */

/*Table structure for table `receive_item` */

DROP TABLE IF EXISTS `receive_item`;

CREATE TABLE `receive_item` (
  `kd_requirement` char(4) NOT NULL,
  `kd_order` char(2) NOT NULL,
  `kd_order_item` char(2) NOT NULL,
  `qty_receive_item` bigint(20) NOT NULL,
  `kd_receive` char(2) NOT NULL,
  `kd_receive_item` char(2) NOT NULL,
  `harga_receive_item` double NOT NULL,
  `expired_receive_item` date NOT NULL,
  `kd_requirement_item` char(2) NOT NULL,
  PRIMARY KEY (`kd_requirement`,`kd_order`,`kd_receive`,`kd_requirement_item`,`kd_order_item`,`kd_receive_item`),
  KEY `idx_receive_item` (`kd_requirement`,`kd_order`,`kd_receive`),
  KEY `idx_receive_item_0` (`kd_requirement`,`kd_order`,`kd_requirement_item`,`kd_order_item`),
  CONSTRAINT `fk_receive_item_order_item` FOREIGN KEY (`kd_requirement`, `kd_order`, `kd_requirement_item`, `kd_order_item`) REFERENCES `order_item` (`kd_requirement`, `kd_order`, `kd_requirement_item`, `kd_order_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_receive_item_receive` FOREIGN KEY (`kd_requirement`, `kd_order`, `kd_receive`) REFERENCES `receive` (`kd_requirement`, `kd_order`, `kd_receive`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `receive_item` */

/*Table structure for table `receive_item_surat_jalan` */

DROP TABLE IF EXISTS `receive_item_surat_jalan`;

CREATE TABLE `receive_item_surat_jalan` (
  `kd_requirement` char(4) NOT NULL,
  `kd_order` char(2) NOT NULL,
  `kd_receive` char(2) NOT NULL,
  `kd_requirement_item` char(2) NOT NULL,
  `kd_order_item` char(2) NOT NULL,
  `kd_receive_item` char(2) NOT NULL,
  `kd_surat_jalan` char(4) DEFAULT NULL,
  KEY `idx_receive_item_surat_jalan` (`kd_surat_jalan`),
  KEY `idx_receive_item_surat_jalan_0` (`kd_requirement`,`kd_order`,`kd_receive`,`kd_requirement_item`,`kd_order_item`,`kd_receive_item`),
  CONSTRAINT `fk_receive_item_surat_jalan` FOREIGN KEY (`kd_surat_jalan`) REFERENCES `surat_jalan` (`kd_surat_jalan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_receive_item_surat_jalan_0` FOREIGN KEY (`kd_requirement`, `kd_order`, `kd_receive`, `kd_requirement_item`, `kd_order_item`, `kd_receive_item`) REFERENCES `receive_item` (`kd_requirement`, `kd_order`, `kd_receive`, `kd_requirement_item`, `kd_order_item`, `kd_receive_item`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `receive_item_surat_jalan` */

/*Table structure for table `requirement` */

DROP TABLE IF EXISTS `requirement`;

CREATE TABLE `requirement` (
  `kd_requirement` char(4) NOT NULL,
  `tgl_requirement` date NOT NULL,
  `kd_pengguna` char(2) NOT NULL,
  PRIMARY KEY (`kd_requirement`),
  KEY `idx_requirement_0` (`kd_pengguna`),
  CONSTRAINT `fk_requirement_pengguna` FOREIGN KEY (`kd_pengguna`) REFERENCES `pengguna` (`kd_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `requirement` */

/*Table structure for table `requirement_item` */

DROP TABLE IF EXISTS `requirement_item`;

CREATE TABLE `requirement_item` (
  `kd_requirement` char(4) NOT NULL,
  `kd_item_jenis` char(2) NOT NULL,
  `kd_item` char(2) NOT NULL,
  `kd_requirement_item` char(2) NOT NULL,
  `qty_requirement_item` bigint(20) NOT NULL,
  `tgl_requirement_item` date NOT NULL,
  PRIMARY KEY (`kd_requirement`,`kd_requirement_item`),
  KEY `idx_requirement_item_0` (`kd_requirement`),
  KEY `idx_requirement_item_1` (`kd_item_jenis`,`kd_item`),
  CONSTRAINT `fk_requirement_item` FOREIGN KEY (`kd_requirement`) REFERENCES `requirement` (`kd_requirement`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_requirement_item_item` FOREIGN KEY (`kd_item_jenis`, `kd_item`) REFERENCES `item` (`kd_item_jenis`, `kd_item`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `requirement_item` */

/*Table structure for table `return` */

DROP TABLE IF EXISTS `return`;

CREATE TABLE `return` (
  `kd_requirement` char(4) NOT NULL,
  `kd_order` char(2) NOT NULL,
  `kd_receive` char(2) NOT NULL,
  `kd_pengguna` char(2) NOT NULL,
  `kd_return` char(2) NOT NULL,
  `tgl_return` date NOT NULL,
  PRIMARY KEY (`kd_requirement`,`kd_order`,`kd_receive`,`kd_return`),
  KEY `idx_return` (`kd_requirement`,`kd_order`,`kd_receive`),
  CONSTRAINT `fk_return_receive` FOREIGN KEY (`kd_requirement`, `kd_order`, `kd_receive`) REFERENCES `receive` (`kd_requirement`, `kd_order`, `kd_receive`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `return` */

/*Table structure for table `return_item` */

DROP TABLE IF EXISTS `return_item`;

CREATE TABLE `return_item` (
  `kd_requirement` char(4) NOT NULL,
  `kd_order` char(2) NOT NULL,
  `kd_receive` char(2) NOT NULL,
  `kd_requirement_item` char(2) NOT NULL,
  `kd_order_item` char(2) NOT NULL,
  `kd_receive_item` char(2) NOT NULL,
  `kd_return` char(2) NOT NULL,
  `kd_return_item` char(2) NOT NULL,
  `qty_return_item` bigint(20) NOT NULL,
  KEY `idx_return_item` (`kd_requirement`,`kd_order`,`kd_receive`,`kd_requirement_item`,`kd_order_item`,`kd_receive_item`),
  KEY `idx_return_item_0` (`kd_requirement`,`kd_order`,`kd_receive`,`kd_return`),
  CONSTRAINT `fk_return_item_receive` FOREIGN KEY (`kd_requirement`, `kd_order`, `kd_receive`) REFERENCES `receive` (`kd_requirement`, `kd_order`, `kd_receive`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_return_item_receive_item` FOREIGN KEY (`kd_requirement`, `kd_order`, `kd_receive`, `kd_requirement_item`, `kd_order_item`, `kd_receive_item`) REFERENCES `receive_item` (`kd_requirement`, `kd_order`, `kd_receive`, `kd_requirement_item`, `kd_order_item`, `kd_receive_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_return_item_return` FOREIGN KEY (`kd_requirement`, `kd_order`, `kd_receive`, `kd_return`) REFERENCES `return` (`kd_requirement`, `kd_order`, `kd_receive`, `kd_return`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `return_item` */

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `kd_supplier` char(2) NOT NULL,
  `nm_supplier` char(50) NOT NULL,
  PRIMARY KEY (`kd_supplier`),
  UNIQUE KEY `idx_supplier_0` (`nm_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `supplier` */

insert  into `supplier`(`kd_supplier`,`nm_supplier`) values ('01','BINARA ORGANIC STRAWBERRY FARM'),('02','BPK. SANTAWI - PASAR BABAKAN, TANGERANG'),('03','BPK. TEPU-KRAMAT JATI'),('04','BPK. YUSUF - MAJALENGKA'),('05','CAHAYA PELANGI PRINTING'),('06','CAHAYA PRIMA PRINTING'),('07','CV. MICRO AUTOMATIC'),('08','CV. SHEVA MEDIKA'),('09','CV. TASIMACHEM'),('0A','KARYA INTI SUKSES'),('0B','PASAR CURUG - TANGERANG'),('0C','PENGUIN KOMPUTER-TANGERANG'),('0D','PT. ASSOCIATED BRITISH BUDI'),('0E','PT. BEHN MEYER KIMIA'),('0F','PT. BIOPLAST UNGGUL'),('0G','PT. CENTRALPACIFIC PRIMA'),('0H','PT. CITRA NIAGA PERSADA'),('0I','PT. DIAMOND BRAND INDONESIA'),('0J','PT. GALIC BINA MADA'),('0K','PT. HALIM SAKTI PRATAMA'),('0L','PT. INDESSO NIAGATAMA'),('0M','PT. INTRAPARR NUSANTARA'),('0N','PT. KADU JAYA'),('0O','PT. KARTIKA KIRANA KUMALA'),('0P','PT. MANE INDONESIA'),('0Q','PT. PAFA MANDIRI SAKTI'),('0R','PT. PERDANA MEGA JAYA'),('0S','PT. PRIMA KALPLAS'),('0T','PT. PYRAMID MULIAPAK'),('0U','PT. TANSRI GANI'),('0V','PT. UNITED CHEMICAL'),('0W','PT. WIRAUSAHA PLASINDO'),('0X','RAJAWALI PLASTIK - CIKUPA'),('0Y','RISKI GENERAL TRAIDING'),('0Z','SUMBER ANUGERAH KIMIA'),('10','TOKO PEMBINA- TANGERANG'),('11','TOKO PLAASTIK - PASAR CURUG'),('12','TRIOMEGA'),('13','WINOTO-PASAR INDUK KRAMAT JATI');

/*Table structure for table `surat_jalan` */

DROP TABLE IF EXISTS `surat_jalan`;

CREATE TABLE `surat_jalan` (
  `kd_surat_jalan` char(4) NOT NULL,
  `nm_surat_jalan` char(50) NOT NULL,
  `fisik_surat_jalan` blob,
  UNIQUE KEY `pk_surat_jalan` (`kd_surat_jalan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `surat_jalan` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
