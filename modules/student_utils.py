#
# student_utils.py
#

# %%

import numpy as np

from modules.typedef import *

# %%
def get_copy_students(students:list[Student])->list[Student]:
    return list([ { 'id':s['id'], 'wishes':list(s['wishes']), 'itv_visited':list(s['itv_visited']) } for s in students ])


# %%
def convert_to_student_timetable(nb_slots:int, students:list[Student])->Timetable:
    """
    -> [ 
        [ (id, (j,i)), ... ], # slot 0
        [ (id, (j,i)), ... ], # slot 1
        ...
      ]
    """
    timetable = []
    for n in range(nb_slots):
        d = []
        for student in students:
            d.append((student['id'], (student['itv_visited'][n])  if n < len(student['itv_visited']) else None))
        timetable.append(d)
    return timetable


# %%
def scrap_student_choice(students:list[Student], id:int, job:int)->list[Student]:
    """
    Cette fonction positionne à -1 le choix de métier (job) d'un élève (id) figurant dans une liste d'élèves (students).
    """

    students_ids = [ student["id"] for student in students ]

    l_idx_student = np.argwhere(np.array(students_ids)==id)
    
    if l_idx_student.size == 0:
        return students
    
    idx_student = l_idx_student[0][0]

    l_idx_job_to_scrap = np.argwhere(np.array(students[idx_student]['wishes'])==job)

    if l_idx_job_to_scrap.size == 0 :
        return students
    
    idx_job_to_scrap = l_idx_job_to_scrap[0][0]

    students[idx_student]['wishes'][idx_job_to_scrap] = -1
    return students


# %%
def scrap_single_student_choice(student:Student, job:int)->Student:
    l_idx_job_to_scrap = np.argwhere(np.array(student['wishes'])==job)

    if l_idx_job_to_scrap.size == 0 :
        return student
    
    idx_job_to_scrap = l_idx_job_to_scrap[0][0]

    student['wishes'][idx_job_to_scrap] = -1
    return student    


# %%
def get_next_valid_student_choice(students:list[Student], id:int)->int:
    """ 
    Cette fonction retourne le prochain choix de métier encore valide d'un élève selon l'ordre de priorité
    """
    students_ids = [ student["id"] for student in students ]

    l_idx_student = np.argwhere(np.array(students_ids)==id)
    
    if l_idx_student.size == 0:
        return None

    idx_student = l_idx_student[0][0]
    l_idx_valid_wishes = np.argwhere(np.array(students[idx_student]['wishes'])!=-1)

    if l_idx_valid_wishes.size == 0:
        return None
    
    return students[idx_student]['wishes'][l_idx_valid_wishes[0][0]]


# %%
def get_student_for_job_not_visited(students:list[Student], job:Job)->Student|None:

    l_result_student = []
    l_wish_rank_student = []

    for student in students:
        #print("get_student_for_job_not_visited:: processing std {} for job {}".format(student,job))
        std_wishes = student['wishes']
        for wish, wish_rank in zip(std_wishes, range(len(std_wishes))):
            if wish == job:
                j_yet_visited = [ j for (s,(j,i)) in student['itv_visited'] ]
                if not job in j_yet_visited:
                    #print("get_student_for_job_not_visited:: returning {} for job {}".format(student,job))
                    l_result_student.append(student)
                    l_wish_rank_student.append(wish_rank)

    if len(l_result_student)==0:
        return None
    else:
        # retourner l'élève trouvé pour lequel le choix de job est le plus prioritaire
        return l_result_student[np.argmin(np.array(l_wish_rank_student))]


# %%
def get_student_for_job_itv_not_visited(students:list[Student], job:Job, itv:int)->Student|None:
    for student in students:
        #print("processing std {} for job {}".format(student,job))
        std_wishes = student['wishes']
        for wish in std_wishes:
            if wish == job:
                j_i_visited = [ (j,i) for (s,(j,i)) in student['itv_visited'] ]
                if not (job,itv) in j_i_visited:
                    return student
    return None


# %%
if __name__ == '__main__':
    # _test()
    pass