-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacia
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `azsmalt`
--

DROP TABLE IF EXISTS `azsmalt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `azsmalt` (
  `Piva` varchar(20) NOT NULL,
  `Denom` varchar(15) NOT NULL,
  `Mail` varchar(20) DEFAULT NULL,
  `Citta` varchar(15) DEFAULT NULL,
  `Via` varchar(15) DEFAULT NULL,
  `Nciv` char(4) DEFAULT NULL,
  `Cap` char(7) DEFAULT NULL,
  PRIMARY KEY (`Piva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `azsmalt`
--

LOCK TABLES `azsmalt` WRITE;
/*!40000 ALTER TABLE `azsmalt` DISABLE KEYS */;
INSERT INTO `azsmalt` VALUES ('00145678','Smaltimento srl','info@smaltimento.com','Ancona','Scrima','34','60128'),('00562713',' Eco beta srl','eco.beta@info.com','Riccione','Verga','42','47838');
/*!40000 ALTER TABLE `azsmalt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bustapaga`
--

DROP TABLE IF EXISTS `bustapaga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bustapaga` (
  `Codice` int NOT NULL,
  `Dipendente` varchar(16) NOT NULL,
  `Importo` decimal(7,2) NOT NULL,
  `Mese` varchar(10) NOT NULL,
  `Anno` int NOT NULL,
  PRIMARY KEY (`Codice`),
  CONSTRAINT `bustapaga_chk_1` CHECK (((`Mese` = _cp850'gennaio') or (`Mese` = _cp850'febbraio') or (`Mese` = _cp850'marzo') or (`Mese` = _cp850'aprile') or (`Mese` = _cp850'maggio') or (`Mese` = _cp850'giugno') or (`Mese` = _cp850'luglio') or (`Mese` = _cp850'agosto') or (`Mese` = _cp850'settembre') or (`Mese` = _cp850'ottobre') or (`Mese` = _cp850'Novembre') or (`Mese` = _cp850'dicembre'))),
  CONSTRAINT `bustapaga_chk_2` CHECK ((`Anno` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bustapaga`
--

LOCK TABLES `bustapaga` WRITE;
/*!40000 ALTER TABLE `bustapaga` DISABLE KEYS */;
INSERT INTO `bustapaga` VALUES (1,'RPTMNZ32E89F332F',1492.70,'gennaio',2020),(2,'MSSGHJ23A77R212Z',1660.45,'gennaio',2020),(3,'DFSGHJ23O67R212Z',1520.65,'gennaio',2020),(4,'PLLFNC80A09F205F',1314.65,'gennaio',2020),(5,'RTFGHL89A07D273Z',1560.00,'gennaio',2020),(6,'LSTGHJ33e77R212T',1150.00,'gennaio',2020),(7,'MSSGHJ23A77R212Z',1670.45,'febbraio',2020),(8,'RPTMNZ32E89F332F',1482.70,'febbraio',2020),(9,'DFSGHJ23O67R212Z',1570.65,'febbraio',2020),(10,'PLLFNC80A09F205F',1344.65,'febbraio',2020),(11,'RTFGHL89A07D273Z',1500.00,'febbraio',2020),(12,'LSTGHJ33e77R212T',1100.00,'febbraio',2020),(13,'MSSGHJ23A77R212Z',1672.45,'marzo',2020),(14,'RPTMNZ32E89F332F',1496.70,'marzo',2020),(15,'DFSGHJ23O67R212Z',1579.65,'marzo',2020),(16,'PLLFNC80A09F205F',1346.65,'marzo',2020),(17,'RTFGHL89A07D273Z',1504.00,'marzo',2020),(18,'LSTGHJ33e77R212T',1101.00,'marzo',2020),(19,'RPTMNZ32E89F332F',1493.40,'aprile',2020),(20,'MSSGHJ23A77R212Z',1672.15,'aprile',2020),(21,'DFSGHJ23O67R212Z',1574.55,'aprile',2020),(22,'PLLFNC80A09F205F',1347.45,'aprile',2020),(23,'RTFGHL89A07D273Z',1506.05,'aprile',2020),(24,'LSTGHJ33e77R212T',1101.09,'aprile',2020),(25,'MSSGHJ23A77R212Z',1470.45,'maggio',2020),(26,'RPTMNZ32E89F332F',1592.70,'maggio',2020),(27,'DFSGHJ23O67R212Z',1470.65,'maggio',2020),(28,'PLLFNC80A09F205F',1444.65,'maggio',2020),(29,'RTFGHL89A07D273Z',1200.00,'maggio',2020),(30,'LSTGHJ33e77R212T',1200.00,'maggio',2020),(31,'MSSGHJ23A77R212Z',1621.45,'giugno',2020),(32,'RPTMNZ32E89F332F',1411.70,'giugno',2020),(33,'DFSGHJ23O67R212Z',1512.65,'giugno',2020),(34,'PLLFNC80A09F205F',1310.65,'giugno',2020),(35,'RTFGHL89A07D273Z',1567.00,'giugno',2020),(36,'LSTGHJ33e77R212T',1199.00,'giugno',2020);
/*!40000 ALTER TABLE `bustapaga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `CodFisc` varchar(16) NOT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `Cognome` varchar(30) DEFAULT NULL,
  `DataNasc` date DEFAULT NULL,
  `Citta` varchar(20) DEFAULT NULL,
  `Via` varchar(20) DEFAULT NULL,
  `NCiv` char(4) DEFAULT NULL,
  `Cap` int DEFAULT NULL,
  `Mail` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CodFisc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('CRLRS18V89A674Z','CARLO','ROSSI','1985-06-13','PESARO','Locatelli','12',61121,'c.rossi@outlook.com'),('FRCLNG178V23A64Z','FRANCO','LONGO','1979-10-11','PESARO','Trieste','11',61121,'f.longo@libero.com'),('FRCMNT178V2A624Z','FRANCESCO','MONTANARI','1988-12-14','ANCONA','Scrima','45',60128,'f.montanari@gmail.com'),('GRGVRD178V23A69A','GIORGIO','VERDI','1975-11-13','SENIGALLIA','Podesti','10',60019,'g.neri@hotmail.com'),('GVNNRR148R92A924','GIOVANNI','NERI','1992-05-18','FANO','Primo Maggio','08',61032,'g.neri@gmail.com'),('LCCRSS188N28A23I','LUCA','ROSSI','1989-11-18','FANO','Mazzini','31',661032,'l.rossi@info.com'),('LRNLNG19V23A224I','LORENZO','LONGARINI','1978-09-16','ANCONA','Garibaldi','22',60128,'l.longarini@outlook.com'),('MRCB16T80A574I','MARCO','BIANCHI','1980-03-10','FANO','XX settembre','16',61032,'m.bianchi@info.com'),('MRCVRD158T23A84I','MARCO','VERDI','1991-08-23','FALCONARA M.','Garibaldi','37',60015,'m.verdi@gmail.com'),('MSSPRF198G3A322I','MASSIMO','PORFIRI','1982-06-13','FANO','Colombo','64',61032,'m.porfiri@outlook.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consegna`
--

DROP TABLE IF EXISTS `consegna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consegna` (
  `Fornitore` varchar(20) NOT NULL,
  `TipologiaProd` varchar(20) NOT NULL,
  PRIMARY KEY (`Fornitore`,`TipologiaProd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consegna`
--

LOCK TABLES `consegna` WRITE;
/*!40000 ALTER TABLE `consegna` DISABLE KEYS */;
INSERT INTO `consegna` VALUES ('0019621O96867','Infanzia'),('002422166851','Cosmetico'),('002428916685','Cosmetico'),('002431936956','Farmaco'),('003134936804','Farmaco'),('004734866802','Veterinaria'),('0053621O96881','Alimenti'),('0053621O96881','Erboresteria'),('006421136756','Cosmetico'),('006421136756','Farmaco'),('006421136756','Omeopatia');
/*!40000 ALTER TABLE `consegna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dipendente`
--

DROP TABLE IF EXISTS `dipendente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dipendente` (
  `CodFisc` varchar(16) NOT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `Cognome` varchar(30) DEFAULT NULL,
  `DataNasc` date DEFAULT NULL,
  `Citta` varchar(20) DEFAULT NULL,
  `Via` varchar(20) DEFAULT NULL,
  `NCiv` char(4) DEFAULT NULL,
  `Cap` int DEFAULT NULL,
  `Mail` varchar(30) DEFAULT NULL,
  `Mansione` varchar(15) DEFAULT NULL,
  `ImpOrario` decimal(4,2) DEFAULT NULL,
  `LicVend` tinyint(1) NOT NULL,
  PRIMARY KEY (`CodFisc`),
  CONSTRAINT `dipendente_chk_1` CHECK ((`ImpOrario` > 0)),
  CONSTRAINT `dipendente_chk_2` CHECK (((`Mansione` = _cp850'Farmacista') or (`Mansione` = _cp850'Magazziniere'))),
  CONSTRAINT `dipendente_chk_3` CHECK ((((`Mansione` = _cp850'Farmacista') and (`LicVend` = 1)) or ((`Mansione` = _cp850'Magazziniere') and (`LicVend` = 0))))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dipendente`
--

LOCK TABLES `dipendente` WRITE;
/*!40000 ALTER TABLE `dipendente` DISABLE KEYS */;
INSERT INTO `dipendente` VALUES ('DFSGHJ23O67R212Z','GIOVANNI','DIPAOLO','1993-03-21','FALCONARA M.','Gradara','32',60015,'g.dipaolo@info.com','Magazziniere',7.00,0),('LSTGHJ33e77R212T','LUCA','GHERMANO','1995-09-21','ANCONA','Palombare','31',60128,'l.ghermano@info.com','Magazziniere',6.50,0),('MSSGHJ23A77R212Z','MARIO','MESSINA','1987-02-23','ANCONA','Mazzini','4',60128,'m.messina@info.com','Farmacista',10.00,1),('PLLFNC80A09F205F','FRANCO','PALLONARO','1975-04-30','ANCONA','Macerata','16',60128,'f.pallonaro@info.com','Farmacista',12.00,1),('RPTMNZ32E89F332F','RICCARDO','TONELLI','1983-06-08','ANCONA','Garibaldi','3',60128,'r.tonelli@info.com','Farmacista',10.00,1),('RTFGHL89A07D273Z','ROBERTO','MONZANO','1985-01-30','FALCONARA M.','Canonico','44',60015,'r.monzano@info.com','Farmacista',10.00,1);
/*!40000 ALTER TABLE `dipendente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dittafarm`
--

DROP TABLE IF EXISTS `dittafarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dittafarm` (
  `NomeDitta` varchar(20) NOT NULL,
  `NomeProd` varchar(20) NOT NULL,
  `PrezList` int NOT NULL,
  `PrezAcq` int NOT NULL,
  PRIMARY KEY (`NomeDitta`,`NomeProd`),
  CONSTRAINT `dittafarm_chk_1` CHECK ((`PrezAcq` > 0)),
  CONSTRAINT `dittafarm_chk_2` CHECK ((`PrezList` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dittafarm`
--

LOCK TABLES `dittafarm` WRITE;
/*!40000 ALTER TABLE `dittafarm` DISABLE KEYS */;
INSERT INTO `dittafarm` VALUES ('Dre S.p.A.','DRE GOCCE',8,4),('Efferdent S.p.A.','EFFERDENT',18,10),('Erbamea S.p.A.','VITAMINE&MINERALIE',17,15),('Floradix S.p.A.','FLORADIX',15,12),('MonteFarmaco S.p.A.','VITAlMIX',14,12),('MyLan S.p.A.','BRUFEN LIK',13,10),('Nutralie S.p.A.','GARCINIA CAMBOGIA',15,12),('Scolibor S.p.A.','SCALIBOR COLLARE',8,4);
/*!40000 ALTER TABLE `dittafarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forn`
--

DROP TABLE IF EXISTS `forn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forn` (
  `PIva` varchar(20) NOT NULL,
  `Denom` varchar(20) NOT NULL,
  `Mail` varchar(20) DEFAULT NULL,
  `Citta` varchar(15) DEFAULT NULL,
  `Via` varchar(15) DEFAULT NULL,
  `Nciv` char(4) DEFAULT NULL,
  `Cap` char(7) DEFAULT NULL,
  PRIMARY KEY (`PIva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forn`
--

LOCK TABLES `forn` WRITE;
/*!40000 ALTER TABLE `forn` DISABLE KEYS */;
INSERT INTO `forn` VALUES ('0019621O96867','FarmaLoretta S.R.L.','f.loretta@info.com','BOLOGNA','Gualdo','28','40121'),('002422166851','PharmaQuattro S.p.A.','p.quattro@info.com','RICCIONE','Piemonte','28','40016'),('002428916685','CarloDistrib S.R.L.','c.distrib@info.com','BOLOGNA','Piemonte','21','40121'),('002431936956','VallaFarm S.p.A.','v.farm@info.com','VERONA','Franco','23','37100'),('003134936804','LloydsPharma S.R.L.','l.pharma@info.com','ANCONA','Mazzini','34','60128'),('003634966207','eFarma','efarma@info.com','ANCONA','Garibaldi','16','60128'),('004734866802','DitribPharm S.p.A.','d.pharm@info.com','ROMA','Libetta','36','00151'),('0053621O96881','LemmeDistrib S.R.L.','l.distrib@info.com','ANCONA','Scrima','04','60128'),('006421136756','ZeccaDistrib S.p.A.','z.distrib@info.com','RIMINI','Primo Maggio','11','47921');
/*!40000 ALTER TABLE `forn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orariodip`
--

DROP TABLE IF EXISTS `orariodip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orariodip` (
  `Dipendente` varchar(16) NOT NULL,
  `Data` date NOT NULL,
  `Orario` int NOT NULL,
  PRIMARY KEY (`Dipendente`,`Data`,`Orario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orariodip`
--

LOCK TABLES `orariodip` WRITE;
/*!40000 ALTER TABLE `orariodip` DISABLE KEYS */;
INSERT INTO `orariodip` VALUES ('DFSGHJ23O67R212Z','2020-02-01',1),('DFSGHJ23O67R212Z','2020-02-02',8),('DFSGHJ23O67R212Z','2020-02-03',6),('DFSGHJ23O67R212Z','2020-02-04',1),('DFSGHJ23O67R212Z','2020-02-05',6),('DFSGHJ23O67R212Z','2020-02-06',8),('LSTGHJ33e77R212T','2020-02-01',5),('LSTGHJ33e77R212T','2020-02-02',10),('LSTGHJ33e77R212T','2020-02-03',3),('LSTGHJ33e77R212T','2020-02-04',6),('LSTGHJ33e77R212T','2020-02-05',0),('LSTGHJ33e77R212T','2020-02-06',2),('MSSGHJ23A77R212Z','2020-02-01',8),('MSSGHJ23A77R212Z','2020-02-02',3),('MSSGHJ23A77R212Z','2020-02-03',9),('MSSGHJ23A77R212Z','2020-02-04',6),('MSSGHJ23A77R212Z','2020-02-05',7),('MSSGHJ23A77R212Z','2020-02-06',1),('PLLFNC80A09F205F','2020-02-01',0),('PLLFNC80A09F205F','2020-02-02',8),('PLLFNC80A09F205F','2020-02-03',4),('PLLFNC80A09F205F','2020-02-04',8),('PLLFNC80A09F205F','2020-02-05',5),('PLLFNC80A09F205F','2020-02-06',8),('RPTMNZ32E89F332F','2020-02-01',3),('RPTMNZ32E89F332F','2020-02-02',0),('RPTMNZ32E89F332F','2020-02-03',5),('RPTMNZ32E89F332F','2020-02-04',6),('RPTMNZ32E89F332F','2020-02-05',8),('RPTMNZ32E89F332F','2020-02-06',0),('RTFGHL89A07D273Z','2020-02-01',5),('RTFGHL89A07D273Z','2020-02-02',7),('RTFGHL89A07D273Z','2020-02-03',4),('RTFGHL89A07D273Z','2020-02-04',0),('RTFGHL89A07D273Z','2020-02-05',7),('RTFGHL89A07D273Z','2020-02-06',8);
/*!40000 ALTER TABLE `orariodip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod`
--

DROP TABLE IF EXISTS `prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod` (
  `NomeProd` varchar(20) NOT NULL,
  `NomeDitta` varchar(20) NOT NULL,
  `Codice` int NOT NULL,
  `ScadProd` date DEFAULT NULL,
  `QuantProd` int DEFAULT NULL,
  `TipoProd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Codice`),
  CONSTRAINT `prod_chk_1` CHECK (((`TipoProd` = _cp850'Farmaco') or (`TipoProd` = _cp850'Erboresteria') or (`TipoProd` = _cp850'Integratore') or (`TipoProd` = _cp850'Omeopatia') or (`TipoProd` = _cp850'Cosmetico') or (`TipoProd` = _cp850'Igiene') or (`TipoProd` = _cp850'Alimenti') or (`TipoProd` = _cp850'Veterinaria') or (`TipoProd` = _cp850'Infanzia')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod`
--

LOCK TABLES `prod` WRITE;
/*!40000 ALTER TABLE `prod` DISABLE KEYS */;
INSERT INTO `prod` VALUES ('ACETAMOL','Abiogen Pharm S.p.A.',1,'2024-08-11',12,'FARMACO'),('TACHIPIRINA','ANGELINI S.p.A.',2,'2025-06-21',45,'FARMACO'),('LA MER CREME','La Mer S.p.A.',3,'2023-08-14',34,'COSMETICO'),('PROPOLI EPID SPRAY','Farmaè S.p.A.',4,'2022-07-24',36,'ERBORESTERIA'),('LA MER CREME','La Mer S.p.A.',5,'2023-08-14',34,'COSMETICO'),('ELEVE CREME','Élève  S.p.A.',6,'2022-09-16',18,'COSMETICO'),('PROTEIN MYPROTEIN','MyProtein  S.p.A.',7,'2022-09-16',13,'INTEGRATORE'),('MYVITAMINS VIT','MyProtein  S.p.A.',8,'2021-10-13',15,'INTEGRATORE'),('PURE MULTIVIT','Pure S.p.A.',9,'2021-11-26',23,'INTEGRATORE'),('OKI TASK','Oki S.p.A.',10,'2023-05-24',53,'FARMACO'),('TRIBULUS VEGET','Erbamea S.p.A.',11,'2025-03-14',23,'ERBORESTERIA'),('VITAMINE&MINERALI','Erbamea S.p.A.',12,'2024-04-02',28,'ERBORESTERIA'),('MACA NERA PERUV','Nutridix S.p.A.',13,'2024-06-14',36,'OMEOPATIA'),('SPAZZ COLGATE','Colgate S.p.A.',14,NULL,36,'IGIENE'),('GARCINIA CAMBOGIA','Nutralie S.p.A.',15,'2025-07-24',26,'OMEOPATIA'),('DENTIF COLGATE','Colgate S.p.A.',16,NULL,42,'IGIENE'),('VOLTADOL ANTINF','Voltadol S.p.A.',17,'2025-11-06',45,'FARMACO'),('BISC SCHAR','Schar S.p.A.',18,'2022-10-16',27,'ALIMENTI'),('CONFIS ULTRA','Confis S.p.A.',19,'2021-11-18',15,'VETERINARIA'),('CER SCHAR','Schar S.p.A.',20,'2022-11-12',14,'ALIMENTI'),('PETFORMANCE PILL','Petformance S.p.A.',21,'2022-12-21',12,'VETERINARIA'),('BENAGOL PASTIGL','Benagol S.p.A.',22,'2023-10-02',30,'FARMACO'),('SCALIBOR COLLARE','Scalibor S.p.A.',23,'2022-06-11',28,'VETERINARIA'),('FLORADIX','Floradix S.p.A',24,'2022-06-11',14,'INFANZIA'),('VITALMIX','MonteFarmaco S.p.A.',25,'2023-07-06',23,'INFANZIA'),('GARCINIA CAMBOGIA','Nutralie S.p.A.',26,'2021-07-21',16,'OMEOPATIA'),('DRE GOCCE','Dre S.p.A.',27,'2022-11-15',13,'OMEOPATIA'),('BRUFEN LIK','MyLan S.p.A.',28,'2024-02-05',37,'FARMACO'),('EFFERDENT','Efferdent S.p.A.',29,'2024-05-15',24,'IGIENE'),('DENTIF MENTADENT','Mentadent S.p.A.',30,NULL,14,'IGIENE');
/*!40000 ALTER TABLE `prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telazsmalt`
--

DROP TABLE IF EXISTS `telazsmalt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telazsmalt` (
  `AzSmalt` varchar(15) NOT NULL,
  `NumTel` varchar(20) NOT NULL,
  PRIMARY KEY (`NumTel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telazsmalt`
--

LOCK TABLES `telazsmalt` WRITE;
/*!40000 ALTER TABLE `telazsmalt` DISABLE KEYS */;
INSERT INTO `telazsmalt` VALUES ('00145678','3278247233'),('00562713','3427827163');
/*!40000 ALTER TABLE `telazsmalt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telcliente`
--

DROP TABLE IF EXISTS `telcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telcliente` (
  `Cliente` varchar(16) NOT NULL,
  `NumTel` varchar(20) NOT NULL,
  PRIMARY KEY (`NumTel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telcliente`
--

LOCK TABLES `telcliente` WRITE;
/*!40000 ALTER TABLE `telcliente` DISABLE KEYS */;
INSERT INTO `telcliente` VALUES ('MSSPRF198G3A322I','31112923746'),('FRCMNT178V2A624Z','3111923746'),('GRGVRD178V23A69A','3221923746'),('GVNNRR148R92A924','3232192374'),('FRCLNG178V23A64Z','32421923746'),('LRNLNG19V23A224I','3336199882'),('CRLRS18V89A674Z','3421923746'),('LCCRSS188N28A23I','3422123816'),('MRCVRD158T23A84I','3422192444'),('MRCB16T80A574I','3444923746');
/*!40000 ALTER TABLE `telcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teldip`
--

DROP TABLE IF EXISTS `teldip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teldip` (
  `Dip` varchar(16) NOT NULL,
  `NumTel` varchar(20) NOT NULL,
  PRIMARY KEY (`NumTel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teldip`
--

LOCK TABLES `teldip` WRITE;
/*!40000 ALTER TABLE `teldip` DISABLE KEYS */;
INSERT INTO `teldip` VALUES ('PLLFNC80A09F205F','3228473625'),('RPTMNZ32E89F332F','3328476355'),('DFSGHJ23O67R212Z','3332987865'),('RTFGHL89A07D273Z','3445211232'),('LSTGHJ33e77R212T','3456288361'),('MSSGHJ23A77R212Z','3526112734');
/*!40000 ALTER TABLE `teldip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telforn`
--

DROP TABLE IF EXISTS `telforn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telforn` (
  `Forn` varchar(15) NOT NULL,
  `NumTel` varchar(20) NOT NULL,
  PRIMARY KEY (`NumTel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telforn`
--

LOCK TABLES `telforn` WRITE;
/*!40000 ALTER TABLE `telforn` DISABLE KEYS */;
INSERT INTO `telforn` VALUES ('002428916685','3117183322'),('0053621O96881','3217182229'),('002431936956','3227182829'),('004734866802','3327265217'),('006421136756','3338271832'),('002422166851','3342718879'),('003634966207','3345182739'),('0019621O96867','3427111111'),('003134936804','3427182739');
/*!40000 ALTER TABLE `telforn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terapia`
--

DROP TABLE IF EXISTS `terapia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terapia` (
  `Cliente` varchar(16) NOT NULL,
  `Prod` int NOT NULL,
  `Codice` int NOT NULL,
  `Descr` varchar(100) NOT NULL,
  `Periodo` varchar(10) NOT NULL,
  PRIMARY KEY (`Codice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terapia`
--

LOCK TABLES `terapia` WRITE;
/*!40000 ALTER TABLE `terapia` DISABLE KEYS */;
INSERT INTO `terapia` VALUES ('FRCMNT178V2A624Z',24,1,'Descrizione della terapia numero 1','3 mesi'),('LCCRSS188N28A23I',10,2,'Descrizione della terapia numero 2','6 mesi'),('GVNNRR148R92A924',1,3,'Descrizione della terapia numero 3','7 mesi'),('MRCVRD158T23A84I',21,4,'Descrizione della terapia numero 4','2 mesi');
/*!40000 ALTER TABLE `terapia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipologiaprod`
--

DROP TABLE IF EXISTS `tipologiaprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipologiaprod` (
  `TipoProd` varchar(20) NOT NULL,
  PRIMARY KEY (`TipoProd`),
  CONSTRAINT `tipologiaprod_chk_1` CHECK (((`TipoProd` = _cp850'Farmaco') or (`TipoProd` = _cp850'Erboresteria') or (`TipoProd` = _cp850'Integratore') or (`TipoProd` = _cp850'Omeopatia') or (`TipoProd` = _cp850'Cosmetico') or (`TipoProd` = _cp850'Igiene') or (`TipoProd` = _cp850'Alimenti') or (`TipoProd` = _cp850'Veterinaria') or (`TipoProd` = _cp850'Infanzia')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologiaprod`
--

LOCK TABLES `tipologiaprod` WRITE;
/*!40000 ALTER TABLE `tipologiaprod` DISABLE KEYS */;
INSERT INTO `tipologiaprod` VALUES ('Alimenti'),('Cosmetico'),('Erboresteria'),('Farmaco'),('Igiene'),('Infanzia'),('Integratore'),('Omeopatia'),('Veterinaria');
/*!40000 ALTER TABLE `tipologiaprod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transcostifissi`
--

DROP TABLE IF EXISTS `transcostifissi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transcostifissi` (
  `Codice` int NOT NULL,
  `Importo` decimal(7,2) NOT NULL,
  `Descrizione` varchar(100) DEFAULT NULL,
  `ScadTrans` date DEFAULT NULL,
  `Data` date DEFAULT NULL,
  PRIMARY KEY (`Codice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transcostifissi`
--

LOCK TABLES `transcostifissi` WRITE;
/*!40000 ALTER TABLE `transcostifissi` DISABLE KEYS */;
INSERT INTO `transcostifissi` VALUES (1,112.20,'Descrizione della transazione 1',NULL,'2021-04-12'),(2,42.80,'Descrizione della transazione 2',NULL,'2021-05-10'),(3,85.80,'Descrizione della transazione 3',NULL,'2021-03-11'),(4,48.50,'Descrizione della transazione 4',NULL,'2021-12-04'),(5,55.12,'Descrizione della transazione 5',NULL,'2021-06-10'),(6,98.90,'Descrizione della transazione 6',NULL,'2021-11-02'),(7,23.50,'Descrizione della transazione 7',NULL,'2021-10-21'),(8,49.80,'Descrizione della transazione 8',NULL,'2021-09-22'),(10,75.30,'Descrizione della transazione 10',NULL,'2021-06-10'),(11,34.20,'Descrizione della transazione 11',NULL,'2021-07-12'),(12,86.90,'Descrizione della transazione 12',NULL,'2021-04-03'),(13,80.00,'Descrizione della transazione 13',NULL,'2021-05-13'),(14,62.70,'Descrizione della transazione 14',NULL,'2021-11-10'),(15,51.20,'Descrizione della transazione 15',NULL,'2021-12-20'),(16,42.00,'Descrizione della transazione 16',NULL,'2021-08-06');
/*!40000 ALTER TABLE `transcostifissi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transentr`
--

DROP TABLE IF EXISTS `transentr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transentr` (
  `Prod` varchar(20) DEFAULT NULL,
  `Cliente` varchar(16) DEFAULT NULL,
  `AzSmalt` varchar(20) DEFAULT NULL,
  `Codice` int NOT NULL,
  `Importo` decimal(7,2) NOT NULL,
  `Data` date DEFAULT NULL,
  PRIMARY KEY (`Codice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transentr`
--

LOCK TABLES `transentr` WRITE;
/*!40000 ALTER TABLE `transentr` DISABLE KEYS */;
INSERT INTO `transentr` VALUES ('009','null','00145678',1,123.00,'2020-02-13'),('012','FRCLNG178V23A64Z','null',2,28.70,'2020-02-25'),('013','GRGVRD178V23A69A','null',3,18.99,'2020-03-11'),('023','LCCRSS188N28A23I','null',4,24.80,'2020-03-25'),('023','MRCVRD158T23A84I','null',5,22.30,'2020-04-03'),('002','LCCRSS188N28A23I','null',6,34.70,'2020-04-13'),('003','CRLRS18V89A674Z','null',7,9.80,'2020-05-17'),('019','null','00145678',8,186.00,'2020-05-30'),('012','FRCLNG178V23A64Z','null',9,12.60,'2020-06-02'),('023','MRCVRD158T23A84I','null',10,18.99,'2020-06-10'),('009','null','00562713',11,248.40,'2020-07-21'),('014','MRCB16T80A574I','null',12,32.70,'2020-07-28'),('015','FRCLNG178V23A64Z','null',13,41.10,'2020-08-02'),('022','MSSPRF198G3A322I','null',14,10.80,'2020-08-28'),('008','MRCVRD158T23A84I','null',15,28.50,'2020-09-18'),('005','CRLRS18V89A674Z','null',16,23.20,'2020-09-26'),('004','MSSPRF198G3A322I','null',17,13.80,'2020-10-08'),('001','CRLRS18V89A674Z','null',18,12.30,'2020-10-27'),('025','FRCLNG178V23A64Z','null',19,16.80,'2020-11-15'),('011','CRLRS18V89A674Z','null',20,11.90,'2020-11-26'),('012','FRCMNT178V2A624Z','null',21,22.50,'2020-12-14');
/*!40000 ALTER TABLE `transentr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transprod`
--

DROP TABLE IF EXISTS `transprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transprod` (
  `Prod` varchar(20) NOT NULL,
  `Forn` varchar(20) NOT NULL,
  `Codice` int NOT NULL,
  `Importo` decimal(7,2) NOT NULL,
  `Descrizione` varchar(100) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  PRIMARY KEY (`Codice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transprod`
--

LOCK TABLES `transprod` WRITE;
/*!40000 ALTER TABLE `transprod` DISABLE KEYS */;
INSERT INTO `transprod` VALUES ('020','0053621O96881',1,245.60,'Descrizione:quantità,...','2020-08-14'),('027','0019621O96867',2,160.80,'Descrizione:quantità,...','2020-09-10'),('024','002422166851',3,127.40,'Descrizione:quantità,...','2020-10-09'),('006','006421136756',4,202.10,'Descrizione:quantità,...','2020-10-22'),('009','0019621O96867',5,202.10,'Descrizione:quantità,...','2020-11-19'),('013','004734866802',6,286.70,'Descrizione:quantità,...','2020-12-15'),('009','00363496620',7,104.20,'Descrizione:quantità,...','2020-12-21');
/*!40000 ALTER TABLE `transprod` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-08 17:02:14
