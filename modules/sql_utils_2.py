from enum import Enum
from modules.typedef_2 import *

# %%
def get_sql_student_data(conn)->list[Student]:
    StudentsColumns = Enum("StudentsColumns", ["ID", "NAME", "Choix1", "Choix2", "Choix3", "Choix4", "Choix5" ], start=0)

    student_data = []
    cur = conn.cursor()
    for row in cur.execute("SELECT * FROM Student"):
        student_data.append({ 
            "id" : row[StudentsColumns.ID.value], 
            "wishes" : [
                int(row[StudentsColumns.Choix1.value]),
                int(row[StudentsColumns.Choix2.value]),
                int(row[StudentsColumns.Choix3.value]),
                int(row[StudentsColumns.Choix4.value]),
                int(row[StudentsColumns.Choix5.value])
                ], 
            "itv_visited" : []}
        )

    return student_data


# %%
def get_sql_intervenants(conn)->list[Job_Intervenants]:
    IntervenantsColumns = Enum("IntervenantsColumns", ["ID", "TITRE", "NOM", "CONFIRMED", "METIER_CAT", "ID_METIER", "SALLE", "BATCH_SIZE" ], start=0)

    cur = conn.cursor()
    intervenants_raw_data = []
    for row in cur.execute("SELECT * FROM Intervenants"):
        intervenants_raw_data.append({ 
            "id" :          row[IntervenantsColumns.ID.value], 
            "metier" :      row[IntervenantsColumns.METIER_CAT.value], 
            "id_metier" :   row[IntervenantsColumns.ID_METIER.value], 
            "batch_size":   row[IntervenantsColumns.BATCH_SIZE.value]
            })
    res = cur.execute("SELECT MAX(categori) FROM Intervenants")
    max_metier = res.fetchone()[0]
    intervenants_data_from_sql= []

    for i in range(max_metier+1):
        intervenants_data_from_sql.append(
            [ { 
                "id" : e["id"], 
                "batch_size" : e["batch_size"], 
                "id_metier" : e["id_metier"],
                "Q" : [] 
                } for e in intervenants_raw_data if e["metier"] == i]
        )

    return intervenants_data_from_sql
