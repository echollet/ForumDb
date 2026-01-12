#
# timetable_utils.py
#

# %%
import pandas as pd

from collections import defaultdict
from modules.typedef import *
from modules.q_utils import build_id_to_job_itv


# %%
def timetable_student_view(timetable:Timetable)->list[Tuple[StudentId,list[Tuple[int, Tuple[Job,int]]]]]:
    """ 
    -> [ (id, [(s,(j,i))]),... ]
    """
    d_result = defaultdict(list)

    for timeslot in timetable:
        for student_slot_itv_visit in timeslot:
            (std_id, (slot,(j,i)))= student_slot_itv_visit
            d_result[std_id].append("{}-{}".format(j,i))

    return d_result


# %%
def get_id_from_j_i(l_id_j_i:list[TimeslotStudentVisit], j_i:Tuple[Job,Itv])->Id:
    """
    [ (id, (job, itv)),... ]  
    -> id correspondant à (j,i) fourni en argument
    """
    j, i = j_i
    l_res = [ e_id for (e_id, (e_j,e_i)) in l_id_j_i if (e_j==j) and (e_i==i)]
    if (len(l_res) == 0):
        return None
    else :
        return l_res[0]    


# %%
def get_timetable_intervenants(timetable:Timetable, q_intervenants:Q_Intervenants)->list[dict[int,int]]:

    
    l_itv_visits = [ (s, itv_visit) for (s,(itv_visit)) in [ e for slot in timetable for  (_, e) in slot if e != None] ]

    time_slots = list({ s for (_,(s,_)) in [ (id, itv_visit) for slot in timetable for id, itv_visit in slot if itv_visit != None ] })
    #print("nb_slots : {}".format(time_slots))

    l_itv_id_job_itv = build_id_to_job_itv(q_intervenants)
    l_ids_itv = [ id for (id,_) in l_itv_id_job_itv]


    l_result = []
    for n_slot in time_slots:

        l_slot_itv_visits = [ (slot,itv_visit) for (slot, itv_visit) in l_itv_visits if slot == n_slot ]
        itv_entries = defaultdict(int)
        for id in l_ids_itv:
            itv_entries[id]=0

        for slot_itv_visit in l_slot_itv_visits :
            slot, (j,i) = slot_itv_visit
            id = get_id_from_j_i(l_itv_id_job_itv, (j,i))
            if id != None:
                itv_entries[id] += 1

        l_result.append(dict(itv_entries))

    return l_result
# %%
