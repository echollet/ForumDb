CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE Catégorie (id INTEGER PRIMARY KEY AUTOINCREMENT, categorie TEXT);
CREATE VIEW VIEW_nb_intervenants_confirm_per_categori AS SELECT categorie,
       count( * ) 
  FROM VIEW_Intervenants_Cat
 WHERE confirm IS NOT NULL
 GROUP BY categori
/* VIEW_nb_intervenants_confirm_per_categori(categorie,"count( * )") */;
CREATE TABLE Intervenants (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, titre TEXT, nom TEXT, confirm INTEGER, categori REFERENCES Catégorie (id), id_timetable TEXT, salle TEXT);
CREATE TABLE Student (id INTEGER PRIMARY KEY NOT NULL, nom TEXT, c1 TEXT, c2 TEXT, c3 TEXT, c4 TEXT, c5 TEXT, classe TEXT);
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
       Catégorie ON (Intervenants.categori = Catégorie.id)
/* VIEW_Intervenants_Cat(id_timetable,titre,nom,confirm,salle,categori,categorie) */;
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

SELECT groupe_id FROM nb_visited_per_categori WHERE nb_visit_per_categori > 1
/* VIEW_CHECK_DOUBLON_CAT_VISITED(groupe_id) */;
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

SELECT groupe_id FROM nb_visited_per_intervenant WHERE nb_visit_per_intervenant > 1
/* VIEW_CHECK_DOUBLON_INTERV_VISITED(groupe_id) */;
CREATE TABLE Timetable (groupe_id TEXT, slot0 TEXT, slot1 TEXT, slot2 TEXT, slot3 TEXT, slot4 TEXT, slot5 TEXT);
CREATE VIEW VIEW_TIMETABLE_CATEGORI AS SELECT
    A.groupe_id,
    (SELECT categori FROM Intervenants WHERE A.slot0 = Intervenants.id_timetable) cat_S0,
    (SELECT categori FROM Intervenants WHERE A.slot1 = Intervenants.id_timetable) cat_S1,
    (SELECT categori FROM Intervenants WHERE A.slot2 = Intervenants.id_timetable) cat_S2,
    (SELECT categori FROM Intervenants WHERE A.slot3 = Intervenants.id_timetable) cat_S3,
    (SELECT categori FROM Intervenants WHERE A.slot4 = Intervenants.id_timetable) cat_S4,
    (SELECT categori FROM Intervenants WHERE A.slot4 = Intervenants.id_timetable) cat_S5
FROM Timetable A
/* VIEW_TIMETABLE_CATEGORI(groupe_id,cat_S0,cat_S1,cat_S2,cat_S3,cat_S4,cat_S5) */;
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
 WHERE Student.id > 3000
/* VIEW_TIMETABLE(classe,id,nom,c1,c2,c3,c4,c5,"Slot0 - nom","Slot0 - titre",Slot1,"Slot1 - titre",Slot2,"Slot2 - titre",Slot3,"Slot3 - titre",Slot4,"Slot4 - titre",Slot5,"Slot5 - titre") */;
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
 WHERE Student.id > 3000
/* VIEW_TIMETABLE_DETAILS(classe,id,nom,c1,c2,c3,c4,c5,S0,S1,S2,S3,S4,S5) */;
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
      
FROM Student B
/* VIEW_STUDENT_SATISFACTION(nom,c1,c2,c3,c4,c5,c1_visited,c2_visited,c3_visited,c4_visited,c5_visited) */;
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

FROM confirmed_intervenants A
/* VIEW_TIMETABLE_INTERVENANTS(Intervenants,id_timetable,categori,Slot_0,Slot_1,Slot_2,Slot_3,Slot_4,Slot_5) */;
CREATE VIEW VIEW_STUDENT_CHOICES AS SELECT
 A.id,
 A.nom,
 (SELECT categorie FROM Catégorie WHERE Catégorie.id=A.c1) C1,
 (SELECT categorie FROM Catégorie WHERE Catégorie.id=A.c2) C2,
 (SELECT categorie FROM Catégorie WHERE Catégorie.id=A.c3) C3,
 (SELECT categorie FROM Catégorie WHERE Catégorie.id=A.c4) C4,
 (SELECT categorie FROM Catégorie WHERE Catégorie.id=A.c5) C5 
FROM STUDENT A
/* VIEW_STUDENT_CHOICES(id,nom,C1,C2,C3,C4,C5) */;
CREATE VIEW VIEW_EXPORT_STUDENT_WISHES_JSON AS SELECT '{"id" : ' || A.id || ', "wishes" : [' || A.c1 || ',' || A.c2 || ',' || A.c3 || ',' || A.c4 || ',' || A.c5 || '], "itv_visited" : [] },' json_data
  FROM STUDENT A
/* VIEW_EXPORT_STUDENT_WISHES_JSON(json_data) */;
