-- MySQL dump 10.13  Distrib 8.0.33, for Linux (aarch64)
--
-- Host: localhost    Database: krankenhauspatienten
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `Disease`
--

DROP TABLE IF EXISTS `Disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Disease` (
  `disease_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `symptoms` text,
  PRIMARY KEY (`disease_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Disease`
--

LOCK TABLES `Disease` WRITE;
/*!40000 ALTER TABLE `Disease` DISABLE KEYS */;
INSERT INTO `Disease` VALUES (1,'Herzinfarkt','Ein Herzinfarkt tritt auf, wenn der Blutfluss zum Herzmuskel blockiert ist, was zu Gewebsschäden führt.','Brustschmerzen, Atemnot, Übelkeit'),(2,'Schlaganfall','Ein Schlaganfall tritt auf, wenn die Blutversorgung zum Gehirn unterbrochen ist, was zu neurologischen Ausfällen führen kann.','Plötzliche Schwäche, Sprachschwierigkeiten, Verlust des Gleichgewichts'),(3,'Diabetes mellitus','Diabetes mellitus ist eine Stoffwechselerkrankung, bei der der Körper nicht in der Lage ist, den Blutzuckerspiegel effektiv zu regulieren.','Häufiges Wasserlassen, erhöhter Durst, Gewichtsverlust'),(4,'Lungenentzündung','Lungenentzündung ist eine Infektion der Lungen, die zu Entzündungen und Füllung der Lungenbläschen mit Flüssigkeit führt.','Husten, Fieber, Brustschmerzen'),(5,'Hypertonie','Hypertonie, auch bekannt als hoher Blutdruck, ist ein Zustand, bei dem der Blutdruck in den Arterien dauerhaft erhöht ist.','Kopfschmerzen, Schwindel, Kurzatmigkeit'),(6,'Rheumatoide Arthritis','Rheumatoide Arthritis ist eine chronische entzündliche Erkrankung, die hauptsächlich die Gelenke betrifft.','Gelenkschmerzen, Schwellungen, Steifheit'),(7,'Asthma','Asthma ist eine chronische Atemwegserkrankung, die zu Atembeschwerden, Husten und Engegefühl in der Brust führt.','Atemnot, Keuchen, Husten'),(8,'Depression','Depression ist eine psychische Erkrankung, die anhaltende Traurigkeit, Interessenverlust und negative Veränderungen in Denken und Verhalten verursacht.','Traurigkeit, Energiemangel, Schlafstörungen'),(9,'Migräne','Migräne ist eine neurologische Erkrankung, die starke Kopfschmerzen, Lichtempfindlichkeit und Übelkeit verursacht.','Pochende Kopfschmerzen, Lichtempfindlichkeit, Übelkeit'),(10,'Osteoporose','Osteoporose ist eine Erkrankung, bei der die Knochen an Dichte verlieren, was zu erhöhtem Frakturrisiko führt.','Knochenschmerzen, Körpergrößenverlust, Knochenbrüche');
/*!40000 ALTER TABLE `Disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Doctor` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `specialization` varchar(50) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `employment_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES (1,'Dr. Müller','Schmidt','Allgemeinmedizin','0123456789','Angestellt'),(2,'Dr. Wagner','Koch','Chirurgie','0234567890','Angestellt'),(3,'Dr. Schneider','Bauer','Innere Medizin','0345678901','Selbstständig'),(4,'Dr. Fischer','Meyer','Kardiologie','0456789012','Angestellt'),(5,'Dr. Weber','Schulz','Orthopädie','0567890123','Angestellt'),(6,'Dr. Richter','Hoffmann','Neurologie','0678901234','Selbstständig'),(7,'Dr. Lehmann','Köhler','Augenheilkunde','0789012345','Angestellt'),(8,'Dr. Becker','Schwarz','Hals-Nasen-Ohrenheilkunde','0890123456','Angestellt'),(9,'Dr. Wolf','Lange','Urologie','0901234567','Selbstständig'),(10,'Dr. Schmitt','Graf','Dermatologie','0012345678','Angestellt');
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Insurance`
--

DROP TABLE IF EXISTS `Insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Insurance` (
  `insurance_id` int NOT NULL AUTO_INCREMENT,
  `insurance_provider` varchar(100) NOT NULL,
  `coverage_details` text,
  PRIMARY KEY (`insurance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Insurance`
--

LOCK TABLES `Insurance` WRITE;
/*!40000 ALTER TABLE `Insurance` DISABLE KEYS */;
INSERT INTO `Insurance` VALUES (1,'AOK','Umfassende Leistungen für gesetzlich Versicherte'),(2,'TK','Innovative Gesundheitsangebote und Präventionsprogramme'),(3,'Barmer','Breites Netzwerk an Ärzten und Kliniken'),(4,'DAK','Zusatzleistungen wie Vorsorgeuntersuchungen und Impfungen'),(5,'Techniker Krankenkasse','Digitale Services und individuelle Beratung'),(6,'BKK','Familienfreundliche Leistungen und besondere Zusatzangebote'),(7,'IKK','Regionale Krankenkasse mit persönlicher Betreuung'),(8,'HKK','Günstige Beitragssätze und umfangreiche Leistungen'),(9,'HEK','Spezialisiert auf Gesundheitsmanagement und Prävention'),(10,'SECURVITA','Ganzheitliche Gesundheitsversorgung und Naturheilkunde');
/*!40000 ALTER TABLE `Insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medication`
--

DROP TABLE IF EXISTS `Medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medication` (
  `medication_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dosage` varchar(50) DEFAULT NULL,
  `side_effects` text,
  `administration_instructions` text,
  PRIMARY KEY (`medication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medication`
--

LOCK TABLES `Medication` WRITE;
/*!40000 ALTER TABLE `Medication` DISABLE KEYS */;
INSERT INTO `Medication` VALUES (1,'Paracetamol','500 mg','Übelkeit, Magenbeschwerden','Nehmen Sie 1 Tablette alle 6 Stunden mit Wasser ein.'),(2,'Ibuprofen','400 mg','Magenbeschwerden, Kopfschmerzen','Nehmen Sie 1 Tablette alle 8 Stunden nach einer Mahlzeit ein.'),(3,'Amoxicillin','500 mg','Übelkeit, Hautausschlag','Nehmen Sie 1 Tablette alle 12 Stunden mit Nahrung ein.'),(4,'Lisinopril','10 mg','Husten, Schwindelgefühl','Nehmen Sie 1 Tablette täglich vor dem Frühstück ein.'),(5,'Simvastatin','20 mg','Muskelbeschwerden, Kopfschmerzen','Nehmen Sie 1 Tablette täglich vor dem Schlafengehen ein.'),(6,'Insulin','10 Einheiten','Hypoglykämie, Hautreizung','Spritzen Sie 10 Einheiten Insulin vor den Mahlzeiten unter die Haut.'),(7,'Aspirin','100 mg','Magenbeschwerden, Blutungsneigung','Nehmen Sie 1 Tablette täglich nach einer Mahlzeit ein.'),(8,'Ventolin','100 mcg','Herzklopfen, Zittern','Inhaliere 1 Dosis bei Bedarf zur Linderung von Atemnot.'),(9,'Warfarin','5 mg','Blutungen, Hämatome','Nehmen Sie 1 Tablette täglich zur gleichen Zeit ein.'),(10,'Metformin','1000 mg','Magendarmbeschwerden, Durchfall','Nehmen Sie 1 Tablette zweimal täglich nach den Mahlzeiten ein.');
/*!40000 ALTER TABLE `Medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birth_date` date NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `insurance_id` int DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `insurance_id` (`insurance_id`),
  CONSTRAINT `Patient_ibfk_1` FOREIGN KEY (`insurance_id`) REFERENCES `Insurance` (`insurance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES (1,'Oskar','Grabowski','männlich','2002-03-25','01726691101',1),(2,'Anna','Schmidt','weiblich','1992-09-28','9876543210',2),(3,'Tom','Miller','männlich','1975-12-03','8765432109',3),(4,'Emma','Johnson','weiblich','1988-07-19','7654321098',4),(5,'Sophie','Lee','weiblich','1995-02-10','6543210987',5),(6,'David','Wagner','männlich','1982-11-26','5432109876',1),(7,'Lena','Müller','weiblich','1990-04-02','4321098765',2),(8,'Ben','Davis','männlich','1979-08-14','3210987654',3),(9,'Emily','Harris','weiblich','1994-01-07','2109876543',4),(10,'Noah','Taylor','männlich','1985-06-22','1098765432',5);
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Treatment`
--

DROP TABLE IF EXISTS `Treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Treatment` (
  `treatment_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `disease_id` int DEFAULT NULL,
  `treatment_date` date NOT NULL,
  `medication` varchar(100) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`treatment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `disease_id` (`disease_id`),
  CONSTRAINT `Treatment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `Patient` (`patient_id`),
  CONSTRAINT `Treatment_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor` (`doctor_id`),
  CONSTRAINT `Treatment_ibfk_3` FOREIGN KEY (`disease_id`) REFERENCES `Disease` (`disease_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Treatment`
--

LOCK TABLES `Treatment` WRITE;
/*!40000 ALTER TABLE `Treatment` DISABLE KEYS */;
INSERT INTO `Treatment` VALUES (1,1,3,2,'2023-05-10','Paracetamol',7),(2,2,1,5,'2023-05-12','Ibuprofen',5),(3,3,2,1,'2023-05-15','Amoxicillin',10),(4,4,3,4,'2023-05-18','Lisinopril',14),(5,1,2,3,'2023-05-20','Simvastatin',30),(6,2,3,5,'2023-05-22','Insulin',60),(7,3,1,2,'2023-05-25','Aspirin',7),(8,4,2,1,'2023-05-28','Ventolin',3),(9,1,3,4,'2023-06-02','Warfarin',21),(10,2,1,3,'2023-06-05','Metformin',14);
/*!40000 ALTER TABLE `Treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreatmentMedication`
--

DROP TABLE IF EXISTS `TreatmentMedication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TreatmentMedication` (
  `treatment_id` int NOT NULL,
  `medication_id` int NOT NULL,
  PRIMARY KEY (`treatment_id`,`medication_id`),
  KEY `medication_id` (`medication_id`),
  CONSTRAINT `TreatmentMedication_ibfk_1` FOREIGN KEY (`treatment_id`) REFERENCES `Treatment` (`treatment_id`),
  CONSTRAINT `TreatmentMedication_ibfk_2` FOREIGN KEY (`medication_id`) REFERENCES `Medication` (`medication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreatmentMedication`
--

LOCK TABLES `TreatmentMedication` WRITE;
/*!40000 ALTER TABLE `TreatmentMedication` DISABLE KEYS */;
/*!40000 ALTER TABLE `TreatmentMedication` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-26 20:13:48
