#
# q_utils.py
#

# %%
import numpy as np

# %%
from modules.typedef import *

# %%
def empty_q_intervenants(intervenants_data:Q_Intervenants)->Q_Intervenants:
    """
    Cette fonction vide la file d'attente Q de tous les intervenants
    """

    for single_job_intervenants in intervenants_data:
        for intervenant in single_job_intervenants:
            intervenant["Q"] = []

    return intervenants_data


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