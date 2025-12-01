#
# evaluate.py
#

# %%
import numpy as np

from modules.typedef import *

from modules.student_utils import get_copy_students
from modules.timetable_utils import get_timetable_intervenants


# %%
def get_evaluation(timetable:Timetable, students:list[Student], q_intervenants:Q_Intervenants, mode='std-driven')->None:
    tmp_students = get_copy_students(students)
    overall_student_satisfaction = 0
    overall_ratio_itv_visited = 0
    
    for student in tmp_students:

        if mode == 'std-driven':
            l_w_fullfilled = [ w for w in student['wishes'] if w == -1 ]
        else:
            l_job_visited = { j for (s,(j,_)) in student['itv_visited'] }
            l_w_fullfilled = [ w for w in student['wishes'] if w in l_job_visited ]
                
        student_satisfaction = round(len(l_w_fullfilled) / len(student['wishes']),3)    
        overall_student_satisfaction += student_satisfaction

        ratio_itv_visited = round(len(student['itv_visited']) / len(student['wishes']),3)
        overall_ratio_itv_visited += ratio_itv_visited

    overall_ratio_itv_visited = round(overall_ratio_itv_visited/len(students),3)
    overall_student_satisfaction = round(overall_student_satisfaction / len(tmp_students),3)

    print("overall_student_satisfaction : {}".format(overall_student_satisfaction))
    print("overall ratio visited {}".format(overall_ratio_itv_visited))

    timetable_itv = get_timetable_intervenants(timetable, q_intervenants)
    #print("timetable_itv {}".format(timetable_itv))

    l_n_visits = np.array([ n_visits for slot in timetable_itv for n_visits in slot.values() ])
    nb_itv_no_visit = np.argwhere(l_n_visits == 0).size
    print("nb_no_visits_itv : {}".format(nb_itv_no_visit))
    
