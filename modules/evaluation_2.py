#
# evaluate.py
#

# %%
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

from modules.typedef import *

from modules.student_utils import get_copy_students
from modules.timetable_utils import get_timetable_intervenants


# %%
def get_evaluation(timetable:Timetable, students:list[Student], q_intervenants:Q_Intervenants)->None:
    tmp_students = get_copy_students(students)
    overall_student_satisfaction = 0
    

    for student in tmp_students:

        l_job_visited = { j for (s,(j,_)) in student['itv_visited'] }
        l_w_fullfilled = [ w for w in student['wishes'] if w in l_job_visited ]
                
        student_satisfaction = round(len(l_w_fullfilled) / len(student['wishes']),3)    
        overall_student_satisfaction += student_satisfaction


    overall_student_satisfaction    = round(overall_student_satisfaction / len(tmp_students),3)

    print("overall_student_satisfaction : {}".format(overall_student_satisfaction))

    timetable_itv = get_timetable_intervenants(timetable, q_intervenants)
    df = pd.DataFrame(timetable_itv)
    df.sort_index(axis=1)

    df =df.sum()
    #print(df)


    print("nb moyen d'élève par intervenant durant le forum : {}".format(round(df.mean(),1)))
    print("deviation standard correspondante : {}".format(round(df.std(),1)))
    print("total nb élèves pour un intervenant - valeur max : {}".format(df.max()))
    print("total nb élèves pour un intervenant - valeur min : {}".format(df.min()))


    l_n_visits = np.array([ n_visits for slot in timetable_itv for n_visits in slot.values() ])

    print("taille moyenne de batch d'élèves par slot : {}".format(round(l_n_visits.sum()/len(l_n_visits)),3))
    
    nb_itv_no_visit = np.argwhere(l_n_visits == 0).size
    print("nb intervenants sans visites pendant un slot : {}".format(nb_itv_no_visit))


    plt.style.use('_mpl-gallery')

    # make data:
    y = df[:]
    x = 0.5 + np.arange(len(y))

    # plot
    fig, ax = plt.subplots()

    ax.bar(x, y, width=1, edgecolor="white", linewidth=0.7)

    ax.set(xlim=(0, len(y)), xticks=np.arange(1, len(y),5),
       ylim=(0, df.max()), yticks=np.arange(1, df.max(),5))

    plt.show()
    

# %%
