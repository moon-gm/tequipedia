-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tequila
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agings`
--

DROP TABLE IF EXISTS `agings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agings` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agings`
--

LOCK TABLES `agings` WRITE;
/*!40000 ALTER TABLE `agings` DISABLE KEYS */;
INSERT INTO `agings` VALUES ('blanco','Blanco','繝悶Λ繝ｳ繧ｳ','tequila','繧ｷ繝ｫ繝舌・,繝励Λ繧ｿ,繝帙Ρ繧､繝・繧ｯ繝ｪ繧ｹ繧ｿ繝ｫ','繧ｪ繝ｼ繧ｯ讓ｽ縺ｫ繧医ｋ辭滓・繧偵＠縺ｪ縺・ｂ縺ｮ縲ゅ∪縺溘・縲∫・謌先悄髢薙′60譌･莉･蜀・〒縺ゅｋ縺薙→縲・,'・樒・謌先悄髢・繝ｶ譛域悴貅・医す繝ｫ繝舌・繝ｻ繝励Λ繧ｿ・会ｽ・,NULL,NULL),('gold','Gold','繧ｴ繝ｼ繝ｫ繝・,'tequila','逅･迴濶ｲ逕ｱ譚･','迚ｹ縺ｫ隕丞ｮ壹′險ｭ縺代ｉ繧後※縺・↑縺・′縲√ヶ繝ｩ繝ｳ繧ｳ縺ｨ繝ｬ繝昴し繝峨・荳ｭ髢薙・繧医≧縺ｪ濶ｲ蜻ｳ縺ｮ繧ゅ・縲・,'・樒音縺ｫ隕丞ｮ壹↑縺暦ｽ・,NULL,NULL),('reposado','Reposado','繝ｬ繝昴し繝・,'tequila','莨代∪縺帙◆縺ｮ諢・,'譛菴・繝ｶ譛磯俣縺ｮ繧ｪ繝ｼ繧ｯ讓ｽ縺ｫ繧医ｊ辭滓・縺励◆繧ゅ・縲・,'・樒・謌先悄髢捺怙菴・繝ｶ譛茨ｽ・,NULL,NULL),('anejo','Anejo','繧｢繝阪・','tequila','辭滓・縺輔○縺溘・諢・,'譛菴・蟷ｴ髢薙・繧ｪ繝ｼ繧ｯ讓ｽ縺ｫ繧医ｊ辭滓・縺励◆繧ゅ・縲ゅが繝ｼ繧ｯ讓ｽ縺ｯ600L莉･荳九・繧ｵ繧､繧ｺ縺ｧ縺ゅｋ縺薙→縲・,'・樒・謌先悄髢捺怙菴・蟷ｴ・・,NULL,NULL),('extraanejo','ExtraAnejo','繧ｨ繧ｯ繧ｹ繝医Λ繧｢繝阪・','tequila','繧｢繝阪・繧定ｶ・∴縺溽・謌・,'譛菴・蟷ｴ髢薙・繧ｪ繝ｼ繧ｯ讓ｽ縺ｫ繧医ｊ辭滓・縺励◆繧ゅ・縲ゅが繝ｼ繧ｯ讓ｽ縺ｯ600L莉･荳九・繧ｵ繧､繧ｺ縺ｧ縺ゅｋ縺薙→縲・,'・樒・謌先悄髢捺怙菴・蟷ｴ・・,NULL,NULL),('joven','Joven','繝帙・繝ｳ','tequila','繧ｪ繝ｭ','繝悶Λ繝ｳ繧ｳ縺ｨ繝ｬ繝昴し繝会ｼ医∪縺溘・繧｢繝阪・・峨→豺ｷ縺懊◆繧ゅ・縲・,'・槭ヶ繝ｩ繝ｳ繧ｳ縺ｫ繝ｬ繝昴し繝峨°繧｢繝阪・繧呈ｷｷ蜷茨ｽ・,NULL,NULL),('others','Others','縺昴・莉・,'others','aaa','aaa','・樔ｸ願ｨ倅ｻ･螟悶・迚ｹ谿翫↑繧ゅ・・・,NULL,NULL),('cocktail','Cocktail','繧ｫ繧ｯ繝・Ν','cocktail','豺ｻ蜉迚ｩ縺・%莉･荳・,'邉冶惧縺ｪ縺ｩ縺ｮ豺ｻ蜉迚ｩ縺・%莉･荳雁性縺ｾ繧後ｋ繧ゅ・縺ｯ縲√き繧ｯ繝・Ν繧・Μ繧ｭ繝･繝ｼ繝ｫ縺ｪ縺ｩ縺ｮ蜻ｼ遘ｰ縺ｫ縺ｪ繧九・,'・樊ｷｻ蜉迚ｩ縺ゅｊ縺ｮ繝ｪ繧ｭ繝･繝ｼ繝ｫ・・,NULL,NULL),('mezcal','Mezcal','繝｡繧ｹ繧ｫ繝ｫ','mezcal','繝｡繧ｭ繧ｷ繧ｳ螟也肇','繝｡繧ｭ繧ｷ繧ｳ縺ｮ謖・ｮ壹＆繧後◆蝨ｰ蛹ｺ莉･螟悶・繧ゅ・縺ｯ繧｢繧ｬ繝吶せ繝斐Μ繝・ヤ繧・Γ繧ｹ繧ｫ繝ｫ縺ｨ縺・≧蜻ｼ遘ｰ縺ｫ縺ｪ繧九・,'・樒肇蝨ｰ縺ｮ驕輔＞遲峨↓繧医ｊ繝・く繝ｼ繝ｩ縺ｨ蜻ｼ縺ｹ縺ｪ縺・ｂ縺ｮ・・,NULL,NULL);
/*!40000 ALTER TABLE `agings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES ('tequila','Tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','valles','jalisco',NULL,NULL),('elarenal','El Arenal','繧ｨ繝ｫ繧｢繝ｬ繝翫Ν蝨ｰ蛹ｺ','valles','jalisco',NULL,NULL),('amatitan','Amatitan','繧｢繝槭ユ繧｣繧ｿ繝ｳ蝨ｰ蛹ｺ','valles','jalisco',NULL,NULL),('lasjuntas','Lasjuntas','繝ｩ繧ｹ繝ｻ繝輔Φ繧ｿ繧ｹ蝨ｰ蛹ｺ','valles','jalisco',NULL,NULL),('arandas','Arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','altos','jalisco',NULL,NULL),('atotonirco','Atotonirco','繧｢繝医ヨ繝九Ν繧ｳ蝨ｰ蛹ｺ','altos','jalisco',NULL,NULL),('jesusmaria','Jesusmaria','繝倥せ繧ｹ繝槭Μ繧｢蝨ｰ蛹ｺ','altos','jalisco',NULL,NULL),('ayotlan','Ayotlan','繧｢繝ｨ繝医Λ繝ｳ蝨ｰ蛹ｺ','altos','jalisco',NULL,NULL),('zapopan','Zapopan','繧ｵ繝昴ヱ繝ｳ蝨ｰ蛹ｺ','centro','jalisco',NULL,NULL),('juanakatlan','Juanakatlan','繝輔ぃ繝翫き繝医Λ繝ｳ蝨ｰ蛹ｺ','centro','jalisco',NULL,NULL),('guadalajara','Guadalajara','繧ｰ繧｢繝繝ｩ繝上Λ蝨ｰ蛹ｺ','centro','jalisco',NULL,NULL),('penjamo','Penjamo','繝壹Φ繝上Δ蝨ｰ蛹ｺ','others','guanajuato',NULL,NULL);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES ('sauza','SAUZA','繧ｵ繧ｦ繧ｶ',NULL,NULL),('josecuervo','Jose Cuervo','繝帙そ繝ｻ繧ｯ繧ｨ繝ｫ繝・,NULL,NULL),('olmeca','OLMECA','繧ｪ繝ｫ繝｡繧ｫ',NULL,NULL),('mariachi','MARIACHI','繝槭Μ繧｢繝・,NULL,NULL),('alacran','ALACRAN','繧｢繝ｩ繧ｯ繝ｩ繝ｳ',NULL,NULL),('ahatoro','AHA TORO','繧｢繝上ヨ繝ｭ',NULL,NULL),('eltesoro','El Tesoro','繧ｨ繝ｫ繝・た繝ｭ',NULL,NULL),('agavales','Agavales','繧｢繧ｬ繝舌Ξ繧ｹ',NULL,NULL),('ole','Ole','繧ｪ繝ｼ繝ｬ',NULL,NULL),('orendain','Orendain','繧ｪ繝ｬ繝ｳ繝繧､繝ｳ',NULL,NULL),('camino','Camino','繧ｫ繝溘ヮ',NULL,NULL),('elcharro','EL CHARRO','繧ｨ繝ｫ繝√Ε繝・Ο',NULL,NULL),('herradura','HERRADURA','繧ｨ繝ｩ繝峨ぇ繝ｼ繝ｩ',NULL,NULL),('corralejo','CORRALEJO','繧ｳ繝ｩ繝ｬ繝・,NULL,NULL),('cazadores','CAZADORES','繧ｫ繧ｵ繝峨Ξ繧ｹ',NULL,NULL),('porfidio','PORFIDIO','繝昴Ν繝輔ぅ繝・ぅ繧ｪ',NULL,NULL),('casadeluna','CASA DE LUNA','繧ｫ繧ｵ繝・Ν繝・,NULL,NULL),('tresreyes','TRES REYES','繝医Ξ繧ｹ繝ｬ繧､繧ｹ',NULL,NULL),('eljimador','El Jimador','繧ｨ繝ｫ繧ｸ繝槭ラ繝ｼ繝ｫ',NULL,NULL),('donjurio','DonJurio','繝峨Φ繝輔Μ繧ｪ',NULL,NULL),('casanoble','Casa Noble','繧ｫ繧ｵ繝弱ヶ繝ｬ',NULL,NULL),('kah','KAH','繧ｫ繝ｼ',NULL,NULL),('patron','PATRON','繝代ヨ繝ｭ繝ｳ',NULL,NULL),('latilica','La Tilica','繝ｩ繝・ぅ繝ｪ繧ｫ',NULL,NULL),('muchaliga','MUCHA LIGA','繝繝√Ε繝ｪ繧ｬ',NULL,NULL),('rancholajoya','RANCHO LA JOYA','繝ｩ繝ｳ繝√Ι繝ｩ繝帙Ζ',NULL,NULL),('cascoviejo','Casco Viejo','繧ｫ繧ｹ繧ｳ繝ｴ繧｣繧ｨ繝・,NULL,NULL),('eldestilador','EL DESTILADOR','繧ｨ繝ｫ繝・せ繝・ぅ繝ｩ繝繝ｼ',NULL,NULL),('tresalegrescompadres','Tres Alegres Compadres','繝医Ξ繧ｹ繧｢繝ｬ繧ｰ繝ｬ繧ｹ繝ｻ繧ｳ繝ｳ繝代ラ繝ｬ繧ｹ',NULL,NULL),('hijosdevilla','Hijos de Villa','繧､繝帙せ繝・Χ繧｣繧ｸ繝｣',NULL,NULL),('grancentenario','GRAN CENTENARIO','繧ｰ繝ｩ繝ｳ繧ｻ繝ｳ繝・リ繝ｪ繧ｪ',NULL,NULL),('chilecariente','Chile Cariente','繝√Μ繧ｫ繝ｪ繧ｨ繝ｳ繝・,NULL,NULL),('tresmagueyes','Tres Magueyes','繝医Ξ繧ｹ繝槭ご繧､繧ｨ繧ｹ',NULL,NULL),('casinoazul','Casino AZUL','繧ｫ繧ｸ繝弱い繧ｺ繝ｼ繝ｫ',NULL,NULL),('elpadrino','EL PADRINO','繧ｨ繝ｫ繝代ラ繝ｪ繝ｼ繝・,NULL,NULL),('lacofradia','LA COFRADIA','繝ｩ繝ｻ繧ｳ繝輔Λ繝・ぅ繧｢',NULL,NULL),('donacelia','DONA CELIA','繝峨・繝九Ε繝ｻ繧ｻ繝ｪ繧｢',NULL,NULL),('donfernando','Don Fernando','繝峨Φ繝輔ぉ繝ｫ繝翫Φ繝・,NULL,NULL),('rehiletepapalote','Rehilete PAPALOTE','繝ｬ繝偵Ξ繝・・繝代ヱ繝ｭ繝・,NULL,NULL),('hussongs','Hussong\'s','繝上ャ繧ｵ繝ｳ繧ｺ',NULL,NULL),('tesoroazul','TESORO AZUL','繝・た繝ｭ繧｢繧ｺ繝ｼ繝ｫ',NULL,NULL),('santo','Santo','繧ｵ繝ｳ繝・,NULL,NULL),('loscorrales','Los Corrales','繝ｭ繧ｹ繧ｳ繝ｩ繝ｬ繧ｹ',NULL,NULL),('tressombreros','Tres Sombreros','繝医Ξ繧ｹ繧ｽ繝ｳ繝悶Ξ繝ｭ繧ｹ',NULL,NULL),('lokita','Lokita','繝ｭ繧ｭ繝ｼ繧ｿ',NULL,NULL),('milagro','Milagro','繝溘Λ繧ｰ繝ｭ',NULL,NULL),('chamucos','CHAMUCOS','繝√Ε繝繧ｳ繧ｹ',NULL,NULL),('mexicat','MEXICAT','繝｡繧ｭ繧ｷ繧ｭ繝｣繝・ヨ',NULL,NULL),('mitierra','Mi Tierra','繝溘ユ繧｣繧ｨ繝ｩ',NULL,NULL),('donfulano','Don Fulano','繝峨Φ繝輔Λ繝・,NULL,NULL),('lachica','La Chica','繝ｩ繝√き',NULL,NULL),('afamado','AFAMADO','繧｢繝輔ぃ繝槭ラ',NULL,NULL),('karma','KARMA','繧ｫ繝ｼ繝・,NULL,NULL),('tresmujeres','Tres Mujeres','繝医Ξ繧ｹ繝繝倥Ξ繧ｹ',NULL,NULL),('kirkland','KIRKLAND','繧ｫ繝ｼ繧ｯ繝ｩ繝ｳ繝・,NULL,NULL),('thunderstruck','THUNDER STRUCK','繧ｵ繝ｳ繝繝ｼ繧ｹ繝医Λ繝・け',NULL,NULL),('shizuku','Shizuku','髮ｫ',NULL,NULL);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destiladors`
--

DROP TABLE IF EXISTS `destiladors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destiladors` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destiladors`
--

LOCK TABLES `destiladors` WRITE;
/*!40000 ALTER TABLE `destiladors` DISABLE KEYS */;
INSERT INTO `destiladors` VALUES ('sauza','Sauza','繧ｵ繧ｦ繧ｶ闥ｸ逡呎園','1102','tequila','sauza',NULL,NULL),('cuervo','Cuervo','繧ｯ繧ｨ繝ｫ繝懆頂逡呎園','1122','tequila','josecuervo',NULL,NULL),('pernodricard','Pernod Ricard','繝壹Ν繝弱・繝ｪ繧ｫ繝ｼ繝ｫ闥ｸ逡呎園','1111','arandas','mariachi',NULL,NULL),('finosdeagave','Finos de Agave','繝輔ぅ繝弱せ繝ｻ繝・・繧｢繧ｬ繝呵頂逡呎園','1416','tequila','alacran',NULL,NULL),('grupotequilero','Grupo Tequilero de Los Altos','繧ｰ繝ｫ繝昴・繝・く繝ｬ繝ｭ繝ｻ繝・・繝ｭ繧ｹ繧｢繝ｫ繝医せ闥ｸ逡呎園','1548','arandas','ahatoro',NULL,NULL),('laaltena','La Altena','繝ｩ繝ｻ繧｢繝ｫ繝・ｼ阪ル繝｣闥ｸ逡呎園','1139','arandas','eltesoro',NULL,NULL),('delvalledetequila','del Valle de Tequila','繝・Ν繝ｻ繝舌ず繧ｧ繝ｻ繝・・繝・く繝ｼ繝ｩ闥ｸ逡呎園','1438','tequila','donacelia',NULL,NULL),('gonzales','Gonzales Gonzales','繧ｴ繝ｳ繧ｶ繝ｬ繧ｹ繝ｻ繧ｴ繝ｳ繧ｶ繝ｬ繧ｹ闥ｸ逡呎園','1143','zapopan','ole',NULL,NULL),('orendain','Orendain','繧ｪ繝ｬ繝ｳ繝繧､繝ｳ闥ｸ逡呎園','1110','tequila','orendain',NULL,NULL),('caminoreal','Camino Real','繧ｫ繝溘ヮ繝ｻ繝ｬ繧｢繝ｫ闥ｸ逡呎園','1487','arandas','camino',NULL,NULL),('companiatequilera','Compania Tequilera de Arandas','繧ｫ繝ｳ繝代ル繝｣繝ｻ繝・く繝ｬ繝ｩ繝ｻ繝・・繧｢繝ｩ繝ｳ繝繧ｹ闥ｸ逡呎園','1460','arandas','elcharro',NULL,NULL),('casaherradura','Casa Herradura','繧ｫ繝ｼ繧ｵ繝ｻ繧ｨ繝ｩ繝峨ぇ繝ｼ繝ｩ闥ｸ逡呎園','1119','amatitan','herradura',NULL,NULL),('corralejo','Corralejo','繧ｳ繝ｩ繝ｬ繝幄頂逡呎園','1368','penjamo','corralejo',NULL,NULL),('cazadores','Cazadores','繧ｫ繧ｵ繝峨Ξ繧ｹ闥ｸ逡呎園','1487','arandas','cazadores',NULL,NULL),('inmobiliariamast','Inmobiliaria Mast','繧､繝ｳ繝｢繝薙Μ繧｢繝ｪ繧｢繝ｻ繝槭せ繝郁頂逡呎園','1462','lasjuntas','porfidio',NULL,NULL),('juanakatlan','Juanakatlan','繝輔ぃ繝翫き繝医Λ繝ｳ闥ｸ逡呎園','1551','juanakatlan','casadeluna',NULL,NULL),('donjurio','Donjurio','繝峨Φ繝輔Μ繧ｪ闥ｸ逡呎園','1449','atotonirco','donjurio',NULL,NULL),('lacofradia','La Cofradia','繝ｩ繝ｻ繧ｳ繝輔Λ繝・ぅ繧｢闥ｸ逡呎園','1137','tequila','casanoble',NULL,NULL),('tequilasfinos','Tequilas Finos','繝・く繝ｼ繝ｩ繧ｹ繝ｻ繝輔ぅ繝弱せ闥ｸ逡呎園','1472','tequila','kah',NULL,NULL),('patron','Patron','繝代ヨ繝ｭ繝ｳ闥ｸ逡呎園','1492','atotonirco','patron',NULL,NULL),('losaltoslajoya','Los Altos la Joya','繝ｭ繧ｹ繝ｻ繧｢繝ｫ繝医せ繝ｻ繝ｩ繝ｻ繝帙Ζ闥ｸ逡呎園','1555','ayotlan','rancholajoya',NULL,NULL),('casacamarena','Casa Camarena','繧ｫ繝ｼ繧ｵ繝ｻ繧ｫ繝槭Ξ繝願頂逡呎園','1456','arandas','cascoviejo',NULL,NULL),('newtonehijos','Newton e Hijos','繝九Η繝ｼ繝医Φ繝ｻ繧ｨ繝ｻ繧､繝帙せ闥ｸ逡呎園','1173','zapopan','eldestilador',NULL,NULL),('licoresveracruz','Licores Veracruz','繝ｪ繧ｳ繝ｼ繝ｬ繧ｹ繝ｻ繝ｴ繧ｧ繝ｩ繧ｯ繝ｫ繧ｹ闥ｸ逡呎園','1433','atotonirco','hijosdevilla',NULL,NULL),('haciendaloscamichines','Hacienda Los Camichines','繧ｨ繧ｯ繧ｻ繝上す繧ｨ繝ｳ繝繝ｻ繝ｭ繧ｹ繝ｻ繧ｫ繝溘メ繝阪せ闥ｸ逡呎園','1122','tequila','grancentenario',NULL,NULL),('tresmujeres','Tres Mujeres','繝医Ξ繧ｹ繝ｻ繝繝倥Ξ繧ｹ闥ｸ逡呎園','1466','amatitan','tresmujeres',NULL,NULL),('barrancadeamatitan','Barranca de Amatitan','繝舌Λ繝ｳ繧ｫ繝ｻ繝・・繧｢繝槭ユ繧｣繧ｿ繝ｳ闥ｸ逡呎園','1473','amatitan','donfernando',NULL,NULL),('rayross','Ray Ross','繝ｬ繧､繝ｭ繧ｹ闥ｸ逡呎園','1489','tequila','hussongs',NULL,NULL),('tequileralamagdalena','Tequilera la Magdalena','繝・く繝ｬ繝ｩ繝ｻ繝ｩ繝ｻ繝槭げ繝繝ｬ繝願頂逡呎園','1463','zapopan','tressombreros',NULL,NULL),('tequileramilagro','Tequilera Milagro','繝・く繝ｬ繝ｩ繝ｻ繝溘Λ繧ｰ繝ｭ闥ｸ逡呎園','1559','jesusmaria','milagro',NULL,NULL),('casadepiedra','Casa De Piedra','繧ｫ繝ｼ繧ｵ繝ｻ繝・・繝斐お繝峨Λ闥ｸ逡呎園','1586','elarenal','chamucos',NULL,NULL),('tequilena','Tequilena','繝・く繝ｬ繝ｼ繝九Ε闥ｸ逡呎園','1146','tequila','donfulano',NULL,NULL),('tequilasdelsenor','Tequilas del Senor','繝・く繝ｼ繝ｩ繧ｹ繝ｻ繝・Ν繝ｻ繧ｻ繝九Ι繝ｼ繝ｫ闥ｸ逡呎園','1124','guadalajara','lachica',NULL,NULL),('tequilaelviejito','Tequila el Viejitor','繧ｨ繝ｫ繝ｻ繝薙お繝偵・繝郁頂逡呎園','1107','atotonirco','karma',NULL,NULL),('tequileralasjuntas','Tequilera Las Juntas','繝・く繝ｬ繝ｩ繝ｻ繝ｩ繧ｹ繝輔Φ繧ｿ繧ｹ闥ｸ逡呎園','1500','amatitan','shizuku',NULL,NULL);
/*!40000 ALTER TABLE `destiladors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locals`
--

DROP TABLE IF EXISTS `locals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locals` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locals`
--

LOCK TABLES `locals` WRITE;
/*!40000 ALTER TABLE `locals` DISABLE KEYS */;
INSERT INTO `locals` VALUES ('valles','Valles','繝舌ず繧ｧ繧ｹ蝨ｰ譁ｹ','jalisco','譁ｰ讓ｽ繧堤畑縺・ｾ帛袖繝ｻ闍ｦ蜻ｳ縺檎音蠕ｴ',NULL,NULL),('altos','Los Altos','繝ｭ繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','jalisco','荳ｭ蜿､讓ｽ繧堤畑縺・葎蜻ｳ繝ｻ逕伜袖縺檎音蠕ｴ',NULL,NULL),('centro','Centro','繧ｽ繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','jalisco','荳願ｨ倅ｺ後▽縺ｮ蝨ｰ譁ｹ縺ｮ荳ｭ髢薙↓菴咲ｽｮ縺吶ｋ',NULL,NULL),('others','Others','縺昴・莉・,'others','繝上Μ繧ｹ繧ｳ蟾樔ｻ･螟・,NULL,NULL);
/*!40000 ALTER TABLE `locals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2020_02_21_160047_create_syouhin_table',1),(2,'2021_04_11_074328_create_brands_table',1),(3,'2021_04_11_140900_create_states_table',1),(4,'2021_04_11_142430_create_locals_table',1),(5,'2021_04_11_145034_create_areas_table',1),(6,'2021_04_11_152042_create_agings_table',1),(7,'2021_04_12_124745_create_destiladors_table',1),(8,'2021_04_16_143413_create_mixes_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixes`
--

DROP TABLE IF EXISTS `mixes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mixes` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixes`
--

LOCK TABLES `mixes` WRITE;
/*!40000 ALTER TABLE `mixes` DISABLE KEYS */;
INSERT INTO `mixes` VALUES ('mixed','Mixed','繝溘け繧ｹ繝・,NULL,NULL),('agave100','100% de Agave','繧｢繧ｬ繝・00%',NULL,NULL),('liquor','Liquor','繝ｪ繧ｭ繝･繝ｼ繝ｫ',NULL,NULL);
/*!40000 ALTER TABLE `mixes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('jalisco','Jalisco','繝上Μ繧ｹ繧ｳ蟾・,'tequila',NULL,NULL),('guanajuato','Guanajuato','繧ｰ繧｡繝翫ヵ繧｡繝亥ｷ・,'tequila',NULL,NULL),('nayarit','Nayarit','繝翫Ζ繝ｪ蟾・,'tequila',NULL,NULL),('michoacan','Michoacan','繝溘メ繝ｧ繧｢繧ｫ繝ｳ蟾・,'tequila',NULL,NULL),('tamaulipas','Tamaulipas','繧ｿ繝槭え繝ｪ繝代せ蟾・,'tequila',NULL,NULL),('zacatecas','Zacatecas','繧ｵ繧ｫ繝・き繧ｹ蟾・,'mezcal',NULL,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syouhin`
--

DROP TABLE IF EXISTS `syouhin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syouhin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '繝悶Λ繝ｳ繝迂D',
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '繝悶Λ繝ｳ繝牙錐',
  `aging_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '辭滓・蠎ｦ蜷医＞ID',
  `aging_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '辭滓・蜷咲ｧｰ',
  `aging_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '辭滓・蠎ｦ蜷医＞蛻・｡・,
  `syouhin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '蝠・刀ID',
  `syouhin_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '蝠・刀縺ｮURL',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '逕ｻ蜒上ヵ繧｡繧､繝ｫ蜷・,
  `alc_degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '繧｢繝ｫ繧ｳ繝ｼ繝ｫ蠎ｦ謨ｰ',
  `mix_degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '繧｢繧ｬ繝呎ｷｷ蜷亥ｺｦ',
  `min_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '蜿り・ｾ｡譬ｼ',
  `dest_nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '闥ｸ逡呎園逡ｪ蜿ｷ',
  `dest_name_kana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '闥ｸ逡呎園蜷・,
  `local_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '逕溽肇蝨ｰ譁ｹID',
  `local_name_kana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '逕溽肇蝨ｰ譁ｹ蜷・,
  `area_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '逕溽肇蝨ｰ蛹ｺID',
  `area_name_kana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '逕溽肇蝨ｰ蛹ｺ蜷・,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '諠・ｱ',
  `review_flavor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '繝ｬ繝薙Η繝ｼ・夐ｦ吶ｊ',
  `review_top` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '繝ｬ繝薙Η繝ｼ・壼袖',
  `review_after` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '繝ｬ繝薙Η繝ｼ・壻ｽ咎渊',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syouhin`
--

LOCK TABLES `syouhin` WRITE;
/*!40000 ALTER TABLE `syouhin` DISABLE KEYS */;
INSERT INTO `syouhin` VALUES (1,'sauza','SAUZA','silver','Silver','blanco','sauza_silver','https://www.musashiya-net.co.jp/products/detail.php?product_id=753','sauza_silver.jpg','40%','Mixed','1600','1102','繧ｵ繧ｦ繧ｶ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','','','辷ｽ繧・°縺ｪ鬥吶ｊ縺ｨ繧ｭ繝ｬ縺ｮ縺ゅｋ邇矩％繝・う繧ｹ繝・,NULL,NULL),(2,'sauza','SAUZA','gold','Gold','gold','sauza_gold','https://www.musashiya-net.co.jp/products/detail.php?product_id=754','sauza_gold.jpg','40%','Mixed','1600','1102','繧ｵ繧ｦ繧ｶ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','','','辷ｽ蠢ｫ縺ｪ繧ｭ繝ｬ縺ｮ濶ｯ縺輔ｒ谿九＠縺､縺､貊代ｉ縺九↑鬚ｨ蜻ｳ',NULL,NULL),(3,'sauza','SAUZA','blue_silver','Blue Silver','blanco','sauza_blue_silver','https://www.musashiya-net.co.jp/products/detail.php?product_id=9796','sauza_blue_silver.jpg','40%','100% de Agave','2000','1102','繧ｵ繧ｦ繧ｶ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','','','髮大袖縺悟ｰ代↑縺・或蠢ｫ縺ｪ鬥吶ｊ縺悟ｺ・′繧・,NULL,NULL),(4,'sauza','SAUZA','three_generations','Tres Generaciones Plata','blanco','sauza_three_generations','https://sake.biccamera.com/bs/item/3285766/','sauza_three_generations.jpg','40%','100% de Agave','4500','1102','繧ｵ繧ｦ繧ｶ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','','','辷ｽ繧・°縺ｪ縺後ｉ闃ｯ縺ｮ縺ゅｋ繧｢繧ｬ繝呎─',NULL,NULL),(5,'josecuervo','Jose Cuervo','silver','Especial Silver','blanco','josecuervo_silver','https://www.musashiya-net.co.jp/products/detail.php?product_id=3084','josecuervo_silver.jpg','40%','Mixed','1800','1122','繧ｯ繧ｨ繝ｫ繝懆頂逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','逕倥＆蠑輔″遶九▽荳雁刀貍ゅ≧鬥吶ｊ','','',NULL,NULL),(6,'josecuervo','Jose Cuervo','reposado','Especial Reposado','reposado','josecuervo_reposado','https://www.musashiya-net.co.jp/products/detail.php?product_id=738','josecuervo_reposado.jpg','40%','Mixed','1800','1122','繧ｯ繧ｨ繝ｫ繝懆頂逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','','讓ｽ辭滓・縺ｫ繧医ｋ闃ｯ縺ｮ縺ゅｋ豺ｱ縺ｿ縺ｨ貊代ｉ縺九＆','',NULL,NULL),(7,'josecuervo','Jose Cuervo','traditional_silver','Traditional Silver','blanco','josecuervo_traditional_silver','https://www.musashiya-net.co.jp/products/detail.php?product_id=10315','josecuervo_traditional_silver.jpg','40%','100% de Agave','2700','1122','繧ｯ繧ｨ繝ｫ繝懆頂逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','繧｢繧ｬ繝吶・髮大袖縺悟ｰ代↑縺・曝蜻ｳ縺ｨ荳雁刀縺ｪ闃ｳ鬥・,'','',NULL,NULL),(8,'josecuervo','Jose Cuervo','1800_silver','1800 Silver','blanco','josecuervo_1800_silver','https://www.musashiya-net.co.jp/products/detail.php?product_id=739','josecuervo_1800_silver.jpg','40%','100% de Agave','2800','1122','繧ｯ繧ｨ繝ｫ繝懆頂逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','','','譟泌柱縺ｧ逕倥＞辷ｽ蠢ｫ諢溘→繧ｹ繝代う繧ｷ繝ｼ縺ｪ繧ｭ繝ｬ縺ｮ陞榊粋',NULL,NULL),(9,'josecuervo','Jose Cuervo','1800_reposado','1800 Reposado','reposado','josecuervo_1800_reposado','http://www.premium-tequila.jp/products/detail.php?product_id=64','josecuervo_1800_reposado.jpg','40%','100% de Agave','3000','1122','繧ｯ繧ｨ繝ｫ繝懆頂逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','逕倥＞縺吶▲縺阪ｊ縺ｨ縺励◆鬥吶ｊ','騾上″騾壹▲縺溽或繧・°縺ｪ逕伜袖','貊代ｉ縺九↑鬟ｲ縺ｿ蠢・慍',NULL,NULL),(10,'josecuervo','Jose Cuervo','margarita','Margarita','cocktail','josecuervo_margarita','https://www.musashiya-net.co.jp/products/detail.php?product_id=12865','josecuervo_margarita.jpg','18%','Liquor','1300','1122','繧ｯ繧ｨ繝ｫ繝懆頂逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','繝ｬ繝昴し繝峨→繝ｩ繧､繝縺ｮ繧ｫ繧ｯ繝・Ν縲√・繝ｫ繧ｬ繝ｪ繝ｼ繧ｿ','縺輔▲縺ｱ繧翫→縺励◆驟ｸ蜻ｳ縺悟ｾ後↓鬥吶ｋ縺ｾ繧阪ｄ縺九＆','逕倥∩縺悟ｼｷ縺上∬怩陷懊・繧医≧縺ｪ縺ｨ繧阪∩','',NULL,NULL),(11,'olmeca','OLMECA','blanco','Blanco','blanco','olmeca_blanco','https://www.musashiya-net.co.jp/products/detail.php?product_id=747','olmeca_blanco.jpg','40%','Mixed','2000','1111','繝壹Ν繝弱・繝ｪ繧ｫ繝ｼ繝ｫ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','','荳雁刀縺ｧ逕倥＆謗ｧ縺医ａ縺ｧ繝峨Λ繧､縺ｪ繝・う繧ｹ繝・,'',NULL,NULL),(12,'olmeca','OLMECA','reposado','Reposado','reposado','olmeca_reposado','https://www.musashiya-net.co.jp/products/detail.php?product_id=748','olmeca_reposado.jpg','40%','Mixed','2000','1111','繝壹Ν繝弱・繝ｪ繧ｫ繝ｼ繝ｫ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','','繧ｹ繝代う繧ｹ鬥吶ｋ繧ｷ繝ｧ繝・ヨ蜷代″縺ｪ螟ｧ莠ｺ繝・う繧ｹ繝・,'',NULL,NULL),(13,'olmeca','OLMECA','altos_reposado','ALTOS Reposado','reposado','olmeca_altos_reposado','https://www.amazon.co.jp/%E3%82%AA%E3%83%AB%E3%83%A1%E3%82%AB-%E3%82%A2%E3%83%AB%E3%83%88%E3%82%B9%E3%83%BB%E3%83%AC%E3%83%9D%E3%82%B5%E3%83%89-700ml-%E3%83%86%E3%82%AD%E3%83%BC%E3%83%A9-%E3%83%A1%E3%82%AD%E3%82%B7%E3%82%B3/dp/B007K9DINK','olmeca_altos_reposado.jpg','38%','100% de Agave','3600','1111','繝壹Ν繝弱・繝ｪ繧ｫ繝ｼ繝ｫ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','繧ｭ繝ｬ縺ｮ縺ゅｋ繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢・,'逕倥∩縺ｮ蟆代↑縺・ｷ縺ｾ縺｣縺溘ラ繝ｩ繧､縺ｪ繧｢繧ｬ繝・,'闍ｦ縺ｿ谿九ｋ豼・字諢・,NULL,NULL),(14,'mariachi','MARIACHI','silver','Silver','blanco','mariachi_silver','https://www.musashiya-net.co.jp/products/detail.php?product_id=745','mariachi_silver.jpg','40%','Mixed','2000','1111','繝壹Ν繝弱・繝ｪ繧ｫ繝ｼ繝ｫ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','1800','','荳雁刀縺ｧ縺ｾ繧阪ｄ縺九↑蜿｣蠖薙◆繧・,'',NULL,NULL),(15,'mariachi','MARIACHI','gold','Gold','gold','mariachi_gold','https://www.musashiya-net.co.jp/products/detail.php?product_id=746','mariachi_gold.jpg','40%','Mixed','2000','1111','繝壹Ν繝弱・繝ｪ繧ｫ繝ｼ繝ｫ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','','繧ｹ繝代う繧ｷ繝ｼ縺ｪ鬥吶ｊ縺ｨ縺ｾ繧阪ｄ縺九↑逕倥＆','',NULL,NULL),(16,'alacran','ALACRAN','blanco','Blanco','blanco','alacran_blanco','http://www.premium-tequila.jp/products/detail.php?product_id=14','alacran_blanco.jpg','40%','100% de Agave','4500','1416','繝輔ぅ繝弱せ繝ｻ繝・・繧｢繧ｬ繝呵頂逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','繧ｵ繧､繝繝ｼ縺ｮ繧医≧縺ｪ辷ｽ繧・°縺ｪ鬥吶ｊ','逕倥＞蜿｣蠖薙◆繧・,'',NULL,NULL),(17,'alacran','ALACRAN','crystal_anejo','Crystal Anejo','others','alacran_crystal_anejo','https://wazawaza.jp/products/detail.php?product_id=601','alacran_crystal_anejo.jpg','35%','100% de Agave','5500','1416','繝輔ぅ繝弱せ繝ｻ繝・・繧｢繧ｬ繝呵頂逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','辭滓・縺励◆繧｢繝阪・繧堤峡閾ｪ縺ｫ豼ｾ驕弱ｒ譁ｽ縺励・乗・縺ｫ','繧ｯ繝ｪ繝ｼ繝繧ｽ繝ｼ繝鬚ｨ縺ｮ辷ｽ繧・°縺ｪ鬥吶ｊ','繝舌ル繝ｩ縺ｨ陷り惧繧呈昴ｏ縺吶∪繧阪ｄ縺九＆','貊代ｉ縺九↑闊瑚ｧｦ繧翫→驟ｸ蜻ｳ縺ｮ縺ゅｋ蠕悟袖',NULL,NULL),(18,'ahatoro','AHA TORO','blanco','Blanco','blanco','ahatoro_blanco','http://www.premium-tequila.jp/products/detail.php?product_id=15','ahatoro_blanco.jpg','40%','100% de Agave','3900','1548','繧ｰ繝ｫ繝昴・繝・く繝ｬ繝ｭ繝ｻ繝・・繝ｭ繧ｹ繧｢繝ｫ繝医せ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','逕倥￥蜆ｪ縺励＞鬥吶ｊ','','繧ｭ繝ｬ縺ｮ縺ゅｋ闍ｦ縺ｿ',NULL,NULL),(19,'ahatoro','AHA TORO','anejo','Anejo','anejo','ahatoro_anejo','http://www.premium-tequila.jp/products/detail.php?product_id=17','ahatoro_anejo.jpg','40%','100% de Agave','5000','1548','繧ｰ繝ｫ繝昴・繝・く繝ｬ繝ｭ繝ｻ繝・・繝ｭ繧ｹ繧｢繝ｫ繝医せ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','','辭滓・縺励▽縺､繧ゅ≠縺｣縺輔ｊ縺ｨ縺励◆鬟ｲ縺ｿ蜿｣','',NULL,NULL),(20,'eltesoro','El Tesoro','anejo','Paradiso Anejo','extraanejo','eltesoro_anejo','http://www.premium-tequila.jp/products/detail.php?product_id=173','eltesoro_anejo.jpg','40%','100% de Agave','9000','1139','繝ｩ繝ｻ繧｢繝ｫ繝・ｼ阪ル繝｣闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','繧ｳ繝九Ε繝・け讓ｽ縺ｧ60繝ｶ譛育・謌・,'5蟷ｴ辭滓・縺ｮ蟆代＠驟ｸ蜻ｳ縺ゅｋ鬥吶ｊ','謗ｧ縺医ａ縺ｪ逕倥＆','',NULL,NULL),(21,'agavales','Agavales','blanco','Blanco','blanco','agavales_blanco','http://www.premium-tequila.jp/products/detail.php?product_id=76','agavales_blanco.jpg','40%','100% de Agave','1800','1438','繝・Ν繝ｻ繝舌ず繧ｧ繝ｻ繝・・繝・く繝ｼ繝ｩ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','','逕伜袖縺悟ｰ代↑縺剰ｾ帙∩縺ｮ諢溘§繧九く繝ｬ','',NULL,NULL),(22,'ole','Ole','silver','Silver','blanco','ole_silver','https://www.miraido-onlineshop.com/item/7-ole-tequila-40/','ole_silver.jpg','40%','Mixed','2200','1143','繧ｴ繝ｳ繧ｶ繝ｬ繧ｹ繝ｻ繧ｴ繝ｳ繧ｶ繝ｬ繧ｹ闥ｸ逡呎園','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','zapopan','繧ｵ繝昴ヱ繝ｳ蝨ｰ蛹ｺ','','貍ゅ≧繧ｹ繝代う繧ｷ繝ｼ縺ｪ鬥吶ｊ','繧ｭ繝ｬ繧ゅ≠繧矩｣ｲ縺ｿ繧・☆縺・,'',NULL,NULL),(23,'orendain','Orendain','blanco','Blanco','blanco','orendain_blanco','https://www.musashiya-net.co.jp/products/detail.php?product_id=750','orendain_blanco.jpg','40%','Mixed','2200','1110','繧ｪ繝ｬ繝ｳ繝繧､繝ｳ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','逋ｺ驟ｵ諢溘・豺ｱ縺ｿ縺ｮ縺ゅｋ辷ｽ繧・°縺ｪ闃ｳ鬥・,'逕倥￥縺ｪ繧√ｉ縺九↑闊瑚ｧｦ繧・,'繧ｽ繝ｼ繝縺ｮ繧医≧縺ｪ辷ｽ蠢ｫ諢・,NULL,NULL),(24,'orendain','Orendain','ollitas_reposado','OLLITAS Reposado','reposado','orendain_ollitas_reposado','https://www.amazon.co.jp/%E6%96%B0%E3%83%9C%E3%83%88%E3%83%AB-%E3%82%AA%E3%83%AC%E3%83%B3%E3%83%80%E3%82%A4%E3%83%B3-%E3%82%AA%E3%83%AA%E3%83%BC%E3%82%BF%E3%82%B9-%E3%83%AC%E3%83%9D%E3%82%B5%E3%83%89-750ml/dp/B07JZFTYFG','orendain_ollitas_reposado.jpg','35%','Mixed','3000','1110','繧ｪ繝ｬ繝ｳ繝繧､繝ｳ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','縺ｻ縺ｮ縺九↑逕倥∩縺ｮ荳雁刀縺ｪ蜆ｪ縺励＞鬥吶ｊ','縺輔ｉ縺｣縺ｨ縺励◆豌ｴ縺ｮ繧医≧縺ｪ闊瑚ｧｦ繧・,'辷ｽ蠢ｫ諢溘・蠕後↓霆ｽ縺・協縺ｿ縺ｨ逕倥∩',NULL,NULL),(25,'camino','Camino','blanco','Blanco','blanco','camino_blanco','https://www.musashiya-net.co.jp/products/detail.php?product_id=743','camino_blanco.jpg','35%','Mixed','1500','1487','繧ｫ繝溘ヮ繝ｻ繝ｬ繧｢繝ｫ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','繝輔Ξ繝・す繝･縺ｪ繧｢繧ｬ繝吶・蜆ｪ縺励＞鬥吶ｊ','貊代ｉ縺九↑蜿｣蠖薙◆繧翫・鬟ｲ縺ｿ繧・☆縺・,'',NULL,NULL),(26,'camino','Camino','gold','Gold','gold','camino_gold','https://www.musashiya-net.co.jp/products/detail.php?product_id=744','camino_gold.jpg','40%','Mixed','1500','1487','繧ｫ繝溘ヮ繝ｻ繝ｬ繧｢繝ｫ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','貊代ｉ縺九↑逋ｺ驟ｵ縺ｮ鬥吶ｊ','雎翫°縺ｪ逕倥＆','',NULL,NULL),(27,'elcharro','EL CHARRO','silver','Silver','blanco','elcharro_silver','http://www.premium-tequila.jp/products/detail.php?product_id=234','elcharro_silver.jpg','38%','Mixed','1700','1460','繧ｫ繝ｳ繝代ル繝｣繝ｻ繝・く繝ｬ繝ｩ繝ｻ繝・・繧｢繝ｩ繝ｳ繝繧ｹ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','繧ｹ繝・く繝ｪ縺ｨ鮠ｻ縺ｫ謚懊￠繧矩ｦ吶ｊ','貊代ｉ縺九↑蜿｣蠖薙◆繧・,'',NULL,NULL),(28,'elcharro','EL CHARRO','anejo','Anejo','anejo','elcharro_anejo','https://www.amazon.co.jp/%E3%82%A8%E3%83%AB%E3%83%81%E3%83%A3%E3%83%83%E3%83%AD-%E3%82%A8%E3%83%AB%E3%83%BB%E3%83%81%E3%83%A3%E3%83%83%E3%83%AD-%E3%83%86%E3%82%AD%E3%83%BC%E3%83%A9-%E3%82%A2%E3%83%8D%E3%83%9B-750ml/dp/B005Q8HSSS','elcharro_anejo.jpg','40%','100% de Agave','3500','1460','繧ｫ繝ｳ繝代ル繝｣繝ｻ繝・く繝ｬ繝ｩ繝ｻ繝・・繧｢繝ｩ繝ｳ繝繧ｹ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','讓ｽ縺ｮ辭滓・縺ｮ蜉ｹ縺・◆逕倥＞鬥吶ｊ  ','縺ゅ▲縺輔ｊ縺ｨ縺励◆逕倥∩','蟆代＠闍ｦ蜻ｳ縺ｮ縺ゅｋ繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢・,NULL,NULL),(29,'herradura','HERRADURA','plata','Plata','blanco','herradura_plata','http://www.premium-tequila.jp/products/detail.php?product_id=89','herradura_plata.jpg','40%','100% de Agave','2700','1119','繧ｫ繝ｼ繧ｵ繝ｻ繧ｨ繝ｩ繝峨ぇ繝ｼ繝ｩ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','amatitan','繧｢繝槭ユ繧｣繧ｿ繝ｳ蝨ｰ蛹ｺ','','讓ｽ縺ｮ逋ｺ驟ｵ鬥吶→縺ｻ縺ｮ縺九↑繧ｹ繝代う繧ｷ繝ｼ縺・,'遞九ｈ縺・曝縺・,'',NULL,NULL),(30,'corralejo','CORRALEJO','anejo','Anejo','anejo','corralejo_anejo','https://www.premium-tequila.jp/products/detail.php?product_id=116','corralejo_anejo.jpg','38%','100% de Agave','5500','1368','繧ｳ繝ｩ繝ｬ繝幄頂逡呎園','others','繧ｰ繧｡繝翫ヵ繧｡繝亥ｷ・,'penjamo','繝壹Φ繝上Δ蝨ｰ蛹ｺ','繝・ロ繧ｷ繝ｼ繧ｦ繧｣繧ｹ繧ｭ繝ｼ讓ｽ縺ｧ1蟷ｴ辭滓・','辭滓・縺励◆繧ｷ繝翫Δ繝ｳ縺ｮ繧医≧縺ｪ豺ｱ縺・ｦ吶ｊ','繝舌ル繝ｩ蠑輔″遶九▽逕倥∩','',NULL,NULL),(31,'cazadores','CAZADORES','blanco','Blanco','blanco','cazadores_blanco','http://www.premium-tequila.jp/products/detail.php?product_id=61','cazadores_blanco.jpg','40%','100% de Agave','3000','1487','繧ｫ繧ｵ繝峨Ξ繧ｹ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','荳雁刀縺ｧ繧・ｄ繧ｹ繝代う繧ｷ繝ｼ縺ｪ繝上・繝夜ｦ・,'貊代ｉ縺九↑闊瑚ｧｦ繧・,'',NULL,NULL),(32,'cazadores','CAZADORES','anejo','Anejo','anejo','cazadores_anejo','http://www.premium-tequila.jp/products/detail.php?product_id=63','cazadores_anejo.jpg','40%','100% de Agave','4200','1487','繧ｫ繧ｵ繝峨Ξ繧ｹ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','繧｢繝｡繝ｪ繧ｫ繝ｳ繧ｪ繝ｼ繧ｯ縺ｮ譁ｰ讓ｽ縺ｧ18繝ｶ譛育・謌・,'阮ｫ繧九い繧ｬ繝吶・辷ｽ繧・°縺・,'繝舌ル繝ｩ縺ｮ繧医≧縺ｪ辭滓・縺励◆繧ｳ繧ｯ','',NULL,NULL),(33,'porfidio','PORFIDIO','silver','Silver','blanco','porfidio_silver','http://www.premium-tequila.jp/products/detail.php?product_id=96','porfidio_silver.jpg','39.5%','100% de Agave','7200','1462','繧､繝ｳ繝｢繝薙Μ繧｢繝ｪ繧｢繝ｻ繝槭せ繝郁頂逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','lasjuntas','繝ｩ繧ｹ繝ｻ繝輔Φ繧ｿ繧ｹ蝨ｰ蛹ｺ','蜴ｳ蟇・↓縺ｯ繝・く繝ｼ繝ｩ縺ｧ縺ｯ縺ｪ縺・,'隍・尅縺ｪ縺後ｉ縺吶▲縺阪ｊ縺ｨ縺励◆闃ｳ驢・↑鬥吶ｊ','荳ｸ縺ｿ縺ｮ縺ゅｋ辷ｽ繧・°縺ｪ鬟ｲ縺ｿ蜿｣','',NULL,NULL),(34,'casadeluna','CASA DE LUNA','blanco','Blanco','blanco','casadeluna_blanco','http://www.premium-tequila.jp/products/detail.php?product_id=4','casadeluna_blanco.jpg','40%','100% de Agave','3500','1551','繝輔ぃ繝翫き繝医Λ繝ｳ闥ｸ逡呎園','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','juanakatlan','繝輔ぃ繝翫き繝医Λ繝ｳ蝨ｰ蛹ｺ','','蜆ｪ縺励￥鮠ｻ騾壹ｋ鬥吶ｊ','貊代ｉ縺九↑闊瑚ｧｦ繧・,'蟆代＠縺ｮ繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢・,NULL,NULL),(35,'tresreyes','TRES REYES','silver','Silver','blanco','tresreyes_silver','https://www.miraido-onlineshop.com/item/7-tres-reyes-s/','tresreyes_silver.jpg','38%','Mixed','1400','1460','繧ｫ繝ｳ繝代ル繝｣繝ｻ繝・く繝ｬ繝ｩ繝ｻ繝・・繧｢繝ｩ繝ｳ繝繧ｹ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','','繝薙ち繝ｼ縺ｪ蜿｣蠖薙◆繧・,'逕倥∩縺ｮ縺ゅｋ蠕悟袖',NULL,NULL),(36,'eljimador','El Jimador','blanco','Blanco','blanco','eljimador_blanco','http://www.premium-tequila.jp/products/detail.php?product_id=101','eljimador_blanco.jpg','40%','100% de Agave','2000','1119','繧ｫ繝ｼ繧ｵ繝ｻ繧ｨ繝ｩ繝峨ぇ繝ｼ繝ｩ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','amatitan','繧｢繝槭ユ繧｣繧ｿ繝ｳ蝨ｰ蛹ｺ','','繧ｵ繧､繝繝ｼ縺ｮ繧医≧縺ｪ辷ｽ繧・°縺ｪ鬥吶ｊ','縺ｻ繧薙・繧翫せ繝代う繧ｷ繝ｼ','',NULL,NULL),(37,'donjurio','DonJurio','blanco','Blanco','blanco','donjurio_blanco','https://www.musashiya-net.co.jp/products/detail.php?product_id=14797','donjurio_blanco.jpg','38%','100% de Agave','3800','1449','繝峨Φ繝輔Μ繧ｪ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','atotonirco','繧｢繝医ヨ繝九Ν繧ｳ蝨ｰ蛹ｺ','','貔・∩貂｡縺｣縺溘∪繧阪ｄ縺九↑鬥吶ｊ','驕ｩ蠎ｦ縺ｪ逕伜袖','',NULL,NULL),(38,'donjurio','DonJurio','anejo','Anejo','anejo','donjurio_anejo','http://www.premium-tequila.jp/products/detail.php?product_id=68','donjurio_anejo.jpg','40%','100% de Agave','5000','1449','繝峨Φ繝輔Μ繧ｪ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','atotonirco','繧｢繝医ヨ繝九Ν繧ｳ蝨ｰ蛹ｺ','繧｢繝｡繝ｪ繧ｫ繝ｳ繧ｪ繝ｼ繧ｯ讓ｽ縺ｧ18繝ｶ譛育・謌・,'繧ｳ繝ｼ繝偵・縲√ヰ繝九Λ縺ｮ繧医≧縺ｪ縺ｾ繧阪ｄ縺九↑繧ｳ繧ｯ縺ｮ辭滓・','陷り惧縺ｫ驕ｩ蠎ｦ縺ｪ驟ｸ蜻ｳ繧呈─縺倥ｋ逕倥∩','',NULL,NULL),(39,'casanoble','Casa Noble','blanco','Crystal Blanco','blanco','casanoble_blanco','http://www.premium-tequila.jp/products/detail.php?product_id=72','casanoble_blanco.jpg','40%','100% de Agave','5500','1137','繝ｩ繝ｻ繧ｳ繝輔Λ繝・ぅ繧｢闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','辷ｽ繧・°縺ｪ繧｢繧ｬ繝吶・逕伜袖鬥・,'貊代ｉ縺九↑蜿｣蠖薙◆繧・,'縺ｻ繧薙・繧翫す繝医Λ繧ｹ縺ｮ逋ｺ驟ｵ諢・,NULL,NULL),(40,'casanoble','Casa Noble','reposado','Reposado','reposado','casanoble_reposado','http://www.premium-tequila.jp/products/detail.php?product_id=73','casanoble_reposado.jpg','40%','100% de Agave','6500','1137','繝ｩ繝ｻ繧ｳ繝輔Λ繝・ぅ繧｢闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','繝輔Ξ繝ｳ繝√が繝ｼ繧ｯ讓ｽ364譌･辭滓・','蠕後°繧蛾ｦ吶ｋ繧｢繧ｬ繝呎─','繧ｫ繧ｫ繧ｪ鬥吶ｋ逕倥∩','繧ｷ繝医Λ繧ｹ縺ｪ蠕悟袖',NULL,NULL),(41,'casanoble','Casa Noble','anejo','Anejo','anejo','casanoble_anejo','http://www.premium-tequila.jp/products/detail.php?product_id=74','casanoble_anejo.jpg','40%','100% de Agave','8000','1137','繝ｩ繝ｻ繧ｳ繝輔Λ繝・ぅ繧｢闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','繝輔Ξ繝ｳ繝√が繝ｼ繧ｯ縺ｮ譁ｰ讓ｽ縺ｧ24繝ｶ譛育・謌・,'闃ｳ驢・〒豼・字縺ｪ繧ｫ繧ｫ繧ｪ鬥・,'繝√Ι繧ｳ縺ｮ繧医≧縺ｪ逕伜袖','',NULL,NULL),(42,'kah','KAH','anejo','Anejo','anejo','kah_anejo','http://www.premium-tequila.jp/products/detail.php?product_id=171','kah_anejo.jpg','40%','100% de Agave','8000','1472','繝・く繝ｼ繝ｩ繧ｹ繝ｻ繝輔ぅ繝弱せ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','繧｢繝｡繝ｪ繧ｫ繝ｳ繧ｪ繝ｼ繧ｯ讓ｽ縺ｧ2蟷ｴ縺ｮ辭滓・','郢顔ｴｰ縺ｧ繧・＆縺励＞鬥吶ｊ','繧ｷ繝医Λ繧ｹ縺ｧ縺ｻ縺ｮ縺九↑逕倥∩','',NULL,NULL),(43,'patron','PATRON','silver','Silver','blanco','patron_silver','http://www.premium-tequila.jp/products/detail.php?product_id=58','patron_silver.jpg','40%','100% de Agave','4000','1492','繝代ヨ繝ｭ繝ｳ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','atotonirco','繧｢繝医ヨ繝九Ν繧ｳ蝨ｰ蛹ｺ','','譫懷ｮ溘・隍・尅縺ｪ繧ｷ繝医Λ繧ｹ縺ｨ繧｢繧ｬ繝呎─縺倥ｋ鬥吶ｊ','縺ｻ縺ｮ縺九↑繧ｹ繝代う繧ｹ諢溘→繧ｹ繝繝ｼ繧ｹ縺ｪ蜿｣蠖薙◆繧・,'陷り惧縺ｮ繧医≧縺ｪ逕倥∩蠕悟袖',NULL,NULL),(44,'patron','PATRON','reposado','Reposado','reposado','patron_reposado','http://www.premium-tequila.jp/products/detail.php?product_id=59','patron_reposado.jpg','40%','100% de Agave','5000','1492','繝代ヨ繝ｭ繝ｳ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','atotonirco','繧｢繝医ヨ繝九Ν繧ｳ蝨ｰ蛹ｺ','繧｢繝｡繝ｪ繧ｫ繝ｳ繧ｪ繝ｼ繧ｯ讓ｽ縺ｧ6繝ｶ譛育・謌舌ヶ繝ｬ繝ｳ繝・,'繧ｷ繝医Λ繧ｹ縺ｧ辷ｽ繧・°縺ｪ鬥・,'繧ｹ繝代う繧ｹ豺ｷ縺悶ｋ隍・尅縺ｪ繧ｭ繝ｬ縺ｮ縺ゅｋ蜻ｳ','陷り惧縺ｮ繧医≧縺ｪ逕倥＞讓ｽ縺ｮ谿九ｊ鬥・,NULL,NULL),(45,'patron','PATRON','anejo','Anejo','anejo','patron_anejo','http://www.premium-tequila.jp/products/detail.php?product_id=60','patron_anejo.jpg','40%','100% de Agave','7000','1492','繝代ヨ繝ｭ繝ｳ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','atotonirco','繧｢繝医ヨ繝九Ν繧ｳ蝨ｰ蛹ｺ','繧｢繝｡繝ｪ繧ｫ繝ｳ/繝輔Ξ繝ｳ繝√が繝ｼ繧ｯ讓ｽ縺ｧ12繝ｶ譛育・謌舌ヶ繝ｬ繝ｳ繝・,'繧ｷ繝医Λ繧ｹ縺ｧ縺ｾ繧阪ｄ縺九↑鬥・,'隍・尅縺ｪ繧ｹ繝代う繧ｹ縺ｨ荳ｸ縺ｿ繧貞ｸｯ縺ｳ縺溷袖','繝舌ル繝ｩ縺ｮ繧医≧縺ｪ豺ｱ縺ｿ縺ｮ縺ゅｋ逕倥∩縺ｨ讓ｽ鬥・,NULL,NULL),(46,'latilica','La Tilica','blanco','Blanco','blanco','latilica_blanco','https://www.musashiya-net.co.jp/products/detail.php?product_id=9500','latilica_blanco.jpg','40%','100% de Agave','5500','1551','繝輔ぃ繝翫き繝医Λ繝ｳ闥ｸ逡呎園','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','juanakatlan','繝輔ぃ繝翫き繝医Λ繝ｳ蝨ｰ蛹ｺ','','','闃ｯ縺ｮ縺ゅｋ繧ｳ繧ｯ縺ｨ闍ｦ縺ｿ縺ｨ遑ｬ雉ｪ縺ｪ闊瑚ｧｦ繧・,'',NULL,NULL),(47,'muchaliga','MUCHA LIGA','blanco','Blanco(繝悶Λ繝ｼ繝ｴ繧ｩ)','blanco','muchaliga_blanco','http://www.premium-tequila.jp/products/detail.php?product_id=200','muchaliga_blanco.jpg','40%','100% de Agave','4800','1551','繝輔ぃ繝翫き繝医Λ繝ｳ闥ｸ逡呎園','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','juanakatlan','繝輔ぃ繝翫き繝医Λ繝ｳ蝨ｰ蛹ｺ','','縺励▲縺九ｊ縺ｨ縺励◆繧｢繧ｬ繝吶・鬥吶ｊ','繝槭う繝ｫ繝峨〒繧ｹ繝繝ｼ繧ｹ縺ｪ蜿｣蠖薙◆繧・,'繧ｷ繝ｳ繝励Ν縺ｫ縺ｻ縺ｮ縺九↑逕倥∩',NULL,NULL),(48,'muchaliga','MUCHA LIGA','reposado','Reposado(繧ｫ繝九ヰ繝ｫ)','reposado','muchaliga_reposado','http://www.premium-tequila.jp/products/detail.php?product_id=201','muchaliga_reposado.jpg','40%','100% de Agave','5000','1551','繝輔ぃ繝翫き繝医Λ繝ｳ闥ｸ逡呎園','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','juanakatlan','繝輔ぃ繝翫き繝医Λ繝ｳ蝨ｰ蛹ｺ','繝舌・繝懊Φ讓ｽ縺ｧ3繝ｶ譛育・謌・,'逕倥＞繧ｫ繧ｫ繧ｪ讓ｽ鬥・,'縺吶▲縺阪ｊ縺ｪ驟ｸ蜻ｳ','縺ｻ縺ｮ縺九↓繧ｹ繝代う繧ｷ繝ｼ縺ｪ蠕悟袖',NULL,NULL),(49,'muchaliga','MUCHA LIGA','anejo','Anejo(繧､繝ｳ繝ｴ繧｣繧ｯ繝・','anejo','muchaliga_anejo','http://www.premium-tequila.jp/products/detail.php?product_id=202','muchaliga_anejo.jpg','40%','100% de Agave','7000','1551','繝輔ぃ繝翫き繝医Λ繝ｳ闥ｸ逡呎園','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','juanakatlan','繝輔ぃ繝翫き繝医Λ繝ｳ蝨ｰ蛹ｺ','繝舌・繝懊Φ讓ｽ16繝ｶ譛育・謌・,'繧ｫ繧ｫ繧ｪ貍ゅ≧讓ｽ縺ｮ鬥吶ｊ','繝峨Λ繧､縺ｧ繧ｹ繝代う繧ｹ諢溘・蠑ｷ縺・哨蠖薙◆繧・,'縺ｻ縺ｮ縺九↑驟ｸ蜻ｳ',NULL,NULL),(50,'rancholajoya','RANCHO LA JOYA','blanco','Blanco','blanco','rancholajoya_blanco','https://www.musashiya-net.co.jp/products/detail.php?product_id=7233','rancholajoya_blanco.jpg','38%','100% de Agave','3200','1555','繝ｭ繧ｹ繝ｻ繧｢繝ｫ繝医せ繝ｻ繝ｩ繝ｻ繝帙Ζ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','ayotlan','繧｢繝ｨ繝医Λ繝ｳ蝨ｰ蛹ｺ','','逕倥￥豺ｱ縺・ｦ吶ｊ','繧ｭ繝ｬ縺ｮ縺ゅｋ遑ｬ雉ｪ縺ｪ闊瑚ｧｦ繧・,'',NULL,NULL),(51,'cascoviejo','Casco Viejo','blanco','Blanco','blanco','cascoviejo_blanco','http://www.premium-tequila.jp/products/detail.php?product_id=203','cascoviejo_blanco.jpg','38%','100% de Agave','2000','1456','繧ｫ繝ｼ繧ｵ繝ｻ繧ｫ繝槭Ξ繝願頂逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','','繧ｭ繝ｬ縺ｮ縺ゅｋ遑ｬ雉ｪ縺ｪ闊瑚ｧｦ繧・,'逕倥￥莨ｸ縺ｳ繧句ｾ悟袖',NULL,NULL),(52,'eldestilador','EL DESTILADOR','blanco','Blanco','blanco','eldestilador_blanco','https://www.tequilamatchmaker.com/tequilas/2428-el-destilador-blanco','eldestilador_blanco.jpg','40%','100% de Agave','3000','1173','繝九Η繝ｼ繝医Φ繝ｻ繧ｨ繝ｻ繧､繝帙せ闥ｸ逡呎園','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','zapopan','繧ｵ繝昴ヱ繝ｳ蝨ｰ蛹ｺ','繝ｪ繝溘ユ繧｣繝・ラ繧ｨ繝・ぅ繧ｷ繝ｧ繝ｳ','辷ｽ繧・°縺ｫ鮠ｻ縺ｫ謚懊￠繧矩ｦ吶ｊ','霎帙＞蜿｣蠖薙◆繧・,'',NULL,NULL),(53,'tresalegrescompadres','Tres Alegres Compadres','blanco','Blanco','blanco','tresalegrescompadres_blanco','https://www.musashiya-net.co.jp/products/detail.php?product_id=6448','tresalegrescompadres_blanco.jpg','38%','Mixed','2800','1137','繝ｩ繝ｻ繧ｳ繝輔Λ繝・ぅ繧｢闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','辭滓・縺輔ｌ縺溘ｈ縺・↑鬥吶ｊ','逋悶・蟆代↑縺・｣ｲ縺ｿ繧・☆縺・,'',NULL,NULL),(54,'hijosdevilla','Hijos de Villa','blanco','Blanco','blanco','hijosdevilla_blanco','https://www.musashiya-net.co.jp/products/detail.php?product_id=7475','hijosdevilla_blanco.jpg','40%','Mixed','2800','1433','繝ｪ繧ｳ繝ｼ繝ｬ繧ｹ繝ｻ繝ｴ繧ｧ繝ｩ繧ｯ繝ｫ繧ｹ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','atotonirco','繧｢繝医ヨ繝九Ν繧ｳ蝨ｰ蛹ｺ','繝舌Ξ繝・ヨ繝懊ヨ繝ｫ繧ｿ繧､繝・,'蠑ｷ縺・い繧ｬ繝吶・闕峨・鬥吶ｊ','逕倥￥隗偵・縺ｪ縺・・隗ｦ繧・,'',NULL,NULL),(55,'grancentenario','GRAN CENTENARIO','anejo','Anejo','anejo','grancentenario_anejo','https://www.musashiya-net.co.jp/products/detail.php?product_id=3150','grancentenario_anejo.jpg','40%','100% de Agave','4500','1122','繧ｨ繧ｯ繧ｻ繝上す繧ｨ繝ｳ繝繝ｻ繝ｭ繧ｹ繝ｻ繧ｫ繝溘メ繝阪せ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','繧ｯ繧ｨ繝ｫ繝懆頂逡呎園縺ｮ蛯倅ｸ・,'闖ｯ繧・°縺ｫ蜿｣縺ｮ荳ｭ縺ｫ蠎・′繧九ヰ繝九Λ縺ｮ阮ｫ鬥・,'縺ｾ繧阪ｄ縺九↑逕伜袖','',NULL,NULL),(56,'chilecariente','Chile Cariente','blanco','Blanco','blanco','chilecariente_blanco','http://www.premium-tequila.jp/products/list.php?category_id=232','chilecariente_blanco.jpg','40%','100% de Agave','4200','1548','繧ｰ繝ｫ繝昴・繝・く繝ｬ繝ｭ繝ｻ繝・・繝ｭ繧ｹ繧｢繝ｫ繝医せ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','繧｢繧ｬ繝呵拷諢滓ｮ九ｋ闃ｳ鬥・,'逕伜袖縺ｮ謚代∴縺溘せ繝代う繧ｷ繝ｼ縺ｪ蜿｣蠖薙◆繧・,'縺ｾ繧阪ｄ縺九↑逕伜袖',NULL,NULL),(57,'tresmagueyes','Tres Magueyes','blanco','Blanco','blanco','tresmagueyes_blanco','https://www.musashiya-net.co.jp/products/detail.php?product_id=3815','tresmagueyes_blanco.jpg','38%','Mixed','1400','1449','繝峨Φ繝輔Μ繧ｪ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','atotonirco','繧｢繝医ヨ繝九Ν繧ｳ蝨ｰ蛹ｺ','','繧｢繧ｬ繝吶・辷ｽ繧・°縺ｪ鬥吶ｊ','繧ｹ繝・く繝ｪ縺ｨ縺励◆闍ｦ縺ｿ','谿九ｋ繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢・,NULL,NULL),(58,'casinoazul','Casino AZUL','silver','Silver','blanco','casinoazul_silver','https://www.musashiya-net.co.jp/products/detail.php?product_id=10109','casinoazul_silver.jpg','40%','100% de Agave','6200','1466','繝医Ξ繧ｹ繝ｻ繝繝倥Ξ繧ｹ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','amatitan','繧｢繝槭ユ繧｣繧ｿ繝ｳ蝨ｰ蛹ｺ','繧ｵ繝懊ユ繝ｳ繧定ｱ｡縺｣縺溘ぎ繝ｩ繧ｹ邏ｰ蟾･縺檎音蠕ｴ逧・↑繝懊ヨ繝ｫ','闃ｳ驢・↑繧｢繧ｬ繝吶・鬥吶ｊ','縺ｻ縺ｮ縺九↑繧ｹ繝代う繧ｹ縺ｨ逕倥∩','',NULL,NULL),(59,'elpadrino','EL PADRINO','blanco','Blanco','blanco','elpadrino_blanco','https://www.musashiya-net.co.jp/products/detail.php?product_id=7565','elpadrino_blanco.jpg','40%','100% de Agave','2500','1438','繝・Ν繝ｻ繝舌ず繧ｧ繝ｻ繝・・繝・く繝ｼ繝ｩ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','amatitan','繧｢繝槭ユ繧｣繧ｿ繝ｳ蝨ｰ蛹ｺ','','譟斐ｉ縺九↓繧｢繧ｬ繝吶′阮ｫ繧・,'縺輔ｉ繧翫→縺励◆蜿｣蠖薙◆繧翫〒鬟ｲ縺ｿ繧・☆縺・,'',NULL,NULL),(60,'lacofradia','LA COFRADIA','anejo','Anejo','anejo','lacofradia_anejo','http://www.premium-tequila.jp/products/detail.php?product_id=943','lacofradia_anejo.jpg','40%','100% de Agave','5000','1137','繝ｩ繝ｻ繧ｳ繝輔Λ繝・ぅ繧｢闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','12繝ｶ譛域ｨｽ辭滓・','讓ｽ縺ｮ逋ｺ驟ｵ諢溘ｒ諢溘§繧区沐繧峨°縺ｪ鬥吶ｊ','繧ｫ繝ｩ繝｡繝ｫ縺ｮ繧医≧縺ｪ逕倥∩','繧ｭ繝ｬ縺ｮ縺ゅｋ驟ｸ蜻ｳ ',NULL,NULL),(61,'donacelia','DONA CELIA','reposado','Reposado','reposado','donacelia_reposado','https://www.premium-tequila.jp/products/detail.php?product_id=261','donacelia_reposado.jpg','40%','100% de Agave','6500','1438','繝・Ν繝ｻ繝舌ず繧ｧ繝ｻ繝・・繝・く繝ｼ繝ｩ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','鮠ｻ縺ｫ蠎・′繧玖官縺ｮ縺ゅｋ繧ｫ繧ｫ繧ｪ縺ｮ鬥吶ｊ','逕倥∩縺ｨ蠕ｮ縺九↑驟ｸ蜻ｳ縺ｮ繧ｭ繝ｬ縺ｮ蜈ｱ蟄・,'邱縺ｾ繧翫・縺ゅｋ繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢・,NULL,NULL),(62,'donacelia','DONA CELIA','anejo','Anejo','anejo','donacelia_anejo','http://www.premium-tequila.jp/products/detail.php?product_id=262','donacelia_anejo.jpg','40%','100% de Agave','7000','1438','繝・Ν繝ｻ繝舌ず繧ｧ繝ｻ繝・・繝・く繝ｼ繝ｩ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','1・・蟷ｴ繧｢繝｡繝ｪ繧ｫ繝ｳ繧ｪ繝ｼ繧ｯ讓ｽ辭滓・','繝薙ち繝ｼ繧ｫ繧ｫ繧ｪ縺ｮ繧医≧縺ｪ蠑ｷ縺・ｦ吶ｊ','縺吶▲縺阪ｊ縺ｨ縺励◆驟ｸ蜻ｳ縺ｮ蜿｣蠖薙◆繧・,'縺ｯ縺｣縺阪ｊ縺ｨ縺励◆逕倥∩縺ｮ蠕悟袖',NULL,NULL),(63,'donfernando','Don Fernando','anejo','Anejo','anejo','donfernando_anejo','http://www.premium-tequila.jp/products/detail.php?product_id=176','donfernando_anejo.jpg','38%','100% de Agave','7500','1473','繝舌Λ繝ｳ繧ｫ繝ｻ繝・・繧｢繝槭ユ繧｣繧ｿ繝ｳ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','amatitan','繧｢繝槭ユ繧｣繧ｿ繝ｳ蝨ｰ蛹ｺ','24繝ｶ譛医ヵ繝ｬ繝ｳ繝√が繝ｼ繧ｯ讓ｽ辭滓・','讓ｽ縺ｮ逋ｺ驟ｵ鬥吶→縺ｻ繧薙・繧顔曝縺・ｦ吶ｊ','繧ｫ繧ｫ繧ｪ縺ｮ繧医≧縺ｪ逕倥＞蜿｣蠖薙◆繧・,'驟ｸ蜻ｳ縺後☆繧九▲縺ｨ鬟ｲ縺ｿ繧・☆縺・,NULL,NULL),(64,'rehiletepapalote','Rehilete PAPALOTE','blanco','Blanco','blanco','rehiletepapalote_blanco','https://www.musashiya-net.co.jp/products/detail.php?product_id=10162','rehiletepapalote_blanco.jpg','40%','100% de Agave','2500','1548','繧ｰ繝ｫ繝昴・繝・く繝ｬ繝ｭ繝ｻ繝・・繝ｭ繧ｹ繧｢繝ｫ繝医せ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','arandas','繧｢繝ｩ繝ｳ繝繧ｹ蝨ｰ蛹ｺ','','辷ｽ繧・°縺ｪ縺後ｉ逋ｺ驟ｵ諢溘・縺ゅｋ繧｢繧ｬ繝吶・鬥吶ｊ','縺吶ｋ繧翫→貔・∩貂｡繧区ｻ代ｉ縺九↑闊瑚ｧｦ繧・,'霆ｽ縺・曝縺ｿ縺ｨ蠕ｮ縺九↑驟ｸ蜻ｳ縺ｮ蠕悟袖',NULL,NULL),(65,'hussongs','Hussong\'s','reposado','Reposado','reposado','hussongs_reposado','https://www.premium-tequila.jp/products/detail.php?product_id=237','hussongs_reposado.jpg','40%','100% de Agave','6500','1489','繝ｬ繧､繝ｭ繧ｹ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','縺ｻ繧薙・繧顔或蠢ｫ縺ｪ逋ｺ驟ｵ諢溘′縺ゅｊ縲∫ｹ顔ｴｰ縺ｧ貊代ｉ縺九↑鬥吶ｊ','逕倥∩縺後≠繧翫↑縺後ｉ繧ゅ√せ繝繝ｼ繧ｹ縺ｪ鬟ｲ縺ｿ蜿｣','縺吶・縺｣縺ｨ蜆ｪ縺励＞繧ｯ繧ｻ縺ｮ縺ｪ縺・,NULL,NULL),(66,'tesoroazul','TESORO AZUL','silver','Silver','blanco','tesoroazul_silver','https://buyee.jp/item/yahoo/shopping/chagatapark_3248-645503?lang=ja','tesoroazul_silver.jpg','40%','100% de Agave','1500','1416','繝輔ぅ繝弱せ繝ｻ繝・・繧｢繧ｬ繝呵頂逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','逋ｺ驟ｵ諢溘′蠢・慍繧医￥繧｢繧ｬ繝吶′阮ｫ繧・,'縺輔ｉ繧翫→縺励◆鬟ｲ縺ｿ蜿｣','螟壼ｰ代い繝ｫ繧ｳ繝ｼ繝ｫ諢溘・谿九ｋ蠕悟袖',NULL,NULL),(67,'santo','Santo','mezquila_blanco','Mezquila Blanco','mezcal','santo_mezquila_blanco','https://wazawaza.jp/products/detail.php?product_id=725','santo_mezquila_blanco.jpg','40%','100% de Agave','6200','-','-','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','-','-','繝・く繝ｼ繝ｩ縺ｨ繝｡繧ｹ繧ｫ繝ｫ繧・:5縺ｧ菴懈・縺励◆繝｡繧ｹ繧ｭ繝ｼ繝ｩ','莠檎ｨｮ縺ｮ繧｢繧ｬ繝吶ｒ菴ｿ縺｣縺溘∝ｼｷ縺上ｂ縺ｾ繧阪ｄ縺九↑闕峨・辷ｽ鬥・,'逕伜袖&遑ｬ繧√・闊瑚ｧｦ繧・,'繝・く繝ｼ繝ｩ縺ｮ逋ｺ驟ｵ縺ｨ繝｡繧ｹ繧ｫ繝ｫ縺ｮ辷ｽ蠢ｫ縺輔・陞榊粋縺励◆縺ｾ繧阪ｄ縺九＆',NULL,NULL),(68,'loscorrales','Los Corrales','gold','Gold','gold','loscorrales_gold','https://www.tequilamatchmaker.com/tequilas/3733-los-corrales-reposado','loscorrales_gold.jpg','38%','Mixed','1600','1173','繝九Η繝ｼ繝医Φ繝ｻ繧ｨ繝ｻ繧､繝帙せ闥ｸ逡呎園','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','zapopan','繧ｵ繝昴ヱ繝ｳ蝨ｰ蛹ｺ','','縺吶ｋ繧翫→譟斐ｉ縺九↑繝槭う繝ｫ繝峨↑鬥吶ｊ','蟆代＠縺ｨ繧阪∩縺ｮ縺ゅｋ逕倥＞闊瑚ｧｦ繧・,'繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢溘≠繧翫↑縺後ｉ繧よｻ代ｉ縺・,NULL,NULL),(69,'tressombreros','Tres Sombreros','silver','Silver','blanco','tressombreros_silver','https://www.amazon.co.jp/%E3%83%88%E3%83%AC%E3%82%B9%E3%83%BB%E3%82%BD%E3%83%B3%E3%83%96%E3%83%AC%E3%83%AD%E3%82%B9-12878-%E3%82%B7%E3%83%AB%E3%83%90%E3%83%BC-%E3%83%86%E3%82%AD%E3%83%BC%E3%83%A9-700ml/dp/B00AFBJE24','tressombreros_silver.jpg','38%','Mixed','1600','1463','繝・く繝ｬ繝ｩ繝ｻ繝ｩ繝ｻ繝槭げ繝繝ｬ繝願頂逡呎園','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','zapopan','繧ｵ繝昴ヱ繝ｳ蝨ｰ蛹ｺ','81%繧｢繧ｬ繝吶・繝溘け繧ｹ繝・,'譟斐ｉ縺九↑逕倥∩縺ｮ鮠ｻ騾壹ｊ','闊後↓霆｢縺後ｋ貊代ｉ縺九↑逕倥∩','縺輔▲縺ｱ繧翫→蠕ｮ繧｢繧ｬ繝吶・繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢・,NULL,NULL),(70,'lokita','Lokita','gold','Gold','gold','lokita_gold','https://www.amazon.co.jp/%E3%83%AD%E3%82%AD%E3%83%BC%E3%82%BF-%E3%82%B4%E3%83%BC%E3%83%AB%E3%83%89-700ml-%E3%83%96%E3%83%AB%E3%83%BC%E3%82%A2%E3%82%AC%E3%83%99100%EF%BC%85-%E3%82%B9%E3%83%94%E3%83%AA%E3%83%83%E3%83%84/dp/B07XCHVBVD','lokita_gold.jpg','35%','100% de Agave','1800','1416','繝輔ぅ繝弱せ繝ｻ繝・・繧｢繧ｬ繝呵頂逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','','讓ｽ辭滓・縺ｨ繧｢繧ｬ繝吶・逕倥＞鬥吶ｊ','繧｢繧ｬ繝吶・逕倥＆縺碁圀遶九▽譌ｨ縺ｿ','蠕ｮ縺九↑繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢溘→闍ｦ蜻ｳ',NULL,NULL),(71,'milagro','Milagro','anejo','Anejo','anejo','milagro_anejo','https://www.amazon.co.jp/%E3%83%9F%E3%83%A9%E3%82%B0%E3%83%AD-%E3%82%A2%E3%83%8D%E3%83%9B-40%E5%BA%A6-750ml-%E4%B8%A6%E8%A1%8C%E8%BC%B8%E5%85%A5%E5%93%81/dp/B00UE621QG','milagro_anejo.jpg','40%','100% de Agave','4200','1559','繝・く繝ｬ繝ｩ繝ｻ繝溘Λ繧ｰ繝ｭ闥ｸ逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','jesusmaria','繝倥せ繧ｹ繝槭Μ繧｢蝨ｰ蛹ｺ','','譟斐ｉ縺九↑讓ｽ鬥吶→蠕ｮ驟ｸ蜻ｳ','逕倥＞縺ｪ縺後ｉ繧ら或蠢ｫ縺ｧ鬟ｲ縺ｿ繧・☆縺・,'遞九ｈ縺・く繝ｬ諢・,NULL,NULL),(72,'chamucos','CHAMUCOS','anejo','Anejo','anejo','chamucos_anejo','https://www.premium-tequila.jp/products/detail.php?product_id=220','chamucos_anejo.jpg','40%','100% de Agave','7200','1586','繧ｫ繝ｼ繧ｵ繝ｻ繝・・繝斐お繝峨Λ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','elarenal','繧ｨ繝ｫ繧｢繝ｬ繝翫Ν蝨ｰ蛹ｺ','繧｢繝｡繝ｪ繧ｫ繝ｳ繝ｻ繝輔Ξ繝ｳ繝√が繝ｼ繧ｯ18-22繝ｶ譛育・謌舌ｒ5・・縺ｧ繝悶Ξ繝ｳ繝・,'闃ｯ縺ｮ縺ゅｋ貂九＞讓ｽ縺ｮ逕倥＞鬥吶ｊ','驟ｸ蜻ｳ縺ｮ縺ゅｋ闊瑚ｧｦ繧・,'譟斐ｉ縺九＞繧ｭ繝ｬ諢溘→闊後↓谿九ｋ逕倥∩',NULL,NULL),(73,'mexicat','MEXICAT','blanco','Blanco','blanco','mexicat_blanco','https://www.premium-tequila.jp/products/detail.php?product_id=991','mexicat_blanco.jpg','40%','100% de Agave','4500','1173','繝九Η繝ｼ繝医Φ繝ｻ繧ｨ繝ｻ繧､繝帙せ闥ｸ逡呎園','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','zapopan','繧ｵ繝昴ヱ繝ｳ蝨ｰ蛹ｺ','迴ｾ蝨ｨ縺ｮ逕溽肇縺ｯ繝｡繧ｹ繧ｫ繝ｫ縺縺後√％繧後・繝・く繝ｼ繝ｩ','縺吶▲縺阪ｊ縺ｨ辷ｽ蠢ｫ縺ｪ蠕ｮ繧｢繧ｬ繝吶・鮠ｻ騾壹ｊ','豸ｼ縺励＞逕倥∩縺ｨ蟆代＠縺ｨ繧阪∩縺ｮ縺ゅｋ闊瑚ｧｦ繧・,'縺吶・縺｣縺ｨ蜆ｪ縺励＞霆ｽ繧・°縺・,NULL,NULL),(74,'mexicat','MEXICAT','joven','Joven','mezcal','mexicat_joven','https://www.musashiya-net.co.jp/products/detail.php?product_id=15649','mexicat_joven.jpg','40%','100% de Agave','4500','-','繧ｨ繝ｳ繝励Ξ繧ｵ繝ｻ繧､繝ｳ繝・げ繝ｩ繝峨・繝ｩ繝ｻ繝医Ξ繧ｹ繝ｻ繝斐Η繝悶Ο繧ｹ闥ｸ逡呎園','others','繧ｵ繧ｫ繝・き繧ｹ蟾・,'','','繝｡繧ｹ繧ｫ繝ｫ縺ｮ繝帙・繝ｳ','辷ｽ繧・°縺ｪ縺後ｉ蠑ｷ繧√・繧｢繧ｬ繝呎─','蛻・ｌ縺ｮ縺ゅｋ繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢溘・陬上↓縺ゅｋ逕倥∩','蠢・慍繧医￥闊後↓谿九ｋ闍ｦ蜻ｳ',NULL,NULL),(75,'mitierra','Mi Tierra','reposado','Reposado','reposado','mitierra_reposado','https://www.premium-tequila.jp/products/detail.php?product_id=181','mitierra_reposado.jpg','38%','100% de Agave','6000','1473','繝舌Λ繝ｳ繧ｫ繝ｻ繝・・繧｢繝槭ユ繧｣繧ｿ繝ｳ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','amatitan','繧｢繝槭ユ繧｣繧ｿ繝ｳ蝨ｰ蛹ｺ','繧｢繝｡繝ｪ繧ｫ繝ｳ繝ｻ繝輔Ξ繝ｳ繝√が繝ｼ繧ｯ讓ｽ18繝ｶ譛育・謌・,'豺ｱ縺ｿ縺ｮ縺ゅｋ讓ｽ縺ｮ逕倥＞繧ｫ繧ｫ繧ｪ縺ｮ鬥・,'縺ｨ繧阪∩驕弱℃縺ｪ縺・曝縺・袖繧上＞','繧ｭ繝ｬ縺ｮ縺ゅｋ繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢・,NULL,NULL),(76,'donfulano','Don Fulano','blanco_fuerte','Blanco Fuerte','blanco','donfulano_blanco_fuerte','http://www.premium-tequila.jp/products/detail.php?product_id=39','donfulano_blanco_fuerte.jpg','50%','100% de Agave','7500','1146','繝・く繝ｬ繝ｼ繝九Ε闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','繧ｹ繝・Φ繝ｬ繧ｹ繧ｿ繝ｳ繧ｯ縺ｧ・悶Ω譛育・謌・,'縺吶▲縺阪ｊ縺ｨ闖ｯ繧・°縺ｪ縺ｫ鬥吶ｋ繧｢繧ｬ繝吶・逋ｺ驟ｵ諢・,'譟第ｩ倡ｳｻ縺ｮ蠕ｮ驟ｸ蜻ｳ縺ｨ貊代ｉ縺九↑逕倥∩','遞九ｈ縺・く繝ｬ縺ｮ闍ｦ蜻ｳ縺ｮ蠕悟袖',NULL,NULL),(77,'lachica','La Chica','blanco','Blanco','blanco','lachica_blanco','https://item.rakuten.co.jp/liquorsbest/304026501/','lachica_blanco.jpg','38%','Mixed','1200','1124','繝・く繝ｼ繝ｩ繧ｹ繝ｻ繝・Ν繝ｻ繧ｻ繝九Ι繝ｼ繝ｫ闥ｸ逡呎園','centro','繝上Μ繧ｹ繧ｳ蟾槭た繝翫・繧ｻ繝ｳ繝医Ο蝨ｰ譁ｹ','guadalajara','繧ｰ繧｢繝繝ｩ繝上Λ蝨ｰ蛹ｺ','豌苓ｻｽ縺ｫ鬟ｲ繧√ｋ繝・く繝ｼ繝ｩ縺ｨ縺励※縲√Γ繧ｭ繧ｷ繧ｳ縺ｧ縺ｯ莠ｺ豌・,'迢ｬ迚ｹ縺ｪ逋ｺ驟ｵ諢溘・縺ゅｋ繝槭う繝ｫ繝峨↑鮠ｻ騾壹ｊ','縺ｪ繧√ｉ縺九↑闊瑚ｧｦ繧翫・縺ｻ縺ｮ縺九↑逕倥∩','霆ｽ繧√・繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢・,NULL,NULL),(78,'afamado','AFAMADO','blanco','Blanco','blanco','afamado_blanco','https://www.premium-tequila.jp/products/detail.php?product_id=136','afamado_blanco.jpg','38%','100% de Agave','4000','1466','繝医Ξ繧ｹ繝ｻ繝繝倥Ξ繧ｹ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','amatitan','繧｢繝槭ユ繧｣繧ｿ繝ｳ蝨ｰ蛹ｺ','繧ｹ繝壹う繝ｳ隱槭〒縲御ｺｺ豌苓・・ 縺ｻ縺ｼ辟｡霎ｲ阮ｬ縺ｧ繧｢繧ｬ繝吶ｒ閧ｲ謌・,'縺ｾ繧阪ｄ縺九↑逋ｺ驟ｵ諢溘→繧｢繧ｬ繝呎─','縺吶ｋ縺｣縺ｨ鬟ｲ繧√ｋ繝舌ル繝ｩ逕伜袖','辷ｽ繧・°縺ｪ逕倥∩',NULL,NULL),(79,'karma','KARMA','blanco','Blanco','blanco','karma_blanco','https://www.premium-tequila.jp/products/detail.php?product_id=66','karma_blanco.jpg','40%','100% de Agave','6800','1107','繧ｨ繝ｫ繝ｻ繝薙お繝偵・繝郁頂逡呎園','altos','繝上Μ繧ｹ繧ｳ蟾槭Ο繧ｹ繧｢繝ｫ繝医せ蝨ｰ譁ｹ','atotonirco','繧｢繝医ヨ繝九Ν繧ｳ蝨ｰ蛹ｺ','2蝗槭→3蝗櫁頂逡吶ｒ繝悶Ξ繝ｳ繝・譏斐ヱ繝医Ο繝ｳ繧定｣ｽ騾縺ｮ闥ｸ逡呎園','豌ｴ縺ｮ繧医≧縺ｫ貔・∩貂｡繧狗或蠢ｫ諢・,'縺吶・縺｣縺ｨ縺励▽縺､繧ゅく繝ｬ縺ｮ縺ゅｋ闊瑚ｧｦ繧・,'闍･蟷ｲ縺ｮ逋ｺ驟ｵ諢溘→繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢・,NULL,NULL),(80,'tresmujeres','Tres Mujeres','anejo','Anejo','anejo','tresmujeres_anejo','https://www.premium-tequila.jp/products/detail.php?product_id=148','tresmujeres_anejo.jpg','38%','100% de Agave','5500','1466','繝医Ξ繧ｹ繝ｻ繝繝倥Ξ繧ｹ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','amatitan','繧｢繝槭ユ繧｣繧ｿ繝ｳ蝨ｰ蛹ｺ','繝輔Ξ繝ｳ繝√が繝ｼ繧ｯ讓ｽ縺ｧ3蟷ｴ髢薙・辭滓・','繧｢繝阪・縺ｫ縺励※貔・∩縺阪▲縺溽或蠢ｫ鬥・,'繧ｯ繧ｻ縺ｮ蠑ｷ縺・い繧ｬ繝吶・闕峨→逕倥ａ縺ｮ闊瑚ｧｦ繧・,'蠑ｷ繧√・繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢溘→逕倥＆縺ｮ谿句袖',NULL,NULL),(81,'kirkland','KIRKLAND','anejo','Anejo','anejo','kirkland_anejo','https://ameblo.jp/mexican0601/entry-12458925535.html','kirkland_anejo.jpg','40%','100% de Agave','3000','1472','繝・く繝ｼ繝ｩ繧ｹ繝ｻ繝輔ぅ繝弱せ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','繧ｳ繧ｹ繝医さ縺ｮ繧ｪ繝ｪ繧ｸ繝翫Ν繝悶Λ繝ｳ繝峨・・代Μ繝・ヨ繝ｫ繝懊ヨ繝ｫ','繧ｫ繧ｫ繧ｪ縺ｮ繧医≧縺ｪ逕倥＞讓ｽ鬥・,'逕倬℃縺弱↑縺・＆繧峨▲縺ｨ縺励◆闊瑚ｧｦ繧・,'謗ｧ縺医ａ縺ｪ繧｢繝ｫ繧ｳ繝ｼ繝ｫ諢・,NULL,NULL),(82,'thunderstruck','THUNDER STRUCK','silver','Silver','blanco','thunderstruck_silver','https://diskunion.net/metal/ct/detail/HMHR190612-001','thunderstruck_silver.jpg','40%','100% de Agave','4500','1472','繝・く繝ｼ繝ｩ繧ｹ繝ｻ繝輔ぅ繝弱せ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','tequila','繝・く繝ｼ繝ｩ蝨ｰ蛹ｺ','繝ｭ繝・け繝舌Φ繝陰C/DC縺ｮ莨晁ｪｬ縺ｮ譖ｲ縲後し繝ｳ繝繝ｼ繧ｹ繝医Λ繝・け縲阪ｒ蜀縺励◆蜈ｬ隱阪ユ繧ｭ繝ｼ繝ｩ','辟ｼ縺・◆繧｢繧ｬ繝吶・豼・字縺ｪ逕倥＞鬥吶ｊ','繝帙Ρ繧､繝医・繝・ヱ繝ｼ縺ｮ鬚ｨ蜻ｳ','縺ｪ繧√ｉ縺九〒郢顔ｴｰ縺ｪ繧ｹ繝代う繧ｹ',NULL,NULL),(83,'shizuku','Shizuku','blanco','Blanco','blanco','shizuku_blanco','https://www.amazon.co.jp/%E9%9B%AB-%E3%81%97%E3%81%9A%E3%81%8F-%E3%83%96%E3%83%A9%E3%83%B3%E3%82%B3-750ml/dp/B06XTST153','shizuku_blanco.jpg','38%','100% de Agave','5400','1500','繝・く繝ｬ繝ｩ繝ｻ繝ｩ繧ｹ繝輔Φ繧ｿ繧ｹ闥ｸ逡呎園','valles','繝上Μ繧ｹ繧ｳ蟾槭ヰ繧ｸ繧ｧ繧ｹ蝨ｰ譁ｹ','amatitan','繧｢繝槭ユ繧｣繧ｿ繝ｳ蝨ｰ蛹ｺ','荳也阜蛻昴・譌･譛ｬ莠ｺ繝励Ο繝・Η繝ｼ繧ｹ繝悶Λ繝ｳ繝・,'逕倥￥縺吶▲縺阪ｊ縺ｨ縺励◆辷ｽ繧・°縺ｪ鬥吶ｊ','豌ｴ縺ｮ縺斐→縺上☆繧九▲縺ｨ縺励◆闊瑚ｧｦ繧・,'縺ｨ縺ｦ縺､繧ゅ↑縺・或蠢ｫ諢溘→縺ｻ縺ｮ縺九↑闍ｦ縺ｿ',NULL,NULL);
/*!40000 ALTER TABLE `syouhin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-13  0:55:35
