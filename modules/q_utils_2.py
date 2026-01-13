#
# q_utils.py
#

# %%
import pandas as pd
import numpy as np

# %%
from modules.typedef import *


# %%
def init_q_intervenants(intervenants_data:pd.DataFrame)->Q_Intervenants:
    """
    Cette fonction initialise une structure contenant les files d'attente vides par intervenant et par job
    [   
        # job 0
        [],  

        # job 1
        [   {'id': 10, 'batch_size': 4, 'Q': []},
            {'id': 11, 'batch_size': 4, 'Q': []},
            {'id': 12, 'batch_size': 4, 'Q': []}
        ],

        # job 2
        [   {'id': 20, 'batch_size': 4, 'Q': []}, 
            {'id': 21, 'batch_size': 4, 'Q': []}
        ],
        ...
    ]

    """
    nb_intervenants_per_job     = [ np.argwhere(intervenants != None).size for intervenants in intervenants_data[:].to_numpy()]
    itv_id_per_job              = [ [ itv["id"] for itv in intervenants if itv != None ] for intervenants in intervenants_data[:].to_numpy() ]
    batch_size_per_itv_per_job  = [ [ itv["batch_size"] for itv in intervenants if itv != None ] for intervenants in intervenants_data[:].to_numpy() ]

    nb_jobs = len(nb_intervenants_per_job)

    l_q = []
    for n_j in range(nb_jobs):
        l_q_itv = []
        for n_itv in range(len(itv_id_per_job[n_j])):
            l_q_itv.append({ "id" : itv_id_per_job[n_j][n_itv], "batch_size":batch_size_per_itv_per_job[n_j][n_itv], "Q":[]})
        l_q.append(l_q_itv)
    return l_q


# %%
def get_smallest_q_for_job(q_intervenants:Q_Intervenants, job:int)->int:
    q_sizes_for_job = [ np.array(q['Q']).size for q in q_intervenants[job] ]
    return int(np.argmin(np.array(q_sizes_for_job)))


# %%
def get_batch_size(q_intervenants:Q_Intervenants, job:int, itv:int)->int:
    if job > len(q_intervenants):
        return None
    if itv > len(q_intervenants[job]):
        return None
    
    return q_intervenants[job][itv]['batch_size']


# %%
def get_current_q_size(q_intervenants:Q_Intervenants, job:int, itv:int)->int:
    if job > len(q_intervenants):
        return None
    if itv > len(q_intervenants[job]):
        return None
    return len(q_intervenants[job][itv]['Q'])


# %%
def is_q_intervenant_not_full(q_intervenants:Q_Intervenants, job:int, itv:int)->bool:
    batch_size = get_batch_size(q_intervenants, job, itv)
    current_q_size = get_current_q_size(q_intervenants, job, itv)
    return current_q_size < batch_size


# %%
def get_ordered_avail_q_for_job(q_intervenants:Q_Intervenants, job:int)->list[int]:
    
    if job > len(q_intervenants):
        return None
    
    q_avail = [ is_q_intervenant_not_full(q_intervenants, job, itv) for itv in range(len(q_intervenants[job]))]

    q_avail = np.argwhere(np.array(q_avail) == True).T[0]

    q_sizes = [ np.array(q_intervenants[job][i]).size for i in range(len(q_intervenants[job]))  ]
    
    idx_sorted_q_sizes = np.argsort(np.array(q_sizes))
    idx_sorted_avail_q = [ e for e in idx_sorted_q_sizes.tolist() if e in q_avail ]

    return idx_sorted_avail_q


# %%

# DEPRECATED for itv-driven
def push_student_in_q(q_intervenants:Q_Intervenants, job:int, itv:int, student_id:int)->Q_Intervenants:
    q_intervenants[job][itv]['Q'].append(student_id)
    return q_intervenants


