PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Catégorie (id INTEGER PRIMARY KEY AUTOINCREMENT, categorie TEXT);
INSERT INTO "Catégorie" VALUES(1,'Armée');
INSERT INTO "Catégorie" VALUES(2,'Secour');
INSERT INTO "Catégorie" VALUES(3,'Artisant');
INSERT INTO "Catégorie" VALUES(4,'Auto');
INSERT INTO "Catégorie" VALUES(5,'Banque');
INSERT INTO "Catégorie" VALUES(6,'Immo-Commerce');
INSERT INTO "Catégorie" VALUES(7,'ArtEvent');
INSERT INTO "Catégorie" VALUES(8,'Archi');
INSERT INTO "Catégorie" VALUES(9,'Droit');
INSERT INTO "Catégorie" VALUES(10,'Medic');
INSERT INTO "Catégorie" VALUES(11,'ParaMedic');
INSERT INTO "Catégorie" VALUES(12,'Véto');
INSERT INTO "Catégorie" VALUES(13,'Transport');
INSERT INTO "Catégorie" VALUES(14,'Aéro');
INSERT INTO "Catégorie" VALUES(15,'Industrie');
INSERT INTO "Catégorie" VALUES(16,'Bio');
INSERT INTO "Catégorie" VALUES(17,'Environ');
INSERT INTO "Catégorie" VALUES(18,'Informatique');
INSERT INTO "Catégorie" VALUES(19,'Social');
INSERT INTO "Catégorie" VALUES(20,'Journalisme');
INSERT INTO "Catégorie" VALUES(21,'LycéesP');
CREATE TABLE Intervenants (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, titre TEXT, nom TEXT, confirm INTEGER, categori REFERENCES Catégorie (id), id_timetable TEXT, salle TEXT);
INSERT INTO Intervenants VALUES(1,'Fonct Pub Territ','Isabelle DUPUY SAINT SERNIN','true',5,'5-0','6');
INSERT INTO Intervenants VALUES(2,'Assit dir CAF','Linda DE CRUZEL','true',5,'5-1','6');
INSERT INTO Intervenants VALUES(3,'Ing CNES','Eric SAWYER','true',14,'14-0','7');
INSERT INTO Intervenants VALUES(4,'Ing CdP Thalès spatial','Kader MEZIANI','true',14,'14-1','7');
INSERT INTO Intervenants VALUES(5,'Lycée Airbus','Bruno DUMAS','true',21,'21-0','1');
INSERT INTO Intervenants VALUES(6,'CdP Airbus','David COIRATON','true',14,'14-2','4');
INSERT INTO Intervenants VALUES(7,'Ing Spatial','Etienne PEROT',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(8,'Ing electr','Christian PERTEL','true',15,'15-0','4');
INSERT INTO Intervenants VALUES(9,'Chef entreprise','Frédéric DAUMAS','true',18,'18-0','14');
INSERT INTO Intervenants VALUES(10,NULL,'Sébastien KURDI',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(11,'Customer auto','Hugo GILGER','true',4,'4-0','9');
INSERT INTO Intervenants VALUES(12,NULL,'Paul RIOT',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(13,'Coiffeuse','Florence BADAROUX','true',3,'3-0','2');
INSERT INTO Intervenants VALUES(14,'Maquilleuse','Katia BELOT','true',3,'3-1','2');
INSERT INTO Intervenants VALUES(15,'Chercheuse CNRS','Marta KWAPISZ','true',16,'16-0','8');
INSERT INTO Intervenants VALUES(16,'Resp Q Bio','Carole FERNANDEZ','true',16,'16-1','8');
INSERT INTO Intervenants VALUES(17,NULL,'Cécile BATILLOT',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(18,'Recherche CNRS','Emilie LAYRE','true',16,'16-2','104');
INSERT INTO Intervenants VALUES(19,'Architecte','Maxime LOSTE','true',8,'8-0','105');
INSERT INTO Intervenants VALUES(20,'Ing Batiment','Clémence TERNON','true',8,'8-1','105');
INSERT INTO Intervenants VALUES(21,NULL,'Esteban HERMOSILLA',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(22,'CFA Batiment','Célia EDET','true',8,'8-2','106');
INSERT INTO Intervenants VALUES(23,'Conduct Trav','Debora BARTOLO','true',8,'8-3','106');
INSERT INTO Intervenants VALUES(24,'Consult Info IA','Brice BALICHARD','true',18,'18-1','103');
INSERT INTO Intervenants VALUES(25,'Dir Export Technal','David CHAUNY','true',6,'6-0','107');
INSERT INTO Intervenants VALUES(26,'Dir Achat Eiffage','Raphaël BRIDENNE','true',6,'6-1','107');
INSERT INTO Intervenants VALUES(27,'Event','Nathalie CARPENTIER',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(28,'Chargée comm digit','Valentine RUBI','true',18,'18-2','110');
INSERT INTO Intervenants VALUES(29,'Expert comptable','Xavier SINIGAGLIA','true',5,'5-2','108');
INSERT INTO Intervenants VALUES(30,'Comptable admin','Christelle PEYRE LESUR','true',5,'5-3','109');
INSERT INTO Intervenants VALUES(31,'Employée Banque','Christelle GERVAISE','true',5,'5-4','108');
INSERT INTO Intervenants VALUES(32,'Controleuse Gestion','Carole LIROLA','true',5,'5-5','109');
INSERT INTO Intervenants VALUES(33,'Lycée','Lycée Pro Bonnet','true',7,'7-0','102');
INSERT INTO Intervenants VALUES(34,NULL,'Mickaël Nguyen',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(35,'Marine - Maitre Principal','Frédéric VINCENT','true',1,'1-0','102');
INSERT INTO Intervenants VALUES(36,NULL,'Sébastien HUGUET',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(37,NULL,'Contact Marie Houel',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(38,'Policier','Aurélie ZAWIEJA','true',1,'1-1','101');
INSERT INTO Intervenants VALUES(39,'Policier','Bertrand ZAWIEJA','true',1,'1-2','101');
INSERT INTO Intervenants VALUES(40,'Policier municipal','David BENECH',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(41,NULL,'SDIS Colomiers',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(42,'Avocat','Laura LLANES','true',9,'9-0','CDI');
INSERT INTO Intervenants VALUES(43,'Avocat','Sophie BORDIER','true',9,'9-1','CDI');
INSERT INTO Intervenants VALUES(44,'Avocat','Aurélien DELECROIX','true',9,'9-2','CDI');
INSERT INTO Intervenants VALUES(45,'Gréffière','Céline TEULIERE','true',9,'9-3','CDI');
INSERT INTO Intervenants VALUES(46,'Notaire','Anne CARLES BARRY','true',9,'9-4','ULIS');
INSERT INTO Intervenants VALUES(47,'Mandataire judiciaire','Stéphanie BONALUMI','true',9,'9-5','ULIS');
INSERT INTO Intervenants VALUES(48,'Chargé admin env','Didier PIROVANO','true',17,'17-0','111');
INSERT INTO Intervenants VALUES(49,'Filtration eau','Pierre-Emmanuel GOUTORBE','true',17,'17-1','111');
INSERT INTO Intervenants VALUES(50,'Chargée recrut transit eco','Karine LEJARS','true',17,'17-2','104');
INSERT INTO Intervenants VALUES(51,'Agent immo','Claire MASMEJEAN','true',6,'6-2','112');
INSERT INTO Intervenants VALUES(52,'Agent immo','Julie FAROUZE','true',6,'6-3','112');
INSERT INTO Intervenants VALUES(53,'Journaliste','Agnès GRIMALDI','true',20,'20-0','119');
INSERT INTO Intervenants VALUES(54,NULL,'Camille HOULBERT',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(55,'Etudiante médecine','Clémence SARRAZIN','true',10,'10-0','118');
INSERT INTO Intervenants VALUES(56,NULL,'Nièce de M. Malavelle',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(57,'Sage femme','Annabelle BOMBARDIER','true',10,'10-1','118');
INSERT INTO Intervenants VALUES(58,'Vétérinaire','Caroline POMMAREDE','true',12,'12-0','113');
INSERT INTO Intervenants VALUES(59,NULL,'Amandine ROBIC',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(60,'Ing prod logiciels medic','Sophie PERON','true',15,'15-1','115');
INSERT INTO Intervenants VALUES(61,'Consut scientifique santé','Fabienne DE TONI COSTES','true',16,'16-3','115');
INSERT INTO Intervenants VALUES(62,NULL,'Patricia BERGIA',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(63,'Kiné','Elisabet ABELLAN LUMBRERAS','true',10,'10-2','113');
INSERT INTO Intervenants VALUES(64,NULL,'Virginie LARVEILLE DEUILHE',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(65,NULL,'Florian BOYE',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(66,'Diététicienne','Valérie LESCOT','true',11,'11-0','116');
INSERT INTO Intervenants VALUES(67,'Orthophoniste','Claire SIOT-DECAUVILLE','true',11,'11-1','117');
INSERT INTO Intervenants VALUES(68,'Orthophoniste','Emilie LEBOUCHER','true',11,'11-2','117');
INSERT INTO Intervenants VALUES(69,NULL,'Gaëlle DINET',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(70,'Psy','Joanne TOUGUAY','true',11,'11-3','116');
INSERT INTO Intervenants VALUES(71,'Opticienne','Valérie HOUDU','true',11,'11-4','119');
INSERT INTO Intervenants VALUES(72,'Assit soc','Sophie M’BARGA','true',19,'19-0','114');
INSERT INTO Intervenants VALUES(73,NULL,'Jean-Patrick ROBIN',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(74,'Conseil Insert Socio Pro','Laurence SEGURA','true',19,'19-1','114');
INSERT INTO Intervenants VALUES(75,'Educateur spé médico-social','Stéphane JESPIERRE','true',19,'19-2','120');
INSERT INTO Intervenants VALUES(76,NULL,'Lucas LABORDE',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(77,'Formateur secourisme','Jean BANDET','true',2,'2-0','120');
INSERT INTO Intervenants VALUES(78,'Resp Transp DHL','Sophie MESANGEAU','true',13,'13-0','5');
INSERT INTO Intervenants VALUES(79,NULL,'Emeline CAPELLE',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(80,NULL,'Sabrina TOULLIC',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(81,NULL,'Nadia BRABANT',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(82,NULL,'Mickaël GALISSAIRE',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(83,NULL,'Franck RENIMEL',NULL,NULL,NULL,NULL);
INSERT INTO Intervenants VALUES(84,'Pilote de ligne','François MAVEL','true',13,'13-1','3');
INSERT INTO Intervenants VALUES(85,'Educateur sportif','Lucas LABORDE','true',2,'2-1','9');
INSERT INTO Intervenants VALUES(86,'Lycée pro.','Lycée R. Garros','true',21,'21-1','1');
CREATE TABLE Student (id INTEGER PRIMARY KEY NOT NULL, nom TEXT, c1 TEXT, c2 TEXT, c3 TEXT, c4 TEXT, c5 TEXT, classe TEXT);
INSERT INTO Student VALUES(990,'nobody',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO Student VALUES(991,'nobody',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO Student VALUES(3100,'ABADIE Lilou','Archi','Artisant','ArtEvent','Immo-Commerce','Droit','3e1');
INSERT INTO Student VALUES(3101,'ADOUE Tessa','Artisant','ArtEvent','Immo-Commerce','Social','ParaMedic','3e1');
INSERT INTO Student VALUES(3102,'AGUIRRE Clément','Droit','Medic','Bio','Immo-Commerce','ParaMedic','3e1');
INSERT INTO Student VALUES(3103,'ALBAULT Noémie','Environ','Bio','ArtEvent','Archi','Droit','3e1');
INSERT INTO Student VALUES(3104,'AMILIEN Sam','Medic','ParaMedic','Véto','Bio','Secour','3e1');
INSERT INTO Student VALUES(3105,'BENHALIMA Naïma','Immo-Commerce','Medic','ParaMedic','Véto','Artisant','3e1');
INSERT INTO Student VALUES(3106,'BIGEYRE Lola','Droit','Medic','Archi','Journalisme','Bio','3e1');
INSERT INTO Student VALUES(3107,'BORDES Louise','Droit','Journalisme','Immo-Commerce','Bio','ParaMedic','3e1');
INSERT INTO Student VALUES(3108,'BOUZIANE Fatiha','ParaMedic','Medic','Transport','Artisant','ArtEvent','3e1');
INSERT INTO Student VALUES(3109,'BOYER Enzer',NULL,NULL,NULL,NULL,NULL,'3e1');
INSERT INTO Student VALUES(3110,'BRISOT- -GUILPAIN Guillaume','Armée','Informatique','Auto','Secour','Droit','3e1');
INSERT INTO Student VALUES(3111,'BUCCINO Flavio','Medic','Banque','Informatique','Archi','Droit','3e1');
INSERT INTO Student VALUES(3112,'CHABBERT Sarah','Archi','Immo-Commerce','Auto','Banque','Droit','3e1');
INSERT INTO Student VALUES(3113,'DUBREIL Eléna','ArtEvent','Journalisme','Immo-Commerce','Artisant','Archi','3e1');
INSERT INTO Student VALUES(3114,'FERNANDES Lucas','Aéro','Droit','Secour','LycéesP','Archi','3e1');
INSERT INTO Student VALUES(3115,'GAUBENS Raphaël','Auto','Banque','Bio','Droit','Journalisme','3e1');
INSERT INTO Student VALUES(3116,'GIRMA-VIDAL Julie','Archi','Medic','Immo-Commerce','Droit','Bio','3e1');
INSERT INTO Student VALUES(3117,'GUTIERREZ-HENRIETTE Lorenzo','Banque','Immo-Commerce','Journalisme','Droit','Aéro','3e1');
INSERT INTO Student VALUES(3118,'HERVEY Kéziah','Transport','LycéesP','Journalisme','Immo-Commerce','Archi','3e1');
INSERT INTO Student VALUES(3119,'KAMAR Chloé','ArtEvent','ParaMedic','Véto','Archi','Bio','3e1');
INSERT INTO Student VALUES(3120,'LEDUC Gauthier','ArtEvent','Véto','Medic','Droit','ParaMedic','3e1');
INSERT INTO Student VALUES(3121,'MAGHSOUDI Sonia','Archi','Immo-Commerce','ParaMedic','Banque','Droit','3e1');
INSERT INTO Student VALUES(3122,'MALROUX Thomas','Informatique','Bio','Industrie','Aéro','Archi','3e1');
INSERT INTO Student VALUES(3123,'MARFAING Lena','Droit','Medic','Véto','Immo-Commerce','Journalisme','3e1');
INSERT INTO Student VALUES(3124,'NGO DIT GASTON Paul','ParaMedic','Transport','Banque','Archi','Droit','3e1');
INSERT INTO Student VALUES(3125,'RODRIGUEZ MATÉOS Enzo','ParaMedic','ArtEvent','Informatique','Droit','Medic','3e1');
INSERT INTO Student VALUES(3126,'ROUBY Thomas','Bio','Aéro','Journalisme','Secour','Informatique','3e1');
INSERT INTO Student VALUES(3127,'VALERO PERON Marie','Bio','Aéro','Armée','Medic','Véto','3e1');
INSERT INTO Student VALUES(3200,'AMOKRANE Anis','Informatique','Droit','Environ','Industrie','Armée','3e2');
INSERT INTO Student VALUES(3201,'ANDREONE TEHUPE Henri','Armée','Secour','Auto','Transport','Aéro','3e2');
INSERT INTO Student VALUES(3202,'BALICHARD Ysaline','Medic','ParaMedic','Droit','Archi','Social','3e2');
INSERT INTO Student VALUES(3203,'BEN HAMOUDA Ilyes','Armée','Droit','Medic','ParaMedic','Immo-Commerce','3e2');
INSERT INTO Student VALUES(3204,'CABANE Robin','Aéro','Immo-Commerce','Secour','Bio','Archi','3e2');
INSERT INTO Student VALUES(3205,'CALLA Mateï','Medic','ArtEvent','Armée','Auto','Archi','3e2');
INSERT INTO Student VALUES(3206,'CARDENTI Andrea','Armée','Aéro','Auto','Secour','Archi','3e2');
INSERT INTO Student VALUES(3207,'COLOMBARD Clémentine','Journalisme','Armée','Social','ArtEvent','Medic','3e2');
INSERT INTO Student VALUES(3208,'DELMAS Clarisse','Armée','Droit','Immo-Commerce','Medic','Bio','3e2');
INSERT INTO Student VALUES(3209,'ECHE Clement','Archi','Secour','Armée','Auto','Journalisme','3e2');
INSERT INTO Student VALUES(3210,'EL IDRISSI Fares','Auto','Archi','Banque','Industrie','Environ','3e2');
INSERT INTO Student VALUES(3211,'ESPARRE Jonathan','Informatique','Armée','Transport','ArtEvent','Bio','3e2');
INSERT INTO Student VALUES(3212,'GALIEGUE Kayla','Medic','Droit','ParaMedic','Bio','Auto','3e2');
INSERT INTO Student VALUES(3213,'GESTIN Emilie','Véto','Medic','Immo-Commerce','Armée','Archi','3e2');
INSERT INTO Student VALUES(3214,'GOMES VELOSO Annaelle','Droit','Secour','Social','Véto','Immo-Commerce','3e2');
INSERT INTO Student VALUES(3215,'GRAFAT Hamza','LycéesP','ArtEvent','Armée','Archi','ParaMedic','3e2');
INSERT INTO Student VALUES(3216,'LECLERCQ CUESTA Victoria','Journalisme','Droit','Banque','Medic','Immo-Commerce','3e2');
INSERT INTO Student VALUES(3217,'LOYAU Ulysse','Immo-Commerce','Archi','Droit','Transport','Aéro','3e2');
INSERT INTO Student VALUES(3218,'MALIKI Mehdi','LycéesP','Aéro','Journalisme','Artisant','Auto','3e2');
INSERT INTO Student VALUES(3219,'MAS Estelle','Aéro','Archi','Banque','Medic','Secour','3e2');
INSERT INTO Student VALUES(3220,'MASBOU Léna','Informatique','Aéro','Immo-Commerce','Social','Droit','3e2');
INSERT INTO Student VALUES(3221,'MATHIEU Hugo','Armée','Secour','Medic','Auto','Informatique','3e2');
INSERT INTO Student VALUES(3222,'MICHIELAN Mathéo','Medic','Armée','Aéro','Secour','Journalisme','3e2');
INSERT INTO Student VALUES(3223,'PEROT Virgile','Transport','Aéro','Armée','Droit','Archi','3e2');
INSERT INTO Student VALUES(3224,'PIEDRA Lou','Droit','Medic','ArtEvent','ParaMedic','Armée','3e2');
INSERT INTO Student VALUES(3225,'RAMALHO Tristan','Aéro','Informatique','Medic','Bio','Industrie','3e2');
INSERT INTO Student VALUES(3226,'RIHI Maram','ParaMedic','Banque','Social','Immo-Commerce','Artisant','3e2');
INSERT INTO Student VALUES(3227,'RODRIGUEZ ESTRELLA Franyelis','Immo-Commerce','Banque','Droit','Archi','Armée','3e2');
INSERT INTO Student VALUES(3228,'SUTRA Guillaume','Transport','Armée','Immo-Commerce','Medic','ParaMedic','3e2');
INSERT INTO Student VALUES(3229,'TROUBAT Chloé','Archi','Immo-Commerce','Medic','Bio','Droit','3e2');
INSERT INTO Student VALUES(3300,'AHMED OUENZAR Billal','Archi','Auto','Armée','LycéesP','Secour','3e3');
INSERT INTO Student VALUES(3301,'BAHRI Sophia','Véto','ParaMedic','Aéro','Medic','ArtEvent','3e3');
INSERT INTO Student VALUES(3302,'BARTHEZ Elina','ArtEvent','Droit','Social','Immo-Commerce','ParaMedic','3e3');
INSERT INTO Student VALUES(3303,'BEGUE Léo','Medic','Journalisme','Informatique','Droit','Secour','3e3');
INSERT INTO Student VALUES(3304,'BENSAFI Yanis','Immo-Commerce','Secour','Environ','Social','Transport','3e3');
INSERT INTO Student VALUES(3305,'BERGONZAT Elodie','Auto','ParaMedic','ArtEvent','Aéro','Droit','3e3');
INSERT INTO Student VALUES(3306,'CAMPA-WERNER Chiara','Medic','Social','Artisant','ParaMedic','LycéesP','3e3');
INSERT INTO Student VALUES(3307,'CHAFAI Hynda','Medic','Droit','Secour','Armée','Véto','3e3');
INSERT INTO Student VALUES(3308,'DESPAGNE Nina','Medic','Droit','ParaMedic','Journalisme','Archi','3e3');
INSERT INTO Student VALUES(3309,'DUMAS Paul','Transport','Medic','Aéro','Journalisme','Armée','3e3');
INSERT INTO Student VALUES(3310,'EDOIR Gabriel','Archi','Immo-Commerce','Secour','Droit','ParaMedic','3e3');
INSERT INTO Student VALUES(3311,'FONTAN Émilie','Artisant','ParaMedic','ArtEvent','Journalisme','Archi','3e3');
INSERT INTO Student VALUES(3312,'GARCIA Nathan','Banque','Auto','LycéesP','Armée','Droit','3e3');
INSERT INTO Student VALUES(3313,'HERITEAU Esteban','Archi','Immo-Commerce','Aéro','Auto','Banque','3e3');
INSERT INTO Student VALUES(3314,'JERBI Meyssa','Medic','Bio','ParaMedic','Aéro','Banque','3e3');
INSERT INTO Student VALUES(3315,'JULIA Théo','Artisant','Immo-Commerce','Archi','Environ','Journalisme','3e3');
INSERT INTO Student VALUES(3316,'JUNOD Candice','Immo-Commerce','Archi','Véto','Medic','Armée','3e3');
INSERT INTO Student VALUES(3317,'LE ROUX Clément','Auto','LycéesP','Armée','Transport','Environ','3e3');
INSERT INTO Student VALUES(3318,'MANSILLA Daphnée','Archi','Droit','Immo-Commerce','Journalisme','Medic','3e3');
INSERT INTO Student VALUES(3319,'MOOSUN Rihem','Informatique','ParaMedic','Aéro','Archi','Medic','3e3');
INSERT INTO Student VALUES(3320,'MRABTI Kenza','Informatique','Medic','Artisant','Transport','Aéro','3e3');
INSERT INTO Student VALUES(3321,'OGLAZA Sélène','ParaMedic','Social','Artisant','ArtEvent','Banque','3e3');
INSERT INTO Student VALUES(3322,'RAKOTOMAHEFA Noah','Archi','Informatique','Immo-Commerce','Aéro','Secour','3e3');
INSERT INTO Student VALUES(3323,'RIEU Nathan','Immo-Commerce','Informatique','Archi','Aéro','Armée','3e3');
INSERT INTO Student VALUES(3324,'RIEU Noam','Immo-Commerce','Journalisme','Secour','Banque','Armée','3e3');
INSERT INTO Student VALUES(3325,'RIXENS Gabriel','Environ','Industrie','Journalisme','Archi','Immo-Commerce','3e3');
INSERT INTO Student VALUES(3326,'ROSE Clément','Banque','Medic','Droit','Immo-Commerce','Archi','3e3');
INSERT INTO Student VALUES(3327,'TOUZANI Chemsdine','Aéro','Medic','Informatique','Auto','Armée','3e3');
INSERT INTO Student VALUES(3328,'VALIN Gabriel','Aéro','Informatique','Droit','Archi','Industrie','3e3');
INSERT INTO Student VALUES(3329,'ZOUHAIRI Shemsy','Droit','ArtEvent','Medic','Immo-Commerce','Artisant','3e3');
INSERT INTO Student VALUES(3400,'ALBOUY Thomas','Archi','Banque','Droit','Immo-Commerce','Secour','3e4');
INSERT INTO Student VALUES(3401,'ANTUNES Myléna','Armée','Secour','Véto','Medic','ParaMedic','3e4');
INSERT INTO Student VALUES(3402,'BADIN RAVEL Sofia','Journalisme','ArtEvent','Bio','ParaMedic','Archi','3e4');
INSERT INTO Student VALUES(3403,'BEN HADJ AMMAR Kenza','Bio','Medic','ParaMedic','Archi','Social','3e4');
INSERT INTO Student VALUES(3404,'BERNARD Lisa','Droit','Journalisme','ParaMedic','Armée','Archi','3e4');
INSERT INTO Student VALUES(3405,'BRIAND Julie','Droit','Bio','Banque','Armée','Environ','3e4');
INSERT INTO Student VALUES(3406,'COIRATON Jules','Archi','Secour','Auto','Immo-Commerce','Aéro','3e4');
INSERT INTO Student VALUES(3407,'DAMIENS Lenny','Industrie','Informatique','Environ','Auto','Archi','3e4');
INSERT INTO Student VALUES(3408,'DEBARROS Liam','Secour','Armée','Aéro','Journalisme','Medic','3e4');
INSERT INTO Student VALUES(3409,'DUFOUR--PORTAL Noélie','Droit','Medic','Archi','Immo-Commerce','Bio','3e4');
INSERT INTO Student VALUES(3410,'FERNANDEZ Clément','Medic','Aéro','LycéesP','Armée','Immo-Commerce','3e4');
INSERT INTO Student VALUES(3411,'GOUDOUNECHE Ophéa','Medic','Secour','Journalisme','ParaMedic','Archi','3e4');
INSERT INTO Student VALUES(3412,'GRUSON Lucie','Immo-Commerce','Journalisme','Social','Armée','Artisant','3e4');
INSERT INTO Student VALUES(3413,'HELHAL Jibril','Archi','LycéesP','Secour','Immo-Commerce','Auto','3e4');
INSERT INTO Student VALUES(3414,'LALUE Djullian','LycéesP','Secour','Véto','Medic','Aéro','3e4');
INSERT INTO Student VALUES(3415,'LARPIN Nathan','Aéro','Informatique','Journalisme','Immo-Commerce','Auto','3e4');
INSERT INTO Student VALUES(3416,'LATOURNERIE Pierre','Immo-Commerce','Banque','Droit','Aéro','Armée','3e4');
INSERT INTO Student VALUES(3417,'LONDRES Néoh','Aéro','Véto','Auto','Banque','Armée','3e4');
INSERT INTO Student VALUES(3418,'MARTEAU Thomas','Informatique','Immo-Commerce','Aéro','Droit','Armée','3e4');
INSERT INTO Student VALUES(3419,'NOHALES Charlotte','Secour','Aéro','Armée','Auto','Journalisme','3e4');
INSERT INTO Student VALUES(3420,'PERRIN Antoine','Aéro','Informatique','Medic','Industrie','Immo-Commerce','3e4');
INSERT INTO Student VALUES(3421,'PINCON Laure','Medic','Journalisme','Droit','ParaMedic','Aéro','3e4');
INSERT INTO Student VALUES(3422,'PIRES Jade','ParaMedic','Medic','Social','Droit','Archi','3e4');
INSERT INTO Student VALUES(3423,'POLITOWICZ Enzo','Archi','Immo-Commerce','Secour','Medic','Armée','3e4');
INSERT INTO Student VALUES(3424,'RATINAUD Nolwenn','Journalisme','Droit','Archi','Aéro','Medic','3e4');
INSERT INTO Student VALUES(3425,'REYNIERS Mathis','Armée','Droit','Secour','Social','Bio','3e4');
INSERT INTO Student VALUES(3426,'SOULAGES Antoine','Archi','Informatique','Aéro','Industrie','Droit','3e4');
INSERT INTO Student VALUES(3427,'THEROND Anaïs','Armée','Informatique','Immo-Commerce','Archi','Droit','3e4');
INSERT INTO Student VALUES(3428,'THULAU Mathéo','LycéesP','Armée','Artisant','Secour','Transport','3e4');
INSERT INTO Student VALUES(3429,'TORREILLES Owen','Véto','Armée','Secour','Auto','Aéro','3e4');
INSERT INTO Student VALUES(3500,'AGOLLI Einri','Véto','ParaMedic','Social','Environ','Bio','3e5');
INSERT INTO Student VALUES(3501,'AKAYOUSSE Ines','Immo-Commerce','Banque','Droit','Aéro','Medic','3e5');
INSERT INTO Student VALUES(3502,'BELKAIOUS Wisseme','Archi','ArtEvent','Artisant','Medic','Droit','3e5');
INSERT INTO Student VALUES(3503,'BERTELLI Anouk','Bio','Social','Véto','Aéro','ArtEvent','3e5');
INSERT INTO Student VALUES(3504,'BLEUBAR Baptiste','Droit','Archi','Armée','Banque','Medic','3e5');
INSERT INTO Student VALUES(3505,'CALMETTES Lara','Armée','Droit','Medic','Secour','Immo-Commerce','3e5');
INSERT INTO Student VALUES(3506,'CAMELATO Cyril','Archi','Droit','Armée','Banque','Secour','3e5');
INSERT INTO Student VALUES(3507,'CASALS Louise','Droit','Auto','Armée','Immo-Commerce','Archi','3e5');
INSERT INTO Student VALUES(3508,'CAYZAC Quentin','Auto','LycéesP','Aéro','Bio','Archi','3e5');
INSERT INTO Student VALUES(3509,'CHENE Viktor','Informatique','Armée','Immo-Commerce','Auto','Archi','3e5');
INSERT INTO Student VALUES(3510,'COSTES Louis','Secour','Transport','Medic','Bio','Archi','3e5');
INSERT INTO Student VALUES(3511,'COVILLERS Vincent','Informatique','Banque','Droit','Véto','Industrie','3e5');
INSERT INTO Student VALUES(3512,'DAUMAS Shana','Armée','Transport','Bio','Artisant','Banque','3e5');
INSERT INTO Student VALUES(3513,'DEZZI Romain','LycéesP','Armée','Aéro','ArtEvent','Industrie','3e5');
INSERT INTO Student VALUES(3514,'DIEU Vadim','Medic','Secour','Archi','Informatique','Droit','3e5');
INSERT INTO Student VALUES(3515,'DJELLOUL Yesmine','Medic','Bio','Aéro','Informatique','Archi','3e5');
INSERT INTO Student VALUES(3516,'DURAND Liya','Droit','Archi','ArtEvent','Secour','Transport','3e5');
INSERT INTO Student VALUES(3517,'GOUSSET Margot','Armée','Droit','Medic','Secour','Immo-Commerce','3e5');
INSERT INTO Student VALUES(3518,'HERNANDEZ Maël','Informatique','Immo-Commerce','Industrie','Banque','Artisant','3e5');
INSERT INTO Student VALUES(3519,'LOUNAS Lilou','ArtEvent','Informatique','Véto','Environ','Bio','3e5');
INSERT INTO Student VALUES(3520,'MALACHE Imrane','Informatique','Aéro','Industrie','Social','Armée','3e5');
INSERT INTO Student VALUES(3521,'MARTIN-PRIÉ Maxime','Secour','Armée','Droit','Archi','Immo-Commerce','3e5');
INSERT INTO Student VALUES(3522,'MARTY Thibault','Archi','Immo-Commerce','Droit','Auto','Banque','3e5');
INSERT INTO Student VALUES(3523,'OBERLAND Lisa','Medic','Banque','Droit','Immo-Commerce','ArtEvent','3e5');
INSERT INTO Student VALUES(3524,'POUEYTES-SEGURA Gaël','Medic','Secour','Aéro','Droit','Journalisme','3e5');
INSERT INTO Student VALUES(3525,'ROSA Sophie','ParaMedic','Artisant','Social','ArtEvent','Droit','3e5');
INSERT INTO Student VALUES(3526,'ROUVIERE--COMBES Gabrielle','Armée','Medic','Journalisme','Secour','Droit','3e5');
INSERT INTO Student VALUES(3527,'SCHIAVON Clara','Immo-Commerce','Secour','Medic','Droit','Bio','3e5');
INSERT INTO Student VALUES(3528,'TARDIEU-WALKER Lowan','Archi','Immo-Commerce','Banque','Bio','Medic','3e5');
INSERT INTO Student VALUES(3529,'TESTE Bastien','Armée','Aéro','Banque','Auto','Transport','3e5');
INSERT INTO Student VALUES(3600,'ALBERT--MORLET Oscar','Archi','Secour','Aéro','Véto','Armée','3e6');
INSERT INTO Student VALUES(3601,'BENMOKRANE Nelya','Droit','Immo-Commerce','Medic','Artisant','Social','3e6');
INSERT INTO Student VALUES(3602,'BERNARD Loris','Secour','Archi','Auto','Armée','Informatique','3e6');
INSERT INTO Student VALUES(3603,'BONZOM Mathys','Armée','Secour','Informatique','Banque','Droit','3e6');
INSERT INTO Student VALUES(3604,'CLAVE BURON Yoan','Secour','Archi','Armée','Immo-Commerce','Industrie','3e6');
INSERT INTO Student VALUES(3605,'DAGUERRE Niels','Armée','Secour','Droit','Medic','Banque','3e6');
INSERT INTO Student VALUES(3606,'DAVID Sacha','LycéesP','ArtEvent','Immo-Commerce','Auto','Secour','3e6');
INSERT INTO Student VALUES(3607,'EL BOUSTANI Adam','Secour','Armée','ArtEvent','Industrie','Journalisme','3e6');
INSERT INTO Student VALUES(3608,'EXPOSITO VIDAL Lucian','Informatique','Artisant','Auto','Archi','Armée','3e6');
INSERT INTO Student VALUES(3609,'GOUTORBE Léo','Aéro','Bio','Archi','Droit','Immo-Commerce','3e6');
INSERT INTO Student VALUES(3610,'HALBWAX Inaya','Armée','Véto','Transport','ParaMedic','Artisant','3e6');
INSERT INTO Student VALUES(3611,'ISIK Savana','Immo-Commerce','Archi','Droit','Medic','ArtEvent','3e6');
INSERT INTO Student VALUES(3612,'KETROUSSI Saliha','Immo-Commerce','ArtEvent','ParaMedic','Banque','Journalisme','3e6');
INSERT INTO Student VALUES(3613,'LAMBERT Nolan','Informatique','Industrie','ParaMedic','Secour','Armée','3e6');
INSERT INTO Student VALUES(3614,'MAOUAD Anouk','Journalisme','Secour','Droit','Armée','Social','3e6');
INSERT INTO Student VALUES(3615,'MARIUZZO Quentin','Immo-Commerce','Bio','Banque','Journalisme','ArtEvent','3e6');
INSERT INTO Student VALUES(3616,'MARQUE Louise','Informatique','Journalisme','ArtEvent','Artisant','Droit','3e6');
INSERT INTO Student VALUES(3617,'MASSON Marie','Archi','ParaMedic','Banque','Informatique','Bio','3e6');
INSERT INTO Student VALUES(3618,'MAZERON Noah','Droit','Armée','Transport','Informatique','Archi','3e6');
INSERT INTO Student VALUES(3619,'MOIZIARD Lilwenn','Véto','ArtEvent','Social','Artisant','Journalisme','3e6');
INSERT INTO Student VALUES(3620,'NETO MOTA Eduardo','Archi','Artisant','Auto','LycéesP','Transport','3e6');
INSERT INTO Student VALUES(3621,'NEVES-PISCO LEFEBVRE Olyana','Véto','ParaMedic','Medic','Artisant','Armée','3e6');
INSERT INTO Student VALUES(3622,'OLKAMA Aymen','Aéro','Immo-Commerce','Informatique','Transport','Medic','3e6');
INSERT INTO Student VALUES(3623,'PICRON Clément','Auto','Immo-Commerce','Secour','LycéesP','Transport','3e6');
INSERT INTO Student VALUES(3624,'PONS Aimy','ArtEvent','Immo-Commerce','ParaMedic','Droit','Social','3e6');
INSERT INTO Student VALUES(3625,'ROUXEL PRUNIER Paul','Journalisme','Bio','Environ','ParaMedic','Armée','3e6');
INSERT INTO Student VALUES(3626,'SEGALA Clément','Medic','Auto','Banque','LycéesP','Archi','3e6');
INSERT INTO Student VALUES(3627,'TAISOUMOV Amina','ArtEvent','Artisant','Journalisme','Informatique','Environ','3e6');
INSERT INTO Student VALUES(3628,'WEAH CAPELLE Kemi','Droit','Journalisme','ArtEvent','Archi','ParaMedic','3e6');
INSERT INTO Student VALUES(3629,'ZANDERIGO Carla','Medic','Artisant','Armée','Secour','Droit','3e6');
INSERT INTO Student VALUES(3700,'AGUILAR Léandro','Immo-Commerce','LycéesP','ArtEvent','Social','Aéro','3e7');
INSERT INTO Student VALUES(3701,'AHMED OUENZAR Ayoub','Medic','Véto','Auto','Aéro','Armée','3e7');
INSERT INTO Student VALUES(3702,'AKHALOUF Hana','Medic','Bio','Aéro','Journalisme','Armée','3e7');
INSERT INTO Student VALUES(3703,'AMSSAAF Meissane','Medic','Aéro','Journalisme','Armée','Secour','3e7');
INSERT INTO Student VALUES(3704,'BALAT Gabriel','Immo-Commerce','Aéro','LycéesP','Auto','Secour','3e7');
INSERT INTO Student VALUES(3705,'BRUTE-GRADEL Keyt-Eenayah','Banque','Immo-Commerce','ArtEvent','Auto','Informatique','3e7');
INSERT INTO Student VALUES(3706,'BURDILLAT Abbygaëlle','Droit','ParaMedic','Banque','Social','Véto','3e7');
INSERT INTO Student VALUES(3707,'DEBACQ Clara','Droit','Medic','Journalisme','Immo-Commerce','Bio','3e7');
INSERT INTO Student VALUES(3708,'DEMIR Kassidy','ArtEvent','Medic','Auto','Journalisme','Droit','3e7');
INSERT INTO Student VALUES(3709,'DURIGON Liana','Journalisme','Medic','Immo-Commerce','Artisant','Archi','3e7');
INSERT INTO Student VALUES(3710,'FEING-KWONG-CHAN Benjamin','Informatique','Industrie','Bio','LycéesP','Secour','3e7');
INSERT INTO Student VALUES(3711,'FOURNIÉ Tom','Droit','ArtEvent','Banque','Armée','Archi','3e7');
INSERT INTO Student VALUES(3712,'GUIBERT Madeleine','Bio','Medic','Aéro','Archi','Transport','3e7');
INSERT INTO Student VALUES(3713,'HEULOT Iléna','Véto','Medic','ParaMedic','Bio','Environ','3e7');
INSERT INTO Student VALUES(3714,'HOURCADE ABELLAN Eloan','Aéro','Environ','Bio','Informatique','Archi','3e7');
INSERT INTO Student VALUES(3715,'HYBOIS Arthur','Secour','Immo-Commerce','Archi','Environ','Journalisme','3e7');
INSERT INTO Student VALUES(3716,'ID YASSINE Jawden','Banque','Archi','Industrie','Social','Immo-Commerce','3e7');
INSERT INTO Student VALUES(3717,'INFANTE Julia','Archi','Journalisme','Aéro','Environ','Droit','3e7');
INSERT INTO Student VALUES(3718,'JEULAND Camille','Immo-Commerce','Aéro','LycéesP','Auto','Secour','3e7');
INSERT INTO Student VALUES(3719,'LOISEAU Gabin','Bio','Archi','Immo-Commerce','Aéro','Informatique','3e7');
INSERT INTO Student VALUES(3720,'LORVELLEC--WOLNY Emma','Secour','Armée','Droit','ArtEvent','Immo-Commerce','3e7');
INSERT INTO Student VALUES(3721,'LOUEY Emmy','ArtEvent','Droit','Journalisme','Véto','Informatique','3e7');
INSERT INTO Student VALUES(3722,'MEHBALI Salaheddine','Informatique','Immo-Commerce','Secour','Transport','Social','3e7');
INSERT INTO Student VALUES(3723,'MENANT-RENARD Leia','ArtEvent','Droit','Journalisme','Archi','Immo-Commerce','3e7');
INSERT INTO Student VALUES(3724,'NIGOUL Clélia','Artisant','Banque','Immo-Commerce','Archi','Droit','3e7');
INSERT INTO Student VALUES(3725,'OURLIAC Louise','Medic','Véto','Droit','Social','Journalisme','3e7');
INSERT INTO Student VALUES(3726,'SEXTIUS Antoine','Immo-Commerce','Droit','Banque','Archi','Journalisme','3e7');
INSERT INTO Student VALUES(3727,'TORRES Mahina','Archi','Immo-Commerce','Banque','Droit','Aéro','3e7');
INSERT INTO Student VALUES(3728,'ZABALZA Noé','Immo-Commerce','Aéro','Informatique','ArtEvent','Auto','3e7');
INSERT INTO Student VALUES(3729,'ZAWIEJA Héloïse','Véto','Social','Armée','LycéesP','Transport','3e7');
INSERT INTO Student VALUES(3800,'AMRI Wassim','Armée','Banque','Immo-Commerce','Archi','Secour','3e8');
INSERT INTO Student VALUES(3801,'BAILLY PUJOL Margaux','Journalisme','Artisant','ArtEvent','Archi','Droit','3e8');
INSERT INTO Student VALUES(3802,'BENBOUFELDJA Lina','Medic','Droit','Immo-Commerce','Banque','ParaMedic','3e8');
INSERT INTO Student VALUES(3803,'BINETEAU Zélie','Social','ArtEvent','Secour','Immo-Commerce','Journalisme','3e8');
INSERT INTO Student VALUES(3804,'BISMUTH-KIMPE Erine','Véto','Bio','Medic','ParaMedic','Social','3e8');
INSERT INTO Student VALUES(3805,'BLANC Chloé','Medic','Immo-Commerce','Droit','Artisant','Environ','3e8');
INSERT INTO Student VALUES(3806,'BOURGOIN Méziane','Auto','Armée','Secour','Environ','Transport','3e8');
INSERT INTO Student VALUES(3807,'CATELAIN--CHAPALAIN Chad','Armée','Immo-Commerce','ArtEvent','Industrie','Auto','3e8');
INSERT INTO Student VALUES(3808,'DAURE Ninon','Medic','Secour','Bio','Armée','Archi','3e8');
INSERT INTO Student VALUES(3809,'DE CRUZEL Maxime','Immo-Commerce','Transport','Informatique','Armée','Droit','3e8');
INSERT INTO Student VALUES(3810,'DELPECH Léa','Immo-Commerce','Banque','Droit','Véto','Industrie','3e8');
INSERT INTO Student VALUES(3811,'DUFRECHOU Nathan','Banque','Immo-Commerce','ArtEvent','Informatique','Industrie','3e8');
INSERT INTO Student VALUES(3812,'DUPUY Guilhem','Aéro','Informatique','Banque','Immo-Commerce','Auto','3e8');
INSERT INTO Student VALUES(3813,'ERNEST Quentin','Industrie','Aéro','Secour','Banque','Environ','3e8');
INSERT INTO Student VALUES(3814,'FOUR Marlon','Droit','Banque','Immo-Commerce','Archi','Informatique','3e8');
INSERT INTO Student VALUES(3815,'GENICOT Amandine','Archi','Artisant','ArtEvent','Immo-Commerce','Droit','3e8');
INSERT INTO Student VALUES(3816,'HUYNH Tomy','Informatique','Immo-Commerce','Droit','Archi','Banque','3e8');
INSERT INTO Student VALUES(3817,'MARÉ Nolann','Auto','LycéesP','Secour','Armée','Medic','3e8');
INSERT INTO Student VALUES(3818,'MASTELLOTTO Gioventino','Immo-Commerce','Banque','Secour','Droit','Informatique','3e8');
INSERT INTO Student VALUES(3819,'MAZIERES-RAFFALLI Lino','Medic','Immo-Commerce','ArtEvent','Droit','Transport','3e8');
INSERT INTO Student VALUES(3820,'MEZIANI Lana','Immo-Commerce','ArtEvent','Armée','Informatique','Aéro','3e8');
INSERT INTO Student VALUES(3821,'PERTEL Elisa','Artisant','Bio','ParaMedic','ArtEvent','Social','3e8');
INSERT INTO Student VALUES(3822,'RENIMEL Arthur','Archi','Transport','ArtEvent','Secour','Immo-Commerce','3e8');
INSERT INTO Student VALUES(3823,'SADOULAYEV Roustam','Banque','Droit','Social','LycéesP','Secour','3e8');
INSERT INTO Student VALUES(3824,'SPIRE Alycia','Social','ParaMedic','Artisant','Secour','Bio','3e8');
INSERT INTO Student VALUES(3825,'VERDOUX Maël','Immo-Commerce','Armée','ParaMedic','Medic','Droit','3e8');
INSERT INTO Student VALUES(3826,'VERTUEUX - PICRODE Morgan','Immo-Commerce','Secour','Armée','Artisant','Auto','3e8');
INSERT INTO Student VALUES(3827,'VIDAL Loïc','Transport','Auto','Aéro','Armée','Secour','3e8');
INSERT INTO Student VALUES(3828,'VIDAL Maxime','Archi','Informatique','Aéro','Industrie','Environ','3e8');
INSERT INTO Student VALUES(3829,'ZOUB Christina','Medic','Véto','ParaMedic','Bio','Droit','3e8');
CREATE TABLE Timetable (groupe_id TEXT, slot0 TEXT, slot1 TEXT, slot2 TEXT, slot3 TEXT, slot4 TEXT, slot5 TEXT);
INSERT INTO Timetable VALUES('3100','8-0','3-0','9-3','6-2','5-4','7-0');
INSERT INTO Timetable VALUES('3101','3-0','19-0','7-0','11-3','6-1','5-5');
INSERT INTO Timetable VALUES('3102','9-0','16-0','10-0','11-0','6-1','3-1');
INSERT INTO Timetable VALUES('3103','17-0','16-2','8-0','9-3','5-5','3-0');
INSERT INTO Timetable VALUES('3104','10-2','11-4','16-0','5-2','12-0','9-4');
INSERT INTO Timetable VALUES('3105','6-1','11-1','10-0','3-1','5-1','12-0');
INSERT INTO Timetable VALUES('3106','9-1','16-0','8-2','10-0','5-2','15-0');
INSERT INTO Timetable VALUES('3107','9-2','16-2','20-0','6-0','11-4','5-3');
INSERT INTO Timetable VALUES('3108','11-3','13-0','3-0','10-1','5-0','9-3');
INSERT INTO Timetable VALUES('3109','1-0','2-1','3-0','5-3','16-3','9-5');
INSERT INTO Timetable VALUES('3110','1-1','18-0','9-1','4-0','17-0','2-1');
INSERT INTO Timetable VALUES('3111','10-0','5-3','18-2','8-1','9-4','15-1');
INSERT INTO Timetable VALUES('3112','8-1','5-0','6-1','9-4','4-0','18-1');
INSERT INTO Timetable VALUES('3113','7-0','20-0','3-0','6-3','8-1','5-4');
INSERT INTO Timetable VALUES('3114','14-0','9-2','21-1','2-0','8-1','5-1');
INSERT INTO Timetable VALUES('3115','4-0','5-4','16-2','9-3','17-2','19-0');
INSERT INTO Timetable VALUES('3116','8-2','9-3','10-1','16-3','6-0','5-2');
INSERT INTO Timetable VALUES('3117','5-3','6-0','9-3','17-0','20-0','14-1');
INSERT INTO Timetable VALUES('3118','13-1','21-0','17-1','8-1','6-0','20-0');
INSERT INTO Timetable VALUES('3119','7-0','11-1','16-0','8-0','12-0','5-0');
INSERT INTO Timetable VALUES('3120','7-0','11-1','9-4','12-0','10-1','16-3');
INSERT INTO Timetable VALUES('3121','8-3','11-2','5-5','6-1','9-5','17-0');
INSERT INTO Timetable VALUES('3122','18-1','16-3','15-0','14-2','8-2','17-2');
INSERT INTO Timetable VALUES('3123','9-4','12-0','10-2','5-0','6-0','17-1');
INSERT INTO Timetable VALUES('3124','11-4','5-0','13-1','9-5','8-0','16-1');
INSERT INTO Timetable VALUES('3125','11-1','9-5','18-0','7-0','17-1','16-2');
INSERT INTO Timetable VALUES('3126','16-2','14-1','5-4','18-2','20-0','2-0');
INSERT INTO Timetable VALUES('3127','16-3','14-2','1-1','5-3','19-0','10-2');
INSERT INTO Timetable VALUES('3200','18-2','9-4','17-0','15-0','21-1','1-0');
INSERT INTO Timetable VALUES('3201','1-2','2-0','13-0','4-0','14-1','16-0');
INSERT INTO Timetable VALUES('3202','10-1','11-2','9-3','19-1','8-2','18-2');
INSERT INTO Timetable VALUES('3203','1-0','9-3','11-0','10-1','19-1','6-3');
INSERT INTO Timetable VALUES('3204','14-1','6-3','16-1','2-1','8-0','21-1');
INSERT INTO Timetable VALUES('3205','10-2','17-2','7-0','1-1','8-3','19-2');
INSERT INTO Timetable VALUES('3206','1-1','14-0','5-5','4-0','8-0','2-1');
INSERT INTO Timetable VALUES('3207','20-0','19-1','1-0','5-4','11-3','21-0');
INSERT INTO Timetable VALUES('3208','1-2','9-5','16-1','6-2','13-0','10-1');
INSERT INTO Timetable VALUES('3209','8-0','2-1','1-2','5-5','16-2','19-1');
INSERT INTO Timetable VALUES('3210','4-0','5-3','8-2','17-1','15-0','11-3');
INSERT INTO Timetable VALUES('3211','18-0','13-1','1-1','16-1','11-1','3-1');
INSERT INTO Timetable VALUES('3212','10-0','9-0','11-2','16-0','5-3','13-0');
INSERT INTO Timetable VALUES('3213','12-0','17-0','10-2','6-0','1-2','8-3');
INSERT INTO Timetable VALUES('3214','9-3','19-0','2-0','5-1','11-2','6-2');
INSERT INTO Timetable VALUES('3215','21-0','11-0','8-2','1-2','7-0','13-1');
INSERT INTO Timetable VALUES('3216','20-0','5-4','9-0','17-2','11-0','10-0');
INSERT INTO Timetable VALUES('3217','6-0','9-2','8-3','13-0','14-0','11-4');
INSERT INTO Timetable VALUES('3218','21-1','14-1','3-1','5-2','20-0','11-1');
INSERT INTO Timetable VALUES('3219','14-2','5-5','8-0','17-1','9-2','10-2');
INSERT INTO Timetable VALUES('3220','18-1','19-1','14-0','9-0','6-2','11-2');
INSERT INTO Timetable VALUES('3221','1-0','2-0','5-1','10-2','18-2','11-0');
INSERT INTO Timetable VALUES('3222','10-1','1-2','14-0','5-0','9-3','2-0');
INSERT INTO Timetable VALUES('3223','13-0','14-2','9-5','1-0','8-1','3-0');
INSERT INTO Timetable VALUES('3224','9-5','11-3','10-0','17-0','5-4','1-0');
INSERT INTO Timetable VALUES('3225','14-0','16-3','18-2','15-0','10-2','5-3');
INSERT INTO Timetable VALUES('3226','11-2','5-5','19-0','3-0','6-1','9-2');
INSERT INTO Timetable VALUES('3227','6-3','5-1','9-5','8-3','16-2','1-1');
INSERT INTO Timetable VALUES('3228','13-1','1-0','11-3','6-1','5-5','10-0');
INSERT INTO Timetable VALUES('3229','8-1','6-2','16-2','9-1','10-2','5-4');
INSERT INTO Timetable VALUES('3300','8-2','17-1','4-0','21-0','1-0','5-5');
INSERT INTO Timetable VALUES('3301','11-4','12-0','14-1','19-1','5-1','10-1');
INSERT INTO Timetable VALUES('3302','19-2','7-0','9-1','11-3','6-3','5-1');
INSERT INTO Timetable VALUES('3303','10-2','18-1','9-1','20-0','5-2','16-2');
INSERT INTO Timetable VALUES('3304','6-2','17-0','2-1','19-0','13-1','5-2');
INSERT INTO Timetable VALUES('3305','11-1','4-0','5-2','9-0','14-0','16-1');
INSERT INTO Timetable VALUES('3306','19-1','10-2','3-1','11-4','21-0','5-0');
INSERT INTO Timetable VALUES('3307','10-0','9-1','5-0','2-0','1-1','18-1');
INSERT INTO Timetable VALUES('3308','10-1','9-2','11-1','5-3','8-2','18-2');
INSERT INTO Timetable VALUES('3309','13-0','14-0','10-1','11-2','5-0','1-2');
INSERT INTO Timetable VALUES('3310','8-3','6-1','9-2','11-4','2-0','19-0');
INSERT INTO Timetable VALUES('3311','3-1','11-0','17-0','5-4','8-3','9-1');
INSERT INTO Timetable VALUES('3312','5-4','21-1','4-0','9-1','1-2','18-0');
INSERT INTO Timetable VALUES('3313','8-0','5-0','6-0','14-0','9-5','21-1');
INSERT INTO Timetable VALUES('3314','16-0','10-0','11-0','5-4','14-1','9-4');
INSERT INTO Timetable VALUES('3315','3-0','17-1','6-3','8-3','9-1','19-2');
INSERT INTO Timetable VALUES('3316','6-1','8-2','17-2','11-1','12-0','10-2');
INSERT INTO Timetable VALUES('3317','4-0','21-1','17-2','13-1','1-1','9-3');
INSERT INTO Timetable VALUES('3318','8-1','9-4','6-1','5-5','17-0','21-0');
INSERT INTO Timetable VALUES('3319','18-2','11-3','14-2','8-1','9-4','17-1');
INSERT INTO Timetable VALUES('3320','18-0','3-1','13-0','10-2','14-2','9-5');
INSERT INTO Timetable VALUES('3321','11-0','19-0','3-0','5-5','16-3','9-0');
INSERT INTO Timetable VALUES('3322','8-2','18-0','6-0','14-0','17-2','15-0');
INSERT INTO Timetable VALUES('3323','6-0','18-1','8-3','5-1','14-2','1-0');
INSERT INTO Timetable VALUES('3324','6-3','5-3','20-0','2-1','17-1','1-1');
INSERT INTO Timetable VALUES('3325','17-2','15-0','8-3','5-2','19-0','20-0');
INSERT INTO Timetable VALUES('3326','5-5','9-4','17-1','10-1','6-2','8-2');
INSERT INTO Timetable VALUES('3327','14-1','18-0','15-1','10-2','21-0','1-2');
INSERT INTO Timetable VALUES('3328','14-2','9-3','18-0','8-2','15-1','16-0');
INSERT INTO Timetable VALUES('3329','9-0','5-4','19-2','7-0','3-0','6-1');
INSERT INTO Timetable VALUES('3400','5-4','8-0','9-2','17-0','6-1','15-1');
INSERT INTO Timetable VALUES('3401','1-1','2-1','11-4','5-0','15-0','12-0');
INSERT INTO Timetable VALUES('3402','20-0','16-1','11-1','7-0','13-1','8-1');
INSERT INTO Timetable VALUES('3403','16-0','11-0','19-1','10-0','8-3','13-1');
INSERT INTO Timetable VALUES('3404','9-1','11-4','5-3','20-0','1-0','8-0');
INSERT INTO Timetable VALUES('3405','9-2','16-0','5-3','17-2','1-1','13-0');
INSERT INTO Timetable VALUES('3406','8-3','2-0','5-4','16-3','4-0','6-3');
INSERT INTO Timetable VALUES('3407','15-0','17-2','18-1','19-0','16-0','8-1');
INSERT INTO Timetable VALUES('3408','2-0','1-1','14-2','17-2','16-1','11-4');
INSERT INTO Timetable VALUES('3409','9-4','8-2','16-3','10-2','6-3','17-0');
INSERT INTO Timetable VALUES('3410','10-2','21-0','14-1','1-0','18-0','6-0');
INSERT INTO Timetable VALUES('3411','11-0','10-1','2-0','15-0','19-2','8-2');
INSERT INTO Timetable VALUES('3412','6-2','19-2','5-5','20-0','3-1','1-1');
INSERT INTO Timetable VALUES('3413','8-0','21-0','5-1','16-2','2-1','6-2');
INSERT INTO Timetable VALUES('3414','21-0','2-1','5-2','16-0','15-1','14-0');
INSERT INTO Timetable VALUES('3415','14-0','18-2','5-0','17-1','6-2','20-0');
INSERT INTO Timetable VALUES('3416','5-5','6-1','9-3','21-1','14-0','11-3');
INSERT INTO Timetable VALUES('3417','14-1','5-4','12-0','19-2','4-0','16-3');
INSERT INTO Timetable VALUES('3418','18-1','6-0','9-0','14-1','21-1','17-2');
INSERT INTO Timetable VALUES('3419','2-1','14-2','17-0','1-1','11-3','19-1');
INSERT INTO Timetable VALUES('3420','15-0','14-0','18-1','21-0','10-1','6-1');
INSERT INTO Timetable VALUES('3421','9-3','10-2','11-1','20-0','19-1','14-1');
INSERT INTO Timetable VALUES('3422','19-1','11-3','9-4','10-0','13-0','8-3');
INSERT INTO Timetable VALUES('3423','8-1','6-2','17-2','19-1','2-0','10-0');
INSERT INTO Timetable VALUES('3424','9-0','20-0','8-0','11-3','14-1','3-1');
INSERT INTO Timetable VALUES('3425','1-2','9-3','19-2','16-2','2-1','11-1');
INSERT INTO Timetable VALUES('3426','15-1','8-1','18-2','14-1','9-0','11-2');
INSERT INTO Timetable VALUES('3427','1-0','18-2','8-1','9-2','6-3','11-0');
INSERT INTO Timetable VALUES('3428','21-1','1-2','3-1','13-1','11-4','5-2');
INSERT INTO Timetable VALUES('3429','12-0','5-5','1-2','11-4','2-0','14-0');
INSERT INTO Timetable VALUES('3500','17-2','19-1','11-3','12-0','16-0','3-0');
INSERT INTO Timetable VALUES('3501','5-1','6-0','9-4','16-1','14-0','18-0');
INSERT INTO Timetable VALUES('3502','8-2','3-0','17-1','9-4','7-0','10-1');
INSERT INTO Timetable VALUES('3503','16-1','19-2','15-0','11-2','14-2','12-0');
INSERT INTO Timetable VALUES('3504','9-3','5-5','8-3','1-2','11-1','18-1');
INSERT INTO Timetable VALUES('3505','1-1','9-5','21-0','11-1','10-0','6-0');
INSERT INTO Timetable VALUES('3506','5-0','8-2','9-2','1-2','11-2','19-0');
INSERT INTO Timetable VALUES('3507','9-5','5-1','4-0','1-0','6-0','8-0');
INSERT INTO Timetable VALUES('3508','4-0','21-1','16-0','14-2','11-0','8-0');
INSERT INTO Timetable VALUES('3509','18-2','5-2','1-0','6-3','9-3','8-1');
INSERT INTO Timetable VALUES('3510','2-0','13-1','16-3','15-1','10-2','8-2');
INSERT INTO Timetable VALUES('3511','5-2','18-1','9-5','15-1','21-1','17-2');
INSERT INTO Timetable VALUES('3512','16-1','1-0','13-0','3-0','5-3','9-2');
INSERT INTO Timetable VALUES('3513','21-0','15-1','1-1','14-0','5-3','9-3');
INSERT INTO Timetable VALUES('3514','10-0','8-3','2-1','18-0','9-2','5-4');
INSERT INTO Timetable VALUES('3515','16-1','10-0','18-2','14-0','5-4','8-3');
INSERT INTO Timetable VALUES('3516','9-0','8-3','13-1','11-0','5-5','14-0');
INSERT INTO Timetable VALUES('3517','1-2','9-0','21-1','3-1','10-0','6-2');
INSERT INTO Timetable VALUES('3518','18-0','15-1','5-1','6-0','3-1','9-1');
INSERT INTO Timetable VALUES('3519','17-1','7-0','18-0','16-0','5-1','12-0');
INSERT INTO Timetable VALUES('3520','19-2','18-2','14-2','15-1','5-2','9-4');
INSERT INTO Timetable VALUES('3521','2-1','9-5','1-2','8-0','5-0','6-3');
INSERT INTO Timetable VALUES('3522','9-5','8-3','6-2','5-1','16-0','14-2');
INSERT INTO Timetable VALUES('3523','5-0','10-1','9-0','16-1','15-1','6-1');
INSERT INTO Timetable VALUES('3524','10-1','5-0','2-1','9-4','14-2','16-1');
INSERT INTO Timetable VALUES('3525','11-3','3-1','19-1','9-3','18-1','5-5');
INSERT INTO Timetable VALUES('3526','14-0','1-1','19-1','10-1','9-1','5-1');
INSERT INTO Timetable VALUES('3527','6-1','16-3','2-0','9-5','10-1','5-3');
INSERT INTO Timetable VALUES('3528','5-2','8-0','6-1','16-1','9-1','18-2');
INSERT INTO Timetable VALUES('3529','5-0','1-2','14-1','13-0','9-2','19-1');
INSERT INTO Timetable VALUES('3600','8-3','16-1','2-0','14-2','9-4','5-0');
INSERT INTO Timetable VALUES('3601','9-1','19-2','6-3','3-1','17-1','10-0');
INSERT INTO Timetable VALUES('3602','2-0','8-0','16-2','18-0','1-2','4-0');
INSERT INTO Timetable VALUES('3603','15-0','1-0','5-2','2-0','18-1','9-0');
INSERT INTO Timetable VALUES('3604','2-1','15-0','8-1','1-1','9-5','6-2');
INSERT INTO Timetable VALUES('3605','16-1','1-1','5-3','2-1','9-3','17-1');
INSERT INTO Timetable VALUES('3606','21-1','17-0','15-1','6-2','7-0','9-5');
INSERT INTO Timetable VALUES('3607','2-0','15-1','1-0','5-3','9-0','17-0');
INSERT INTO Timetable VALUES('3608','3-1','18-0','11-2','8-1','4-0','9-0');
INSERT INTO Timetable VALUES('3609','16-2','14-1','8-1','9-1','17-0','15-0');
INSERT INTO Timetable VALUES('3610','12-0','1-2','13-1','11-1','3-0','16-0');
INSERT INTO Timetable VALUES('3611','6-0','9-0','8-2','5-4','16-3','13-1');
INSERT INTO Timetable VALUES('3612','6-3','5-1','11-3','7-0','17-2','16-2');
INSERT INTO Timetable VALUES('3613','15-0','18-1','11-4','5-5','19-0','16-3');
INSERT INTO Timetable VALUES('3614','19-2','20-0','9-1','2-0','1-0','21-0');
INSERT INTO Timetable VALUES('3615','6-2','16-1','5-4','17-2','15-0','21-1');
INSERT INTO Timetable VALUES('3616','18-1','3-1','5-3','9-5','20-0','19-2');
INSERT INTO Timetable VALUES('3617','11-2','5-1','8-0','18-2','16-1','15-1');
INSERT INTO Timetable VALUES('3618','9-2','13-0','1-1','18-0','16-1','8-0');
INSERT INTO Timetable VALUES('3619','19-0','12-0','5-4','3-0','7-0','11-3');
INSERT INTO Timetable VALUES('3620','3-0','8-1','21-0','13-1','16-2','4-0');
INSERT INTO Timetable VALUES('3621','11-0','12-0','5-5','3-1','18-2','10-1');
INSERT INTO Timetable VALUES('3622','14-2','13-1','6-2','18-2','11-4','3-1');
INSERT INTO Timetable VALUES('3623','21-1','4-0','6-0','13-0','2-1','11-4');
INSERT INTO Timetable VALUES('3624','11-3','7-0','6-0','9-2','19-2','13-0');
INSERT INTO Timetable VALUES('3625','17-0','16-2','20-0','11-2','18-0','3-0');
INSERT INTO Timetable VALUES('3626','5-3','10-2','21-1','4-0','19-2','8-1');
INSERT INTO Timetable VALUES('3627','3-1','17-0','7-0','18-1','21-0','11-1');
INSERT INTO Timetable VALUES('3628','9-4','20-0','11-0','8-2','19-1','5-3');
INSERT INTO Timetable VALUES('3629','16-3','3-0','10-2','9-0','1-2','11-2');
INSERT INTO Timetable VALUES('3700','19-1','6-3','21-0','5-1','11-3','14-2');
INSERT INTO Timetable VALUES('3701','14-1','10-0','12-0','5-2','13-1','4-0');
INSERT INTO Timetable VALUES('3702','16-3','10-1','14-1','5-0','13-0','11-0');
INSERT INTO Timetable VALUES('3703','14-2','10-2','5-1','1-1','11-1','9-2');
INSERT INTO Timetable VALUES('3704','6-1','21-0','14-2','16-3','11-2','5-4');
INSERT INTO Timetable VALUES('3705','5-1','6-3','17-1','18-1','11-0','9-1');
INSERT INTO Timetable VALUES('3706','9-3','5-2','11-4','19-2','3-1','8-3');
INSERT INTO Timetable VALUES('3707','9-5','16-0','5-2','10-0','3-0','6-3');
INSERT INTO Timetable VALUES('3708','7-0','17-2','5-0','9-3','10-0','4-0');
INSERT INTO Timetable VALUES('3709','20-0','17-1','16-3','3-0','10-1','6-0');
INSERT INTO Timetable VALUES('3710','15-1','18-2','16-3','21-1','5-3','9-4');
INSERT INTO Timetable VALUES('3711','5-4','9-0','17-0','1-2','18-0','7-0');
INSERT INTO Timetable VALUES('3712','16-2','13-1','14-0','8-3','10-2','5-5');
INSERT INTO Timetable VALUES('3713','11-4','17-2','12-0','16-2','10-0','5-1');
INSERT INTO Timetable VALUES('3714','17-1','14-2','16-1','18-2','5-4','8-2');
INSERT INTO Timetable VALUES('3715','17-0','2-0','6-1','8-0','5-5','9-3');
INSERT INTO Timetable VALUES('3716','5-2','15-0','19-0','8-2','9-4','21-1');
INSERT INTO Timetable VALUES('3717','17-2','8-2','19-0','14-1','9-0','20-0');
INSERT INTO Timetable VALUES('3718','6-0','21-1','14-0','17-0','5-1','9-5');
INSERT INTO Timetable VALUES('3719','16-3','8-1','17-2','6-0','18-0','14-2');
INSERT INTO Timetable VALUES('3720','2-1','9-1','1-2','17-1','5-2','16-1');
INSERT INTO Timetable VALUES('3721','9-1','7-0','15-0','19-0','18-1','5-2');
INSERT INTO Timetable VALUES('3722','18-2','13-0','6-3','19-2','2-0','5-0');
INSERT INTO Timetable VALUES('3723','9-2','19-0','7-0','8-2','5-0','17-0');
INSERT INTO Timetable VALUES('3724','3-1','5-2','16-2','6-1','8-1','9-1');
INSERT INTO Timetable VALUES('3725','19-0','9-2','10-0','12-0','16-0','17-1');
INSERT INTO Timetable VALUES('3726','5-5','6-2','9-4','8-3','15-1','17-2');
INSERT INTO Timetable VALUES('3727','5-1','8-3','6-2','9-2','18-2','14-1');
INSERT INTO Timetable VALUES('3728','6-3','14-1','18-0','15-0','9-1','16-0');
INSERT INTO Timetable VALUES('3729','19-0','13-0','12-0','21-0','1-0','9-0');
INSERT INTO Timetable VALUES('3800','5-3','1-0','16-0','6-3','8-0','18-2');
INSERT INTO Timetable VALUES('3801','17-2','3-1','20-0','9-4','8-2','16-3');
INSERT INTO Timetable VALUES('3802','9-4','5-2','10-1','11-0','6-3','18-1');
INSERT INTO Timetable VALUES('3803','19-0','15-1','16-1','13-1','2-1','7-0');
INSERT INTO Timetable VALUES('3804','16-0','11-2','19-0','12-0','9-2','10-2');
INSERT INTO Timetable VALUES('3805','17-0','9-4','10-1','6-3','3-0','19-0');
INSERT INTO Timetable VALUES('3806','17-1','4-0','13-1','1-0','9-3','2-0');
INSERT INTO Timetable VALUES('3807','15-1','1-1','6-2','16-0','9-5','18-0');
INSERT INTO Timetable VALUES('3808','16-2','10-0','2-1','15-1','9-0','1-2');
INSERT INTO Timetable VALUES('3809','13-0','6-1','18-1','9-5','16-3','1-2');
INSERT INTO Timetable VALUES('3810','5-4','6-0','15-0','9-0','17-0','19-2');
INSERT INTO Timetable VALUES('3811','5-0','15-0','6-3','18-0','17-2','14-0');
INSERT INTO Timetable VALUES('3812','5-2','14-0','18-1','21-1','17-1','6-0');
INSERT INTO Timetable VALUES('3813','15-1','17-1','5-0','14-2','19-0','2-1');
INSERT INTO Timetable VALUES('3814','5-5','9-1','21-1','8-0','6-2','18-0');
INSERT INTO Timetable VALUES('3815','19-1','3-0','8-1','9-1','15-0','6-1');
INSERT INTO Timetable VALUES('3816','18-0','5-3','9-0','6-2','8-3','14-1');
INSERT INTO Timetable VALUES('3817','21-0','4-0','19-2','16-2','13-1','2-0');
INSERT INTO Timetable VALUES('3818','5-1','6-3','9-5','19-2','18-2','2-1');
INSERT INTO Timetable VALUES('3819','13-0','10-1','9-2','6-1','16-1','15-0');
INSERT INTO Timetable VALUES('3820','6-2','19-2','21-0','18-1','1-1','7-0');
INSERT INTO Timetable VALUES('3821','3-0','16-3','11-2','19-0','18-1','14-2');
INSERT INTO Timetable VALUES('3822','13-1','8-0','19-1','21-0','16-2','11-4');
INSERT INTO Timetable VALUES('3823','5-3','9-1','19-2','21-1','13-0','16-2');
INSERT INTO Timetable VALUES('3824','19-2','11-4','3-1','16-3','21-1','15-1');
INSERT INTO Timetable VALUES('3825','11-1','6-2','1-0','9-2','19-2','21-0');
INSERT INTO Timetable VALUES('3826','11-3','6-1','15-1','2-1','3-1','1-0');
INSERT INTO Timetable VALUES('3827','13-1','11-3','4-0','14-1','19-1','1-1');
INSERT INTO Timetable VALUES('3828','17-1','8-1','15-1','18-1','14-1','11-3');
INSERT INTO Timetable VALUES('3829','11-2','16-1','10-2','19-1','12-0','9-2');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('Catégorie',22);
INSERT INTO sqlite_sequence VALUES('Intervenants',86);
CREATE VIEW VIEW_nb_intervenants_confirm_per_categori AS SELECT categorie,
       count( * ) 
  FROM VIEW_Intervenants_Cat
 WHERE confirm IS NOT NULL
 GROUP BY categori;
CREATE VIEW VIEW_Intervenants_Cat AS SELECT 
Intervenants.id_timetable,
Intervenants.titre,
Intervenants.nom,
Intervenants.confirm,
Intervenants.salle,
Intervenants.categori,
Catégorie.categorie
  FROM Intervenants
       LEFT JOIN
       Catégorie ON (Intervenants.categori = Catégorie.id);
CREATE VIEW VIEW_CHECK_DOUBLON_CAT_VISITED AS WITH cat_visited AS (
    SELECT groupe_id,
           cat_S0
      FROM vIEW_TIMETABLE_CATEGORI
    UNION ALL
    SELECT groupe_id,
           cat_S1
      FROM vIEW_TIMETABLE_CATEGORI
    UNION ALL
    SELECT groupe_id,
           cat_S2
      FROM vIEW_TIMETABLE_CATEGORI
    UNION ALL
    SELECT groupe_id,
           cat_S3
      FROM vIEW_TIMETABLE_CATEGORI
    UNION ALL
    SELECT groupe_id,
           cat_S4
      FROM vIEW_TIMETABLE_CATEGORI
     ORDER BY groupe_id
), 

nb_visited_per_categori AS (
SELECT groupe_id,
       COUNT( * ) nb_visit_per_categori
  FROM cat_visited
 GROUP BY groupe_id,
          cat_S0
)

SELECT groupe_id FROM nb_visited_per_categori WHERE nb_visit_per_categori > 1;
CREATE VIEW VIEW_CHECK_DOUBLON_INTERV_VISITED AS WITH intervenant_visited AS (
    SELECT groupe_id,
           slot0 intervenant
      FROM Timetable
    UNION ALL
    SELECT groupe_id,
           slot1
      FROM Timetable
    UNION ALL
    SELECT groupe_id,
           slot2
      FROM Timetable
    UNION ALL
    SELECT groupe_id,
           slot3
      FROM Timetable
    UNION ALL
    SELECT groupe_id,
           slot4
      FROM Timetable
     ORDER BY groupe_id
), 

nb_visited_per_intervenant AS (
SELECT groupe_id,
       COUNT( * ) nb_visit_per_intervenant
  FROM intervenant_visited
 GROUP BY groupe_id,
          intervenant
)

SELECT groupe_id FROM nb_visited_per_intervenant WHERE nb_visit_per_intervenant > 1;
CREATE VIEW VIEW_TIMETABLE_CATEGORI AS SELECT
    A.groupe_id,
    (SELECT categori FROM Intervenants WHERE A.slot0 = Intervenants.id_timetable) cat_S0,
    (SELECT categori FROM Intervenants WHERE A.slot1 = Intervenants.id_timetable) cat_S1,
    (SELECT categori FROM Intervenants WHERE A.slot2 = Intervenants.id_timetable) cat_S2,
    (SELECT categori FROM Intervenants WHERE A.slot3 = Intervenants.id_timetable) cat_S3,
    (SELECT categori FROM Intervenants WHERE A.slot4 = Intervenants.id_timetable) cat_S4,
    (SELECT categori FROM Intervenants WHERE A.slot4 = Intervenants.id_timetable) cat_S5
FROM Timetable A;
CREATE VIEW VIEW_TIMETABLE AS SELECT 
    Student.classe,
    Student.id,
    Student.nom,
    Student.c1,
    Student.c2,
    Student.c3,
    Student.c4,
    Student.c5,
    (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot0) [Slot0 - nom], 
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot0) [Slot0 - titre],
    
    (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot1) [Slot1],  
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot1) [Slot1 - titre], 
    
    (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot2) [Slot2],   
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot2) [Slot2 - titre],
    
     (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot3) [Slot3],
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot3) [Slot3 - titre],
         
     (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot4) [Slot4],
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot4) [Slot4 - titre],                

     (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot5) [Slot5],
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot5) [Slot5 - titre]    

FROM Student
       LEFT JOIN
       Timetable ON (Student.id==Timetable.groupe_id)
 WHERE Student.id > 3000;
CREATE VIEW VIEW_TIMETABLE_DETAILS AS SELECT 
    Student.classe,
    Student.id,
    Student.nom,
    Student.c1,
    Student.c2,
    Student.c3,
    Student.c4,
    Student.c5,
    
    (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot0) || CHAR(13) || CHAR(10) ||
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot0) || CHAR(13) || CHAR(10) || 'Salle :' || 
    (SELECT salle FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot0) S0,

    (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot1) || CHAR(13) || CHAR(10) ||
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot1) || CHAR(13) || CHAR(10) || 'Salle :' || 
    (SELECT salle FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot1) S1,              
  
    (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot2) || CHAR(13) || CHAR(10) ||
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot2) || CHAR(13) || CHAR(10) || 'Salle :' || 
    (SELECT salle FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot2) S2,   

    (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot3) || CHAR(13) || CHAR(10) ||
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot3) || CHAR(13) || CHAR(10) || 'Salle :' || 
    (SELECT salle FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot3) S3,   

    (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot4) || CHAR(13) || CHAR(10) ||
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot4) || CHAR(13) || CHAR(10) || 'Salle :' || 
    (SELECT salle FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot4) S4,   

    (SELECT Nom FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot5) || CHAR(13) || CHAR(10) ||
    (SELECT Titre FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot5) || CHAR(13) || CHAR(10) || 'Salle :' || 
    (SELECT salle FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot5) S5   

FROM Student
       LEFT JOIN
       Timetable ON (Student.id==Timetable.groupe_id)
 WHERE Student.id > 3000;
CREATE VIEW VIEW_STUDENT_SATISFACTION AS WITH timetable_categories AS (
SELECT 
    Student.classe,
    Student.id,
    Student.nom,
    Student.c1,
    Student.c2,
    Student.c3,
    Student.c4,
    Student.c5,

    
    (SELECT categorie FROM Catégorie WHERE id = (SELECT categori FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot0)) s1,
    (SELECT categorie FROM Catégorie WHERE id = (SELECT categori FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot1)) s2,          
    (SELECT categorie FROM Catégorie WHERE id = (SELECT categori FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot2)) s3,
    (SELECT categorie FROM Catégorie WHERE id = (SELECT categori FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot3)) s4,    
    (SELECT categorie FROM Catégorie WHERE id = (SELECT categori FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot4)) s5,
    (SELECT categorie FROM Catégorie WHERE id = (SELECT categori FROM Intervenants WHERE Intervenants.id_timetable = Timetable.slot5)) s6
 
    
FROM Student
       LEFT JOIN
       Timetable ON (Student.id==Timetable.groupe_id)
 WHERE Student.id > 3000
 
)

SELECT 
    B.nom,
    B.c1,
    B.c2,
    B.c3,
    B.c4,
    B.c5,
    (B.c1 IN 
        (
            SELECT s1 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s2 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s3 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s4 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s5 FROM timetable_categories WHERE id == B.id            UNION
            SELECT s6 FROM timetable_categories WHERE id == B.id           
        )
    ) c1_visited,
    (B.c2 IN 
        (
            SELECT s1 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s2 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s3 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s4 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s5 FROM timetable_categories WHERE id == B.id            UNION
            SELECT s6 FROM timetable_categories WHERE id == B.id            
        )
    ) c2_visited,
    (B.c3 IN 
        (
            SELECT s1 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s2 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s3 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s4 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s5 FROM timetable_categories WHERE id == B.id            UNION
            SELECT s6 FROM timetable_categories WHERE id == B.id            
        )
    ) c3_visited,  
    (B.c4 IN 
        (
            SELECT s1 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s2 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s3 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s4 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s5 FROM timetable_categories WHERE id == B.id            UNION
            SELECT s6 FROM timetable_categories WHERE id == B.id            
        )
    ) c4_visited, 
    (B.c5 IN 
        (
            SELECT s1 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s2 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s3 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s4 FROM timetable_categories WHERE id == B.id            UNION 
            SELECT s5 FROM timetable_categories WHERE id == B.id            UNION
            SELECT s6 FROM timetable_categories WHERE id == B.id            
        )
    ) c5_visited         
      
FROM Student B;
CREATE VIEW VIEW_TIMETABLE_INTERVENANTS AS WITH confirmed_intervenants AS (
    SELECT * FROM Intervenants WHERE confirm = 'true' ORDER BY categori
)

SELECT 
    A.nom || CHAR(13) || CHAR (10) || A.titre || CHAR(13) || CHAR(10) ||'Salle :' ||  A.salle Intervenants,
    A.id_timetable,
    A.categori,
    CASE WHEN (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot0 = A.id_timetable) =0 THEN 'NULL' ELSE (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot0 = A.id_timetable) END Slot_0,
    CASE WHEN (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot1 = A.id_timetable) =0 THEN 'NULL' ELSE (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot1 = A.id_timetable) END Slot_1,
    CASE WHEN (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot2 = A.id_timetable) =0 THEN 'NULL' ELSE (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot2 = A.id_timetable) END Slot_2,
    CASE WHEN (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot3 = A.id_timetable) =0 THEN 'NULL' ELSE (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot3 = A.id_timetable) END Slot_3,
    CASE WHEN (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot4 = A.id_timetable) =0 THEN 'NULL' ELSE (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot4 = A.id_timetable) END Slot_4,
    CASE WHEN (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot5 = A.id_timetable) =0 THEN 'NULL' ELSE (SELECT COUNT(*) FROM Timetable WHERE Timetable.slot5 = A.id_timetable) END Slot_5

FROM confirmed_intervenants A;
COMMIT;
