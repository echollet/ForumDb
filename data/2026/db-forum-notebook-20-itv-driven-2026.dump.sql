PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Catégorie (id INTEGER PRIMARY KEY AUTOINCREMENT, categorie TEXT);
INSERT INTO "Catégorie" VALUES(1,'Armée');
INSERT INTO "Catégorie" VALUES(2,'Secourisme');
INSERT INTO "Catégorie" VALUES(3,'Artisanat');
INSERT INTO "Catégorie" VALUES(4,'Automobile');
INSERT INTO "Catégorie" VALUES(5,'BanqueAdmin');
INSERT INTO "Catégorie" VALUES(6,'ImmobCommerce');
INSERT INTO "Catégorie" VALUES(7,'ArtEvent');
INSERT INTO "Catégorie" VALUES(8,'Droit');
INSERT INTO "Catégorie" VALUES(9,'Médical');
INSERT INTO "Catégorie" VALUES(10,'Paramédical');
INSERT INTO "Catégorie" VALUES(11,'Transport');
INSERT INTO "Catégorie" VALUES(12,'Aéro');
INSERT INTO "Catégorie" VALUES(13,'Industrie');
INSERT INTO "Catégorie" VALUES(14,'Biologie');
INSERT INTO "Catégorie" VALUES(15,'Environnement');
INSERT INTO "Catégorie" VALUES(16,'Informatique');
INSERT INTO "Catégorie" VALUES(17,'Social');
INSERT INTO "Catégorie" VALUES(18,'Journaliste');
INSERT INTO "Catégorie" VALUES(19,'Lycées');
INSERT INTO "Catégorie" VALUES(20,NULL);
INSERT INTO "Catégorie" VALUES(21,NULL);
CREATE TABLE Intervenants (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, titre TEXT, nom TEXT, confirm INTEGER, categori REFERENCES Catégorie (id), id_timetable TEXT, salle TEXT);
INSERT INTO Intervenants VALUES(1,'Brigade Canine','Damien ROYAL','true',1,'1-0','CDI');
INSERT INTO Intervenants VALUES(2,'GIGN','Pierre FRANCOIS','true',1,'1-1','CDI');
INSERT INTO Intervenants VALUES(3,'Policier','Zawieja BERTRAND','true',1,'1-2','CDI');
INSERT INTO Intervenants VALUES(4,'Pompier','Fabrice BOYER','true',2,'2-0','S102');
INSERT INTO Intervenants VALUES(5,'Formateur secourisme','Jean BANDET','true',2,'2-1','S102');
INSERT INTO Intervenants VALUES(6,'Coiffeur','Vincent','true',3,'3-0','S118');
INSERT INTO Intervenants VALUES(7,NULL,'Hélène GARNIER',NULL,4,'4-0','S103');
INSERT INTO Intervenants VALUES(8,'Comptable','Christelle PEYRE-LESUR','true',5,'5-0','S116');
INSERT INTO Intervenants VALUES(9,'Employée de banque','Carole LIROLA','true',5,'5-1','S116');
INSERT INTO Intervenants VALUES(10,'Gestionnaire immobilier','Valérie NADAL',NULL,6,'6-0','S117');
INSERT INTO Intervenants VALUES(11,'Graphiste','Elisa RAMOS','true',7,'7-0','S114');
INSERT INTO Intervenants VALUES(12,'Expert tech. recouvrement','Virginie DUPRAT',NULL,8,'8-0','S110');
INSERT INTO Intervenants VALUES(13,'Greffière','Céline TEULIERE','true',8,'8-1','S110');
INSERT INTO Intervenants VALUES(14,'Notaire','Anne CARLES BARRY','true',8,'8-2','S109');
INSERT INTO Intervenants VALUES(15,'Mandataire judiciaire','Stéphanie BONALUMI','true',8,'8-3','S108');
INSERT INTO Intervenants VALUES(16,'Médecin','Guillaume GUYON','true',9,'9-0','S111');
INSERT INTO Intervenants VALUES(17,'Médecin','Camille HOULBERT',NULL,9,'9-1','S111');
INSERT INTO Intervenants VALUES(18,'Infirmière','Clémence QUEROL','true',9,'9-2','S112');
INSERT INTO Intervenants VALUES(19,'Kinésithérapeute-Ostéopathe','Virginie LARUELLE-DEUILHE','true',9,'9-3','S112');
INSERT INTO Intervenants VALUES(20,'Manipulateur radio','Guillaume DELBOUIS','true',9,'9-4','S113');
INSERT INTO Intervenants VALUES(21,'Orthophoniste','Sarah NEGRE','true',10,'10-0','S120');
INSERT INTO Intervenants VALUES(22,'Psychologue','Léa FAJEAU','true',10,'10-1','S120');
INSERT INTO Intervenants VALUES(23,'Directrice Maison de retraite','Naouel GULIA','true',10,'10-2','S119');
INSERT INTO Intervenants VALUES(24,'Musicothérapeute','Angéline SAUBOIS','true',10,'10-3','S119');
INSERT INTO Intervenants VALUES(25,'Responsable transport DHL','Sophie MESANGEAU','true',11,'11-0','S101');
INSERT INTO Intervenants VALUES(26,'Pilote de ligne','François MAVEL','true',11,'11-1','S101');
INSERT INTO Intervenants VALUES(27,'Ingénieur CNES','Eric SAWYER','true',12,'12-0','S107');
INSERT INTO Intervenants VALUES(28,'Chef de projet AIRBUS','David COIRATON','true',12,'12-1','S107');
INSERT INTO Intervenants VALUES(29,'Planificateur PDP','Soraya LAKEHAL','true',12,'12-2','S106');
INSERT INTO Intervenants VALUES(30,'Ingénieur Thalès','Cécile LARUE DE TOURNEMINE','true',12,'12-3','S106');
INSERT INTO Intervenants VALUES(31,'Ingénieur navigant AIRBUS','Tuan DO','true',12,'12-4','S105');
INSERT INTO Intervenants VALUES(32,'Ingénieur système satellite','Samil ZITOUNE','true',12,'12-5','S105');
INSERT INTO Intervenants VALUES(33,'Ingénieur AIRBUS','Fabrice CROS','true',12,'12-6','S104');
INSERT INTO Intervenants VALUES(34,'Ingénieur électronique','Christian PERTEL','true',13,'13-0','S103');
INSERT INTO Intervenants VALUES(36,'Cheffe de service ISAE SUPAERO','Cécile LA TOURNERIE','true',13,'13-1','S104');
INSERT INTO Intervenants VALUES(37,'Chercheur CNRS impacts ondes électromagnétiques','Fabrice CAIGNET','true',13,'13-2','S9');
INSERT INTO Intervenants VALUES(38,'Chargée de recherche CNRS','Emilie LAYRE','true',14,'14-0','S9');
INSERT INTO Intervenants VALUES(39,'Chargé animation environnement','Didier PIROVANO','true',15,'15-0','S8');
INSERT INTO Intervenants VALUES(40,'Paysagiste','Caroline BARFERTY','true',15,'15-1','S8');
INSERT INTO Intervenants VALUES(41,'Cheffe de projet technique (web) Totem numérique','Clémence CROS','true',16,'16-0','S7');
INSERT INTO Intervenants VALUES(42,'Ingénieur produit logiciels médicaux','Sophie PERON','true',16,'16-1','S17');
INSERT INTO Intervenants VALUES(43,'Assistante sociale','Sophie M''BARGA','true',17,'17-0','S2');
INSERT INTO Intervenants VALUES(44,'Directeur - Professeur des écoles','Yannick CLAMENS','true',17,'17-1','S2');
INSERT INTO Intervenants VALUES(45,'Journaliste Dépêche du Midi','Agnès GRIMALDI','true',18,'18-0','S114');
INSERT INTO Intervenants VALUES(46,'Lycée AIRBUS','Bruno DUMAS','true',19,'19-0','S1');
INSERT INTO Intervenants VALUES(47,'Lycée R. Garros','RGarros','true',19,'19-1','S1');
INSERT INTO Intervenants VALUES(48,'Lycée Pins Justaret','PJustaret','true',19,'19-2','ULISS');
INSERT INTO Intervenants VALUES(49,'Lycée Charles De Gaule','CDGaule','true',19,'19-3','ULISS');
INSERT INTO Intervenants VALUES(87,'Contrôleur de gestion CNES','Philippe BORDELAIS','true',5,'5-2','S115');
INSERT INTO Intervenants VALUES(88,'Agent immobilier','Julie BOCQUILLON','true',6,'6-1','S118');
INSERT INTO Intervenants VALUES(89,'Agent immobilier','Julie FAROUZE','true',6,'6-2','S117');
INSERT INTO Intervenants VALUES(90,'Avocat','Laura LLANES','true',8,'8-4','S109');
CREATE TABLE Student (id INTEGER PRIMARY KEY NOT NULL, nom TEXT, c1 TEXT, c2 TEXT, c3 TEXT, c4 TEXT, c5 TEXT, classe TEXT);
INSERT INTO Student VALUES(990,'nobody',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO Student VALUES(991,'nobody',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO Student VALUES(3100,'ATIENZA Kélya','10','15','2','13','5','3e1');
INSERT INTO Student VALUES(3101,'BECCHIO Sonny','12','15','19','7','11','3e1');
INSERT INTO Student VALUES(3102,'BERTRAND Antoine','11','12','9','6','16','3e1');
INSERT INTO Student VALUES(3103,'BIGOT Camille','9','10','6','18','5','3e1');
INSERT INTO Student VALUES(3104,'BOUE Rita','9','10','17','2','8','3e1');
INSERT INTO Student VALUES(3105,'BOUYACOUB Riad','1','3','6','2','19','3e1');
INSERT INTO Student VALUES(3106,'BRUNET Dorian','8','6','5','1','2','3e1');
INSERT INTO Student VALUES(3107,'BUONO Ezio','19','12','8','16','4','3e1');
INSERT INTO Student VALUES(3108,'CARSALADE Miléna','7','18','17','8','10','3e1');
INSERT INTO Student VALUES(3109,'CHOU-BENCHARGUI Kaïs','6','1','19','5','2','3e1');
INSERT INTO Student VALUES(3110,'CLAUDE Jade','19','10','17','18','15','3e1');
INSERT INTO Student VALUES(3111,'CLOCHARD Lila','8','10','7','14','18','3e1');
INSERT INTO Student VALUES(3112,'DO PHAM NGOC Xuân My','10','7','18','17','3','3e1');
INSERT INTO Student VALUES(3113,'DUCONGE Chloé','17','10','9','8','1','3e1');
INSERT INTO Student VALUES(3114,'EL OUAZANI Asma','17','19','8','6','5','3e1');
INSERT INTO Student VALUES(3115,'GARUS Noémie','6','9','17','8','19','3e1');
INSERT INTO Student VALUES(3116,'GIRAUT Sarah','8','17','10','9','18','3e1');
INSERT INTO Student VALUES(3117,'HAMOUDI-BARRO Maël','8','9','12','19','19','3e1');
INSERT INTO Student VALUES(3118,'HELHAL Jibril','6','13','3','4','19','3e1');
INSERT INTO Student VALUES(3119,'LACOSTE Rebecca','8','10','7','14','18','3e1');
INSERT INTO Student VALUES(3120,'LAURENT Jules','17','12','9','16','13','3e1');
INSERT INTO Student VALUES(3121,'LE BRIS DALICHOUX Elisa','1','1','8','18','13','3e1');
INSERT INTO Student VALUES(3122,'LEFEBVRE Stanislas','6','8','18','4','3','3e1');
INSERT INTO Student VALUES(3123,'MAOUCHE MONTAIGNE Nora','10','6','5','9','19','3e1');
INSERT INTO Student VALUES(3124,'MARCIAL-POUSSEVIGNE Matéo','17','10','7','3','14','3e1');
INSERT INTO Student VALUES(3125,'NEGRET Oïhan','14','9','12','8','13','3e1');
INSERT INTO Student VALUES(3126,'NOLLEAU-LONCHAMPT Mathis','17','10','9','1','8','3e1');
INSERT INTO Student VALUES(3127,'PELLETIER Inès','8','2','9','1','6','3e1');
INSERT INTO Student VALUES(3128,'SABE Manoah','4','9','6','18','2','3e1');
INSERT INTO Student VALUES(3129,'VIDAL Louis','8','9','1','4','12','3e1');
INSERT INTO Student VALUES(3200,'BAZERQUE-CHATILLON Léo','5','16','1','18','13','3e2');
INSERT INTO Student VALUES(3201,'BIGOT Antoine','14','7','9','12','4','3e2');
INSERT INTO Student VALUES(3202,'BOUE Lyssandre','9','6','14','13','8','3e2');
INSERT INTO Student VALUES(3203,'BOUZIANE Iliesse','19','19','3','1','9','3e2');
INSERT INTO Student VALUES(3204,'CARION Lily','17','10','8','19','9','3e2');
INSERT INTO Student VALUES(3205,'CHARDON-DELPON Lou','9','6','19','17','8','3e2');
INSERT INTO Student VALUES(3206,'CLAUZEL Mathis','12','4','11','18','15','3e2');
INSERT INTO Student VALUES(3207,'COMTE Janelle','8','18','17','9','1','3e2');
INSERT INTO Student VALUES(3208,'DE SAINT JEAN Erine','15','18','17','2','3','3e2');
INSERT INTO Student VALUES(3209,'DECHAUMONT Arthur','19','18','1','11','2','3e2');
INSERT INTO Student VALUES(3210,'DESCAMPS-CORREIA Enea','9','8','12','14','10','3e2');
INSERT INTO Student VALUES(3211,'DESOUTTER Paolo','12','6','16','1','5','3e2');
INSERT INTO Student VALUES(3212,'GENRAULT BELHADJ Alyssa','8','18','17','9','1','3e2');
INSERT INTO Student VALUES(3213,'HAUATA-TAHIATA FRIEDRICH Manea','1','2','3','5','19','3e2');
INSERT INTO Student VALUES(3214,'HAUATA-TAHIATA FRIEDRICH Taane','1','2','15','19','19','3e2');
INSERT INTO Student VALUES(3215,'HRIZI Mériam','6','5','10','9','8','3e2');
INSERT INTO Student VALUES(3216,'JUDLIN SABEUR Marwan','9','6','14','12','8','3e2');
INSERT INTO Student VALUES(3217,'LATOUCHE SABLÉ Laurette','18','8','12','9','1','3e2');
INSERT INTO Student VALUES(3218,'LEFLOCH Thomas','12','14','13','16','9','3e2');
INSERT INTO Student VALUES(3219,'LEGRAND Florian','1','12','13','16','14','3e2');
INSERT INTO Student VALUES(3220,'LIROLA Anna','9','10','8','14','18','3e2');
INSERT INTO Student VALUES(3221,'LOUNAS Lilou','7','3','10','14','6','3e2');
INSERT INTO Student VALUES(3222,'MALÉ Noah','12','19','3','9','1','3e2');
INSERT INTO Student VALUES(3223,'MASSON Gelindo','1','4','9','7','16','3e2');
INSERT INTO Student VALUES(3224,'MORICE Arthur','9','6','14','12','8','3e2');
INSERT INTO Student VALUES(3225,'MOUSSAOUI Selsabil','9','10','14','16','2','3e2');
INSERT INTO Student VALUES(3226,'PARANAMANAGE Bithusha','9','10','19','18','8','3e2');
INSERT INTO Student VALUES(3227,'PEIGNÉ Mathis','7','11','1','3','15','3e2');
INSERT INTO Student VALUES(3228,'TARDIEU-WALKER Lévana','10','14','8','5','11','3e2');
INSERT INTO Student VALUES(3229,'TERNIER Hugo','6','12','18','1','16','3e2');
INSERT INTO Student VALUES(3300,'BENHALIMA Naïma','19','15','3','5','7','3e3');
INSERT INTO Student VALUES(3301,'BENTAIBA Jade','8','9','14','5','10','3e3');
INSERT INTO Student VALUES(3302,'BERNARDEAU Killian','16','4','17','18','11','3e3');
INSERT INTO Student VALUES(3303,'BEZZOU Ilyès','16','1','2','13','12','3e3');
INSERT INTO Student VALUES(3304,'BOTEREL Léo','12','7','11','18','10','3e3');
INSERT INTO Student VALUES(3305,'BOYER LANAU Lucie','1','2','9','8','10','3e3');
INSERT INTO Student VALUES(3306,'CONSUL Lukas','1','2','3','4','15','3e3');
INSERT INTO Student VALUES(3307,'DAVASSE Sixtine','9','8','10','5','17','3e3');
INSERT INTO Student VALUES(3308,'DELPECH Nathan','1','12','11','16','3','3e3');
INSERT INTO Student VALUES(3309,'DESANGLES Baptiste','12','8','9','13','16','3e3');
INSERT INTO Student VALUES(3310,'DIDOMENICO Simon','19','6','8','13','12','3e3');
INSERT INTO Student VALUES(3311,'DUFRAISSE Léopold','1','8','2','5','17','3e3');
INSERT INTO Student VALUES(3312,'DURAND Anaé','9','10','17','11','12','3e3');
INSERT INTO Student VALUES(3313,'EMERIAUD Lola','12','9','10','8','14','3e3');
INSERT INTO Student VALUES(3314,'FACI Marwan','19','19','4','1','15','3e3');
INSERT INTO Student VALUES(3315,'GALIEGUE Kayla','8','1','9','10','4','3e3');
INSERT INTO Student VALUES(3316,'GEHIN Léonie','9','14','2','1','10','3e3');
INSERT INTO Student VALUES(3317,'GURBUZ Mélina','8','9','10','14','13','3e3');
INSERT INTO Student VALUES(3318,'HELLUY Romane','6','8','9','10','17','3e3');
INSERT INTO Student VALUES(3319,'JEANNOT Océane','1','2','9','8','10','3e3');
INSERT INTO Student VALUES(3320,'LAVIGNE Elio','9','1','2','18','19','3e3');
INSERT INTO Student VALUES(3321,'MARTY Louise','10','2','7','1','3','3e3');
INSERT INTO Student VALUES(3322,'MAZARS Mathilde','8','10','9','5','6','3e3');
INSERT INTO Student VALUES(3323,'NGO DIT GASTON Paul','13','5','3','8','1','3e3');
INSERT INTO Student VALUES(3324,'NOTTELET CAYRE Axel','13','4','12','9','8','3e3');
INSERT INTO Student VALUES(3325,'PAQUIE-RODRIGUEZ Maxime','4','1','11','3','12','3e3');
INSERT INTO Student VALUES(3326,'PATOUX Alice','18','14','10','9','17','3e3');
INSERT INTO Student VALUES(3327,'PRADEL Jules','9','18','4','6','12','3e3');
INSERT INTO Student VALUES(3328,'SAGNIEZ Léo','1','7','12','16','18','3e3');
INSERT INTO Student VALUES(3329,'TAVIAUD-VALLERY Léon','4','1','11','3','12','3e3');
INSERT INTO Student VALUES(3400,'AFIF Aymen','16','13','6','19','5','3e4');
INSERT INTO Student VALUES(3401,'ALASIA Violette','17','2','8','9','10','3e4');
INSERT INTO Student VALUES(3402,'AMSSAAF Eddine','16','13','4','6','11','3e4');
INSERT INTO Student VALUES(3403,'ANCELY Jaïlys','9','10','8','5','18','3e4');
INSERT INTO Student VALUES(3404,'ASSELIN Hugo','1','11','12','6','5','3e4');
INSERT INTO Student VALUES(3405,'BERRAHO Mohamed','9','2','11','12','1','3e4');
INSERT INTO Student VALUES(3406,'BINET Céleste','17','8','5','3','6','3e4');
INSERT INTO Student VALUES(3407,'BOUMEZIRENE Célia','3','6','10','19','19','3e4');
INSERT INTO Student VALUES(3408,'BRIAND Laura','8','18','10','9','1','3e4');
INSERT INTO Student VALUES(3409,'CAMPELLO Mattéo','4','6','2','3','1','3e4');
INSERT INTO Student VALUES(3410,'DOMY Lina','8','5','6','17','2','3e4');
INSERT INTO Student VALUES(3411,'DUPRAT Mathis','16','13','9','8','11','3e4');
INSERT INTO Student VALUES(3412,'DURAND Elora','5','6','11','16','15','3e4');
INSERT INTO Student VALUES(3413,'ENGUERRAND Timéo','16','13','4','15','6','3e4');
INSERT INTO Student VALUES(3414,'GHODBANE Théo','13','1','2','4','6','3e4');
INSERT INTO Student VALUES(3415,'GROUSSELLE Faustine','9','10','19','17','8','3e4');
INSERT INTO Student VALUES(3416,'HILLEMBRAND Rafael','15','14','13','11','8','3e4');
INSERT INTO Student VALUES(3417,'ID YASSINE Bilel','9','10','6','8','5','3e4');
INSERT INTO Student VALUES(3418,'JARNOT Louis','6','19','5','10','16','3e4');
INSERT INTO Student VALUES(3419,'JUILLY-LECOMMANDOUX Chloé','7','1','3','2','8','3e4');
INSERT INTO Student VALUES(3420,'LOURADOUR Tom','12','14','4','16','13','3e4');
INSERT INTO Student VALUES(3421,'NEGRE DE TENA Julia','1','15','17','2','3','3e4');
INSERT INTO Student VALUES(3422,'NOTTELET CAYRE Sacha','11','13','4','12','15','3e4');
INSERT INTO Student VALUES(3423,'PINTO Enzo','18','7','6','2','4','3e4');
INSERT INTO Student VALUES(3424,'PIRIOU Titouan','12','13','8','4','6','3e4');
INSERT INTO Student VALUES(3425,'RATH Sunty','0','0','0','0','0','3e4');
INSERT INTO Student VALUES(3426,'RINGUET BRAVAIS Amélie','12','7','14','16','18','3e4');
INSERT INTO Student VALUES(3427,'TRAILLE Ambre','3','10','19','6','1','3e4');
INSERT INTO Student VALUES(3428,'VIALA Enzo','16','12','1','13','11','3e4');
INSERT INTO Student VALUES(3429,'VILLETTE Enola','3','14','10','17','9','3e4');
INSERT INTO Student VALUES(3500,'ABDALLAH Moussa','3','19','19','1','2','3e5');
INSERT INTO Student VALUES(3501,'BIONDO Louis','6','12','19','13','5','3e5');
INSERT INTO Student VALUES(3502,'BOCQUILLON-PASCAL Viky','8','9','14','1','2','3e5');
INSERT INTO Student VALUES(3503,'BRIGNOLI Thibaud','6','19','9','13','8','3e5');
INSERT INTO Student VALUES(3504,'BULE PEREIRA Gonçalo','9','10','13','2','1','3e5');
INSERT INTO Student VALUES(3505,'CASTAGNET Ayden','18','6','2','7','4','3e5');
INSERT INTO Student VALUES(3506,'CAZAJUS Ophélie','18','9','8','10','14','3e5');
INSERT INTO Student VALUES(3507,'CAZENAVE Juliette','12','8','13','16','10','3e5');
INSERT INTO Student VALUES(3508,'CHAABANE Yasmine','15','3','7','2','6','3e5');
INSERT INTO Student VALUES(3509,'CHEDAS Chloe','3','10','9','17','6','3e5');
INSERT INTO Student VALUES(3510,'CONTIVAL Lucas','19','6','9','12','13','3e5');
INSERT INTO Student VALUES(3511,'FARGEAUDOU Lucas','6','1','2','11','18','3e5');
INSERT INTO Student VALUES(3512,'GAGNOUD Chloé','8','9','10','12','14','3e5');
INSERT INTO Student VALUES(3513,'GIANESIN CARTIGNY Lenny','6','1','2','15','5','3e5');
INSERT INTO Student VALUES(3514,'GIROIRE Léa','6','3','15','10','19','3e5');
INSERT INTO Student VALUES(3515,'GRACIOSO MOTA Léandro Gabriel','3','19','19','15','13','3e5');
INSERT INTO Student VALUES(3516,'HAZARD Ines','12','13','9','10','16','3e5');
INSERT INTO Student VALUES(3517,'MARTY Clara','6','5','8','10','9','3e5');
INSERT INTO Student VALUES(3518,'MIMOUN SIMON Satya','12','7','4','16','19','3e5');
INSERT INTO Student VALUES(3519,'MRABTI Kenza','11','9','2','6','10','3e5');
INSERT INTO Student VALUES(3520,'PASQUIER Alcandre','12','16','5','1','8','3e5');
INSERT INTO Student VALUES(3521,'PERES DELUC Maxime','6','16','4','12','13','3e5');
INSERT INTO Student VALUES(3522,'QUELEN Elouan','13','12','16','14','9','3e5');
INSERT INTO Student VALUES(3523,'SCHWARTZ Chloé','8','5','18','9','6','3e5');
INSERT INTO Student VALUES(3524,'SOW Abdel Aziz','12','13','4','16','19','3e5');
INSERT INTO Student VALUES(3525,'THEP Akhara','9','7','11','10','4','3e5');
INSERT INTO Student VALUES(3526,'THEP Vandy','16','12','10','13','9','3e5');
INSERT INTO Student VALUES(3527,'THURIES Charlotte','9','5','8','16','12','3e5');
INSERT INTO Student VALUES(3528,'URBANSKA Wiktoria','7','6','8','1','9','3e5');
INSERT INTO Student VALUES(3529,'ZAILEL Miloud','4','19','19','11','2','3e5');
INSERT INTO Student VALUES(3600,'ADRIEN Tom','2','8','9','1','3','3e6');
INSERT INTO Student VALUES(3601,'AHMED OUENZAR Ayoub','19','16','11','13','6','3e6');
INSERT INTO Student VALUES(3602,'ALLOATTI Margot','9','5','10','8','2','3e6');
INSERT INTO Student VALUES(3603,'CAMELIERE Aaron','4','11','15','1','18','3e6');
INSERT INTO Student VALUES(3604,'CAMPS Adele','10','9','6','14','8','3e6');
INSERT INTO Student VALUES(3605,'CARLES Clovis','1','2','18','15','8','3e6');
INSERT INTO Student VALUES(3606,'CASTEX Maxence','1','3','4','8','13','3e6');
INSERT INTO Student VALUES(3607,'CHAABANE Yanis','15','1','4','12','11','3e6');
INSERT INTO Student VALUES(3608,'DELONCLE Margot','8','5','14','16','6','3e6');
INSERT INTO Student VALUES(3609,'DOREL Oscar','6','16','5','13','1','3e6');
INSERT INTO Student VALUES(3610,'DROUET Joanna','6','7','14','4','10','3e6');
INSERT INTO Student VALUES(3611,'EL KHIALY Bilel','16','19','11','6','3','3e6');
INSERT INTO Student VALUES(3612,'ESTRIPEAU Thomas','16','18','7','17','12','3e6');
INSERT INTO Student VALUES(3613,'FAURE Clara','9','2','1','10','8','3e6');
INSERT INTO Student VALUES(3614,'FIKRAOUI Isaline','7','18','17','3','8','3e6');
INSERT INTO Student VALUES(3615,'GALISSAIRE Chloé','9','8','1','7','10','3e6');
INSERT INTO Student VALUES(3616,'GALTIER Mélia','9','8','1','7','10','3e6');
INSERT INTO Student VALUES(3617,'GASCON Gabriel','12','19','2','9','1','3e6');
INSERT INTO Student VALUES(3618,'GASQ Erwan','9','2','6','15','5','3e6');
INSERT INTO Student VALUES(3619,'GRAFAT Hamza','13','19','16','5','9','3e6');
INSERT INTO Student VALUES(3620,'KASSOUS Léo','1','19','16','13','5','3e6');
INSERT INTO Student VALUES(3621,'LÉPINE CAUSSATIERES Maylis','3','6','5','9','8','3e6');
INSERT INTO Student VALUES(3622,'MAHIEU-BOISSELIER Eva','9','2','18','7','14','3e6');
INSERT INTO Student VALUES(3623,'MAURY Paul','15','4','3','11','14','3e6');
INSERT INTO Student VALUES(3624,'MOISSET-JAFFRES Sasha','6','19','5','12','13','3e6');
INSERT INTO Student VALUES(3625,'NAZIH Akram','1','19','12','6','11','3e6');
INSERT INTO Student VALUES(3626,'RABEMANANJARA Valichou','3','9','8','18','7','3e6');
INSERT INTO Student VALUES(3627,'RUHTZ Ysabel','8','9','14','19','12','3e6');
INSERT INTO Student VALUES(3628,'SAINTE-COLOMBE Anaïs','3','6','7','12','15','3e6');
INSERT INTO Student VALUES(3629,'SALLES Alexandre','8','4','9','5','6','3e6');
INSERT INTO Student VALUES(3700,'BARHOUMI Farah','9','17','3','6','14','3e7');
INSERT INTO Student VALUES(3701,'BAVOUZET Thibault','8','9','1','16','12','3e7');
INSERT INTO Student VALUES(3702,'BRIDENNE Valentine','14','8','18','9','10','3e7');
INSERT INTO Student VALUES(3703,'CARLES Baptiste','12','1','9','11','19','3e7');
INSERT INTO Student VALUES(3704,'CAUSSANEL Manon','8','6','5','12','16','3e7');
INSERT INTO Student VALUES(3705,'CELESTINE Jaheem','6','3','19','1','11','3e7');
INSERT INTO Student VALUES(3706,'CHAMBON Diego','17','1','8','16','19','3e7');
INSERT INTO Student VALUES(3707,'CORDIER Stanislas','9','14','2','8','1','3e7');
INSERT INTO Student VALUES(3708,'FARRÉ Manon','8','18','7','6','1','3e7');
INSERT INTO Student VALUES(3709,'GRANIER-BELTRI Gabrielle','7','10','8','9','3','3e7');
INSERT INTO Student VALUES(3710,'HAJJI Sarah','8','18','17','6','9','3e7');
INSERT INTO Student VALUES(3711,'HAZARD Adrien','4','3','16','13','12','3e7');
INSERT INTO Student VALUES(3712,'LABIA Ilian','19','4','13','12','11','3e7');
INSERT INTO Student VALUES(3713,'LAYANI Sasha','10','5','8','7','18','3e7');
INSERT INTO Student VALUES(3714,'LEFORT Guillaume','14','7','18','17','13','3e7');
INSERT INTO Student VALUES(3715,'LEROY Valentin','14','6','2','15','9','3e7');
INSERT INTO Student VALUES(3716,'LESCOT Esteban','11','6','1','4','8','3e7');
INSERT INTO Student VALUES(3717,'LEVRAT Arthur','9','14','10','7','19','3e7');
INSERT INTO Student VALUES(3718,'MALAVAL Daphnée','7','6','14','3','5','3e7');
INSERT INTO Student VALUES(3719,'MAVEL Etienne','9','14','10','8','2','3e7');
INSERT INTO Student VALUES(3720,'MORIN Lyséa','8','18','7','6','1','3e7');
INSERT INTO Student VALUES(3721,'PENAS Roxane','8','10','2','9','1','3e7');
INSERT INTO Student VALUES(3722,'RIVIERE Nolann','6','13','16','19','12','3e7');
INSERT INTO Student VALUES(3723,'ROCCO Matteo','16','12','14','4','15','3e7');
INSERT INTO Student VALUES(3724,'ROL Edouard','6','8','1','12','5','3e7');
INSERT INTO Student VALUES(3725,'ROQUES Louna','7','6','18','8','3','3e7');
INSERT INTO Student VALUES(3726,'SAWYER RAFFANEL Alexis','9','8','5','11','12','3e7');
INSERT INTO Student VALUES(3727,'TAILLADE Anna','7','8','18','6','1','3e7');
INSERT INTO Student VALUES(3728,'TARDIEU Guilhem','7','14','18','15','17','3e7');
INSERT INTO Student VALUES(3729,'THOMAS Léane','10','9','7','3','2','3e7');
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
INSERT INTO sqlite_sequence VALUES('Intervenants',90);
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
CREATE VIEW VIEW_STUDENT_CHOICES AS SELECT
 A.id,
 A.nom,
 (SELECT categorie FROM Catégorie WHERE Catégorie.id=A.c1) C1,
 (SELECT categorie FROM Catégorie WHERE Catégorie.id=A.c2) C2,
 (SELECT categorie FROM Catégorie WHERE Catégorie.id=A.c3) C3,
 (SELECT categorie FROM Catégorie WHERE Catégorie.id=A.c4) C4,
 (SELECT categorie FROM Catégorie WHERE Catégorie.id=A.c5) C5 
FROM STUDENT A;
COMMIT;