# %%
def build_id_to_job_itv(q_intervenants:Q_Intervenants)->Tuple[IntervenantId,Tuple[JobId,IntervenantJobIdx]]:
    """
    [
     [ { <itv-00-data> }, { <itv-01-data> } ],  # intervenants for job 0
     [ { <itv-10-data> } ],                     # intervenants for job 1
     ...
    ] 
    ->
    [ 
        (id-xx , (0,0)),  # intervenant job 0 - itv 0
        (id-yy , (0,1)),  # intervenant job 0 - itv 1
        (id-zz , (1,0)),  # intervenant job 1 - itv 0
        ...
    ]
    """
    result = []    
    nb_jobs = len(q_intervenants)
    for n_job in range(nb_jobs):
        nb_itvs = len(q_intervenants[n_job])
        for n_itv in range(nb_itvs):
            result.append((q_intervenants[n_job][n_itv]['id'], (n_job, n_itv)))
    return result


# %%
def get_job_itv_from_itv_id(q_intervenants:Q_Intervenants, itv_id:int)->Tuple[JobId,IntervenantJobIdx]:
    # obtenir la conversion id (intervenant) -> (job, itv)
    l_id_job_itv = build_id_to_job_itv(q_intervenants)

    # récupérer le (job,itv) qui correspond à itv_id fourni à la fonction
    itv_id_job_itv = [ (job, itv) for (id,(job,itv)) in l_id_job_itv if id==itv_id ]
    if len(itv_id_job_itv)==0:
        return (None,None)
    (job,itv) = itv_id_job_itv[0] 
    return (job,itv)


# %%

# DEPRECATED for itv-driven
def push_student_in_q_id(q_intervenants:Q_Intervenants, itv_id:int, student_id:int)->Q_Intervenants:

    # obtenir la conversion id (intervenant) -> (job, itv)
    #l_id_job_itv = build_id_to_job_itv(q_intervenants)

    # récupérer le (job,itv) qui correspond au itv_id fourni
    #itv_id_job_itv = [ (job, itv) for (id,(job,itv)) in l_id_job_itv if id==itv_id]
    #if len(itv_id_job_itv)==0:
    #    return None
    #(job,itv) =  itv_id_job_itv[0]
    
    (job,itv) =  get_job_itv_from_itv_id(q_intervenants, itv_id)

    return push_student_in_q(q_intervenants, job, itv, student_id)


# %%
def get_next_avail_q(q_intervenants:Q_Intervenants, student:Student, job:int)->int:
    """
    Get a next available Q_intervenant for a particular student and a particular job
    """
    q_avail = get_ordered_avail_q_for_job(q_intervenants, job)

    q_visited = [ q for (_,(jb,q)) in student['itv_visited'] if jb == job ]

    q_avail_not_visited = [ q for q in q_avail if q not in q_visited ]

    next_q = q_avail_not_visited[0] if len(q_avail_not_visited) > 0 else None
    return next_q


# %%

# DEPRECATED for itv-driven
def get_next_q_to_load(q_intervenants:Q_Intervenants)->list[Tuple[Id, float]]:
    l_ratio_Qs = [ (itv['id'], round(len(itv['Q'])/itv['batch_size'],2)  ) for job_itv in q_intervenants for itv in job_itv  ]
    return l_ratio_Qs


# %%
def get_next_q_to_load_sorted(q_intervenants:Q_Intervenants)->list[IntervenantId]:

    def split_id_metier(id_metier:str)->Tuple[int]:
        job, itv = id_metier.split('-')
        return (int(job),int(itv))
                
    # déterminer la liste [(identifiant intervenant, taux de remplissage de Q)]
    q_id_load_ratio = [ (split_id_metier(itv['id_metier']), round(len(itv['Q'])/itv['batch_size'],2)  ) for job_itv in q_intervenants for itv in job_itv  ]

    # classer les index de la liste ci-dessus selon le taux de remplissage de Q
    q_load_ratio = [ ratio for (_, ratio) in q_id_load_ratio ]
    q_load_ratio_idx_sorted = np.argsort(np.array(q_load_ratio))

    # retourner la liste des (identifiant intervenant) classée selon leur taux de remplissage de Q
    result = [ q_id_load_ratio[i][0] for i in q_load_ratio_idx_sorted if q_id_load_ratio[i][1] < 1]
    return result

# %%
if __name__ == '__main__':
    # _test()
    pass