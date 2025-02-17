--
-- Table structure for table `atribut`
--

DROP TABLE IF EXISTS `atribut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atribut` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_atribut` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atribut`
--

LOCK TABLES `atribut` WRITE;
/*!40000 ALTER TABLE `atribut` DISABLE KEYS */;
INSERT INTO `atribut` VALUES (1,'Intel·ligència'),(2,'Força'),(3,'Velocitat'),(4,'Durabilitat'),(5,'Poder'),(6,'Combat');
/*!40000 ALTER TABLE `atribut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atribut_heroi`
--

DROP TABLE IF EXISTS `atribut_heroi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atribut_heroi` (
  `heroi_id` int DEFAULT NULL,
  `atribut_id` int DEFAULT NULL,
  `valor` int DEFAULT NULL,
  KEY `fk_aha_at` (`atribut_id`),
  KEY `fk_aha_heroi` (`heroi_id`),
  CONSTRAINT `fk_aha_at` FOREIGN KEY (`atribut_id`) REFERENCES `atribut` (`id`),
  CONSTRAINT `fk_aha_heroi` FOREIGN KEY (`heroi_id`) REFERENCES `superheroi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- problema 1
select nom_poder from superpoder order by nom_poder ASC;

-- problema 2 
select * from superheroi where alcada_cm>200;

-- problema 3 
select nom_superheroi,pes_kg  from superheroi where nom_superheroi is null and pes_kg  is null;

-- problema 4
select nom_superheroi,pes_kg from superheroi where pes_kg > 120 and alcada_cm < 170;

-- problema 5
select *  from superheroi where pes_kg > 60 and pes_kg < 65;
select *  from superheroi where pes_kg between 60 and 65;

-- problema 6
select * from superheroi where pes_kg > 300 order by pes_kg DESC;

-- problmema 7
select nom_superheroi,pes_kg, pes_kg * 2.20462 AS pes_libras from superheroi where pes_kg > 300;
-- problema 8
select nom_poder from superpoder where nom_poder like '%Control%';

-- problema 9
select nom_editorial from editorial where nom_editorial like 'M%' or nom_editorial like '%s';

-- problem 10
select raca from raca where raca not like '%a%';

--problema 11
select nom_superheroi,pes_kg,alcada_cm from superheroi where (nom_superheroi like 'b%' or alcada_cm > 300 )and pes_kg >= 120;

--problema 12
select color from color where (color like 'B%' or color like '%k') and color not like'%a%';

-- problema 13
select nom_superheroi,pes_kg,round (pes_kg * 2.20462,2) AS pes_lliure from superheroi where pes_kg >= 300;

-- problema 14
select raca from raca where not instr(raca,'a');

-- problema 15
select nom_superheroi from superheroi where not instr(nom_superheroi,'o') = 3;

-- problema 16
select nom_editorial from editorial where char_length(nom_editorial)>= 10;

-- problema 17
select nom_editorial from editorial where char_length(nom_editorial) = 10 order by char_length(nom_editorial);

-- problema 18

-- problema 21
select nom_superheroi,id_genere from superheroi where pes_kg between 60 and 70;

--problema 22
-- Ponemos el primary key y mull y primary key y primary key
select nom_superheroi,nom_editorial from superheroi,editorial where superheroi.id_editorial = editorial.id;

-- Ejemplo
-- que tengas los ojos azul
select nom_superheroi,color from superheroi,color where superheroi.id=id_color_ulls and color like '%blau%';

