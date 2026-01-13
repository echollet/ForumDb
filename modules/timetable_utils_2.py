#
# timetable_utils.py
#

# %%
from collections import defaultdict
from modules.typedef_2 import *


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
def get_timetable_intervenants(timetable:Timetable, q_intervenants:Q_Intervenants)->list[dict[int,int]]:

    def get_id_from_job_itv(job, itv):
        for intervenants_per_job in q_intervenants:
            for intervenant in intervenants_per_job:
                if intervenant["id_metier"] == f'{job}-{itv}':
                    return intervenant["id"]
        return None

    l_itv_visits = [ (s, itv_visit) for (s,(itv_visit)) in [ e for slot in timetable for  (_, e) in slot if e != None] ]

    time_slots = list({ s for (_,(s,_)) in [ (id, itv_visit) for slot in timetable for id, itv_visit in slot if itv_visit != None ] })

    l_result = []
    for n_slot in time_slots:

        l_slot_itv_visits = [ (slot,itv_visit) for (slot, itv_visit) in l_itv_visits if slot == n_slot ]
        itv_entries = defaultdict(int)

        for slot_itv_visit in l_slot_itv_visits :
            _, (j,i) = slot_itv_visit
            id = get_id_from_job_itv(j,i)
            assert(id != None)
            itv_entries[id] += 1

        l_result.append(dict(itv_entries))

    return l_result
# %%
