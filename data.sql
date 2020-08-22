-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: wq
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `dance`
--

DROP TABLE IF EXISTS `dance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dance` (
  `序号` int(10) NOT NULL AUTO_INCREMENT,
  `舞蹈伴奏` varchar(50) NOT NULL,
  `表演平台` varchar(10) NOT NULL,
  `表演时间` date NOT NULL,
  PRIMARY KEY (`序号`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dance`
--

LOCK TABLES `dance` WRITE;
/*!40000 ALTER TABLE `dance` DISABLE KEYS */;
INSERT INTO `dance` VALUES (20,'《If You》','易烊千玺生日会','2015-11-28'),(21,'《You And Me》','400w粉丝福利','2018-11-28'),(22,'《Tell Me Why》','舞蹈秀','2017-11-15'),(23,'《Wild》','17岁生日会','2017-11-29'),(24,'《Belief》','易烊千玺生日会','2018-01-11'),(25,'《Hope》','五周年演唱会','2018-08-24'),(26,'《Niggas In Paris 》中枪舞','舞蹈秀','2015-11-15'),(27,'《To My Soul》','易烊千玺燚成人礼','2018-11-28'),(28,'《BangBangBang》','舞蹈秀','2018-01-02'),(29,'《游离之间》','18岁生日会','2018-11-28'),(30,'《Don\'t Tie Me Down》','易烊千玺燚成人礼','2018-11-28'),(31,'《精彩才刚刚开始》','舞蹈秀','2018-11-12'),(32,'《Trouble Maker》','舞蹈秀','2018-08-06'),(33,'《Titans》','快乐大本营','2016-09-10'),(34,'《The Catch Up 》','练习版','2015-09-27'),(35,'《The Phoenix》','舞蹈混剪','2015-08-26'),(36,'《咚巴拉》','王牌对王牌','2018-03-02'),(37,'《西雅图》','自编舞','2018-03-26'),(38,'《Happy Birthday》','舞蹈秀','2015-03-26');
/*!40000 ALTER TABLE `dance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yyqx`
--

DROP TABLE IF EXISTS `yyqx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yyqx` (
  `序号` int(10) NOT NULL AUTO_INCREMENT,
  `歌名` varchar(20) NOT NULL,
  `发行时间` date NOT NULL,
  `歌曲来源` varchar(20) DEFAULT '无',
  `语言` enum('国语','英语') NOT NULL,
  `歌曲类型` enum('单曲','翻唱') NOT NULL,
  `发行方式` enum('个人','团体') NOT NULL,
  PRIMARY KEY (`序号`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yyqx`
--

LOCK TABLES `yyqx` WRITE;
/*!40000 ALTER TABLE `yyqx` DISABLE KEYS */;
INSERT INTO `yyqx` VALUES (1,'亲爱的这里没有一个人','2018-11-28','我乐意沉默释放内心焰火','国语','单曲','个人'),(2,'灾','2018-11-28','我乐意沉默释放内心焰火','国语','单曲','个人'),(3,'恒温动物','2018-11-28','我乐意沉默释放内心焰火','国语','单曲','个人'),(4,'舒适圈','2018-11-28','我乐意沉默释放内心焰火','国语','单曲','个人'),(5,'Nothing to Lose','2018-11-28','我乐意沉默释放内心焰火','英语','单曲','个人'),(6,'大梦想家','2015-12-29','专辑《大梦想家》','国语','单曲','团体'),(7,'宠爱','2015-12-29','专辑《大梦想家》','国语','单曲','团体'),(8,'剩下的盛夏','2015-12-29','专辑《大梦想家》','国语','单曲','团体'),(9,'少年说','2015-12-29','专辑《大梦想家》','国语','单曲','团体'),(10,'Love With You','2015-12-29','专辑《大梦想家》','国语','单曲','团体'),(11,'青春修炼手册','2014-10-27','专辑《青春修炼手册》','国语','单曲','团体'),(12,'幸运符号','2014-10-27','专辑《青春修炼手册》','国语','单曲','团体'),(13,'快乐环岛','2014-10-27','专辑《青春修炼手册》','国语','单曲','团体'),(14,'信仰之名','2014-10-27','专辑《青春修炼手册》','国语','单曲','团体'),(15,'魔法城堡','2014-03-13','专辑《魔法城堡》','国语','单曲','团体'),(16,'Heart','2013-10-18','专辑《Heart梦，出发》','国语','单曲','团体'),(17,'爱出发','2013-10-18','专辑《Heart梦，出发》','国语','单曲','团体'),(18,'梦想起航','2013-10-18','专辑《Heart梦，出发》','国语','单曲','团体'),(19,'精彩才刚刚开始','2018-10-15','天猫双十一十年主题曲','国语','单曲','个人'),(20,'丹青千里','2018-07-25','无','国语','单曲','个人'),(21,'Boyfriend','2017-11-28','无','英语','翻唱','个人'),(22,'All of Me','2017-11-28','无','英语','翻唱','个人'),(23,'喜剧之王','2017-11-28','无','国语','翻唱','个人'),(24,'你的爱','2017-11-28','无','国语','翻唱','个人'),(25,'Unprefictable','2017-11-28','无','英语','单曲','个人'),(26,'离骚','2017-04-21','《思美人》片尾曲','国语','单曲','个人'),(27,'当你老了','2017-03-26','无','国语','翻唱','个人'),(28,'你说','2016-11-25','无','国语','单曲','个人'),(29,'不完美小孩','2016-01-01','无','国语','单曲','团体'),(30,'样','2015-12-29','专辑《大梦想家》','国语','单曲','团体');
/*!40000 ALTER TABLE `yyqx` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-31 15:40:59
