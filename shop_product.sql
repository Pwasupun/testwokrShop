-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pro_id` int NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(45) NOT NULL,
  `pro_type` varchar(45) NOT NULL,
  `pro_details` longtext NOT NULL,
  `pro_price` int NOT NULL,
  `pro_img` varchar(20) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'COMPUTER SET J-0210','computer','CPU : AMD RYZEN 7 5800X 3.8 GHz\nCPU COOLER : SILVERSTONE PF360-ARGB\nMB : ASUS ROG STRIX X570-F GAMING\nRAM : 16GB (8GBx2) DDR4/3200 RAM PC KINGSTON FURY RENEGADE DDR4 RGB BLACK (KF432C16RBAK2/16)\nVGA : ASUS TUF RX6700XT O12G GAMING - 12GB GDDR6\nSTORAGE : 1 TB SSD WD BLACK SN750 PCIe/NVMe M.2 2280 (WDS100T3X0C)\nPSU : ASUS ROG STRIX - 750W 80 PLUS GOLD\nCASE : ASUS TUF GAMING GT501',77900,'1'),(2,'COMPUTER SET J-0207','computer','CPU : AMD RYZEN 5 3600 3.6 GHz\nMB : ASROCK B450 STEEL LEGEND\nRAM : 16GB (8GBx2) DDR4/3200 RAM PC KINGSTON FURY BEAST DDR4 RGB BLACK (KF432C16BBAK2/16)\nVGA : ZOTAC GAMING GEFORCE RTX 3060 TWIN EDGE OC - 12GB GDDR6 (ZT-A30600H-10M-LHR) (LHR)\nSTORAGE : 500 GB SSD WD BLUE SN550 PCIe/NVMe M.2 2280 (WDS500G2B0C)\nPSU : COOLER MASTER G600 GOLD - 600W 80 PLUS GOLD (MPW-6001-ACAAG-EU)\nCASE : COOLER MASTER CMP 510',46900,'2'),(3,'COMPUTER SET J-0177','computer','CPU : AMD AM4 RYZEN 5 3600 3.6GHz\nMB : GIGABYTE B450 AORUS ELITE V2\nRAM : 32GB (16GBx2) DDR4/3200 RAM PC KINGSTON HyperX FURY RGB (HX432C16FB3AK2/32)\nVGA : GALAX GEFORCE RTX 3060 (1-CLICK OC) - 12GB GDDR6\nSTORAGE 1 : 512 GB SSD HIKVISION E1000 PCIe/NVMe M.2 2280 (HS-SSD-E1000 512G)\nSTORAGE 2 : 1 TB HDD WD BLUE 7200RPM SATA3 (WD10EZEX)\nPSU : CORSAIR 650W CV650 80 PLUS BRONZE (CP-9020236-NA)\nCASE : THERMALTAKE H350 TG RGB',57900,'3'),(4,'iPhone 12 Pro','telephone','จอภาพ Super Retina XDR ขนาด 6.1 นิ้ว1\n\nCeramic Shield ซึ่งแข็งแกร่งกว่ากระจกไหนๆ บนสมาร์ทโฟน\n\nรองรับ 5G3\n\nชิพที่เร็วที่สุดเท่าที่เคยมีมาในสมาร์ทโฟนอย่างชิพ A14 Bionic\nระบบกล้องระดับโปรที่ประกอบด้วยกล้องอัลตร้าไวด์, ไวด์ และเทเลโฟโต้ ความละเอียด 12MP พร้อมช่วงซูมแบบออปติคอล 4 เท่า, โหมดกลางคืน, Deep Fusion, HDR อัจฉริยะ 3, Apple ProRAW,5 และการบันทึก HDR ระดับ 4K ในแบบ Dolby Vision\nสแกนเนอร์ LiDAR เพื่อประสบการณ์ AR ที่ดียิ่งขึ้น และภาพถ่ายบุคคลในโหมดกลางคืน\nกล้องหน้า TrueDepth ความละเอียด 12MP พร้อมโหมดกลางคืน และการบันทึก HDR ระดับ 4K ในแบบ Dolby Vision\nความสามารถในการทนน้ำที่ระดับ IP68 ชั้นแนวหน้าของอุตสาหกรรม6\nรองรับอุปกรณ์เสริม MagSafe เพื่อการยึดติดที่ง่ายดายและการชาร์จแบบไร้สายที่เร็วขึ้น4\niOS 14 พร้อมวิดเจ็ตที่ได้รับการออกแบบมาใหม่บนหน้าจอโฮม คลังแอพแบบใหม่หมด แอพคลิป และอีกมากมาย',40900,'t1'),(5,'iPhone 12','telephone','จอภาพ Super Retina XDR ขนาด 6.1 นิ้ว2\nCeramic Shield ซึ่งแข็งแกร่งกว่ากระจกไหนๆ บนสมาร์ทโฟน\n5G เพื่อการดาวน์โหลดที่เร็วสุดแรงและการสตรีมคุณภาพสูง1\nชิปที่เร็วที่สุดเท่าที่เคยมีมาในสมาร์ทโฟนอย่างชิป A14 Bionic\nระบบกล้องคู่สุดล้ำที่ประกอบด้วยกล้องอัลตร้าไวด์และไวด์ ความละเอียด 12MP พร้อมโหมดกลางคืน, Deep Fusion, HDR อัจฉริยะ 3 และการบันทึก HDR ระดับ 4K ในแบบ Dolby Vision\nกล้องหน้า TrueDepth ความละเอียด 12MP พร้อมโหมดกลางคืน และการบันทึก HDR ระดับ 4K ในแบบ Dolby Vision\nความสามารถในการทนน้ำที่ระดับ IP68 ชั้นแนวหน้าของอุตสาหกรรม5\nรองรับอุปกรณ์เสริม MagSafe เพื่อการยึดติดที่ง่ายดายและการชาร์จแบบไร้สายที่เร็วขึ้น4\niOS 14 พร้อมวิดเจ็ตที่ได้รับการออกแบบมาใหม่บนหน้าจอโฮม คลังแอปแบบใหม่หมด แอปคลิป และอีกมากมาย',25900,'t2'),(6,'iPhone 12 mini','telephone','จอภาพ Super Retina XDR ขนาด 5.4 นิ้ว1\nCeramic Shield ซึ่งแข็งแกร่งกว่ากระจกไหนๆ บนสมาร์ทโฟน\nรองรับ 5G3\nชิพที่เร็วที่สุดเท่าที่เคยมีมาในสมาร์ทโฟนอย่างชิพ A14 Bionic\nระบบกล้องคู่สุดล้ำที่ประกอบด้วยกล้องอัลตร้าไวด์และไวด์ ความละเอียด 12MP พร้อมโหมดกลางคืน, Deep Fusion, HDR อัจฉริยะ 3 และการบันทึก HDR ระดับ 4K ในแบบ Dolby Vision\nกล้องหน้า TrueDepth ความละเอียด 12MP พร้อมโหมดกลางคืน และการบันทึก HDR ระดับ 4K ในแบบ Dolby Vision\nความสามารถในการทนน้ำที่ระดับ IP68 ชั้นแนวหน้าของอุตสาหกรรม5\nรองรับอุปกรณ์เสริม MagSafe เพื่อการยึดติดที่ง่ายดายและการชาร์จแบบไร้สายที่เร็วขึ้น4\niOS 14 พร้อมวิดเจ็ตที่ได้รับการออกแบบมาใหม่บนหน้าจอโฮม คลังแอพแบบใหม่หมด แอพคลิป และอีกมากมาย',24990,'t3');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01 19:35:30
