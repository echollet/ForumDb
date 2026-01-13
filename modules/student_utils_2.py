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
def get_most_interested_student_for_job(students:list[Student], job:Job)->Student|None:

    l_result_student = []
    l_wish_rank_student = []

    for student in students:
        std_wishes = student['wishes']
        for wish, wish_rank in zip(std_wishes, range(len(std_wishes))):
            if wish == job:
                j_yet_visited = [ j for (s,(j,i)) in student['itv_visited'] ]
                if not job in j_yet_visited:
                    l_result_student.append(student)
                    l_wish_rank_student.append(wish_rank)

    if len(l_result_student)==0:
        return None
    else:
        # retourner l'élève trouvé pour lequel le choix de job est le plus prioritaire
        return l_result_student[np.argmin(np.array(l_wish_rank_student))]


# %%
if __name__ == '__main__':
    # _test()
    pass