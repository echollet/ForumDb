#
# typedef.py
#

from typing import TypeAlias
from typing import Dict, Tuple, Sequence, List

Wishes : TypeAlias = List[int]
Id : TypeAlias = int
StudentId : TypeAlias = int

# 
# Un élève est identifié par un dictionnaire :
# { 'id' : int, 'wishes':list[int], 'itv_visited':list[ (slot_number, (job_index, id_intervenant)) ] }
#
# avec :
# id : identifiant sur 4 digit (2 premiers digits pour la classe 31 => 3ème 1; 2 derniers digits pour le numéro de l'élève : 00, 01, 02,..)
# wishes : liste des indexes de métiers choisis par l'élève 
# itv_visited : liste des couples (slot, intervenant) prévus pour l'élève avec l'intervenant identifié par un couple :
# - index du métier concerné (index de la liste Q-intervenants défini ci-dessous) 
# - identifiant d'intervenant (Job_Intervenant.id)
#

Student : TypeAlias = dict[str,any]

# 
# Q_Intervenants est la liste des intervenants par job (métier).
#
# par exemple :
#   [
#       [],                                         # métier 0 inutilisé
#       [ intervenant-10, intervenant-11 ],         # intervenants pour le métier 1
#       [ intervenant-20 ],                         # intervenant pour le métier 2          
#   ]
#
# en détail : 
# test_intervenants_data = pd.DataFrame([
#   [],
#   [ { "id" : 10, "batch_size":3 }, { "id" : 11, "batch_size":2 } ],   # <- Job_Intervenants pour métier 1
#   [ { "id" : 20, "batch_size":3 }, { "id" : 21, "batch_size":2 } ],   # <- Job_Intervenants pour métier 2
#   [ { "id" : 30, "batch_size":2 } ],                                  # <- ... métier 3
#   [ { "id" : 40, "batch_size":1 } ],
#   [ { "id" : 50, "batch_size":1 } ]
# ])
# 

# 
# un seul intervenant (Job_Intervenant) est identifié par un dictionnaire :
#
# { "id" : int, "batch_size":int }
#
# avec 
# 
# id : identifiant de l'intervenant sur 2 digit - premier digit rang de métier et second digit rang de l'intervenant
# id = 10   => métier 1 - premier intervenant
# id = 11   => métier 1 - second intervenant
# id = 20   => métier 2 - premier intervenant
# 
# batch_size : nombre d'élève par slot de visite
#  

Job_Intervenant : TypeAlias = dict[str, any]

# 
# Pour un seul métier n donné on a une liste d'intervenant (Job_Intervenants)  
#  avec:
#   Job_Intervenant[0],     # premier intervenant pour le métier n 
#   Job_Intervenant[1],     # second intervenant pour le métier n

Job_Intervenants : TypeAlias = list[Job_Intervenant] 

# 
# liste d'intervenants par job :
# Q_Intervenants[0] // non utilisé - les métiers sont référencés de 1 à n..
# Q_Intervenants[1] // liste des intervenants (Job_Intervenants) pour le métier 1
# Q_Intervenants[2] // liste des intervenants (Job_Intervenants) pour le métier 2
#  : 
Q_Intervenants : TypeAlias = list[Job_Intervenants]

# list timetable
Job : TypeAlias = int
Itv : TypeAlias = int


TimeslotStudentVisit : TypeAlias = Tuple[StudentId, Tuple[Job,Itv]]
TimetableSlot : TypeAlias = list[TimeslotStudentVisit]
Timetable : TypeAlias = list[TimetableSlot]
