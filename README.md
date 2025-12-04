# ForumDb
Forum des métiers - assignation automatique des élèves aux intervenants selon leurs voeux

## Introduction

### Notebooks

Ce fichier décrit l'utilisation d'un jupyter notebook pour la mise au point du code pour le forum des métiers.

Il existe 3 notebooks avec différentes stratégies :

- `forum-20.ipynb` : ce notebook met en place des groupes les plus homogènes possibles et affecte ensuite les groupes à des intervenants par timeslot,
- `forum-20-std-driven.ipynb` : ce notebook affecte les élèves à des intervenants en accordant la priorité au choix des élèves,
- `forum-20-itv-driven.ipynb` : ce notebook affecte les élèves à des intervenants en remplissant de façon équilibrée la file d'attente des intervenants et en tenant compte préférentiellement des choix des élèves. C'est cette stratégie qui s'est montrée la plus efficace en terme de taux de satisfaction du choix des élèves et de taux d'inactivité des intervenants (réduit à 0 en 2025).

### Données élèves

Les choix des élèves sont renseignés dans le fichier : `data/2025/data-2025.json` (pour l'année 2025).

Le contenu de ce fichier est de la forme suivante :

```json
[
{"id": 3100	, "wishes": [ 8, 3,	7, 6,  9  ], "itv_visited": [] },
{"id": 3101	, "wishes": [ 3, 7,	6, 19, 11 ], "itv_visited": [] },

]
```

L'attribut `id` est affecté à chacun des élèves. Les 2 premiers digits représentent la dénomination de la classe de l'élève (exemple : 3ème2 => 32xx). Les deux derniers digits permettent d'identifier un élève dans une classe donnée.

L'attribut `wishes` représente le choix d'un élève. C'est une liste remplie avec les numéros de métier placés par ordre de préférence décroissante. 

La numération des métiers démarre à 1 (et non pas à 0). La valeur 0 indique une absence de choix. Par ailleurs, cela simplifie le remplissage des formulaires de choix.

L'attribut `itv_visited` est une liste initialement vide utilisée par la suite par les algorithmes. 

### Données intervenants

Les données concernant les intervenants sont de la forme (fichier `data/2025/intervenants_data.json`):

```json
[
  [],
  [
    { "id" : 10, "batch_size":4},
    { "id" : 11, "batch_size":4},
    { "id" : 12, "batch_size":4}
  ],
  [ 
    { "id" : 20, "batch_size":4},
    { "id" : 21, "batch_size":4}
  ],
  [ 
    { "id" : 30, "batch_size":4},
    { "id" : 31, "batch_size":4}
  ],

]
```

La première liste est laissée vide. Elle correspond au métier N°0.

Les autres listes, correspondant chacune à un métier, contiennent les intervenants pour ce métier (ou cette classe de métiers).

Ces listes correspondent aux métiers 1, 2, 3,...

Chaque intervenant est caractérisé par :

- un identifiant `id`,
- une taille de groupe pour chaque slot de visite `batch_size`.

Sur l'exemple ci-dessus, le métier N° 1 est représenté par 3 intervenants ayant chacun une taille de groupe max positionnée à 4.


### Données produites

Les notebooks `forum-20-*-driven-*.ipynb` produisent un fichier `.csv` destiné à être importé dans une base SQLite. 

Par exemple, le notebook `forum-20-itv-driven.ipynb` produit le fichier `output_timetable_students_itv_drivent.csv` contenant la timetable des visites.

Ce fichier permet de renseigner la table `Timetable` de la base SQLite `db-forum-notebook-20-*-driven.db`.


## Références

[jupyter docker images](https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html)

[jupyter-minimal-notebook](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-minimal-notebook)



## Création du conteneur

La création du conteneur est effectuée à partir du répertoire `//ForumDb`.

```bash
defsys@POR90003210:(ForumDb) $ ll
total 4
drwsrws--- 1 defsys users  4096 Jan  3  2025 ./
drwx------ 1 defsys defsys 4096 Jul  4  2024 ../
drwsrws--- 1 defsys users  4096 Nov 25 08:26 .git/
-rwx------ 1 defsys defsys  280 Jan  3  2025 .gitignore*
drwsrws--- 1 defsys users  4096 Sep 18  2024 .ipynb_checkpoints/
drwx------ 1 defsys defsys 4096 Oct 17  2024 Dockerfile-python/
drwx------ 1 defsys defsys 4096 Dec 16  2024 Notebooks-python/
drwx------ 1 defsys defsys 4096 Jan  3  2025 Notebooks-python-2.0/
```

Le serveur de jupyter notebook (qui fait tourner le kernel) est hébergé dans un conteneur.

Pour un conteneur temporaire :

```bash
$ docker run -it --rm -p 8080:8888 -v "${PWD}":/home/jovyan/work quay.io/jupyter/minimal-notebook bash
```

Pour un conteneur permanent :

```bash
$ docker run -it --name practical_bohr -p 8080:8888 -v "${PWD}":/home/jovyan/work quay.io/jupyter/minimal-notebook bash
```

Ici le conteneur est nommé `practical_bohr` mais le nom peut être quelconque (et le paramètre `--name` est optionnel).


## Installation de packages dans un conteneur permanent

### Installation de numpy

see [conda env](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html#conda-environments)

```bash
Jovyan $ 
mamba install --yes numpy && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
```

### Installation de pandas

```bash
Jovyan $ 
mamba install --yes pandas && mamba clean --all -f -y
```

### Installation de matplotlib

```bash
mamba install --yes matplotlib && mamba clean --all -f -y
```


## Démarrage du conteneur permanent

Si le conteneur est permanent :

```bash
defsys@POR90003210:(ForumDb) $ docker ps -a
CONTAINER ID   IMAGE                              COMMAND                  CREATED             STATUS                      PORTS     NAMES
7ef2e2382242   quay.io/jupyter/minimal-notebook   "tini -g -- start.sh…"   About an hour ago   Exited (0) 14 seconds ago             practical_bohr
defsys@POR90003210:(ForumDb) $
```

## Démarrage du serveur

`$ docker start <nom-du-container>`

Exemple :

`$ docker start practical_bohr`

## Accès au conteneur 

`$ docker attach <nom-du-conteneur>`

Exemple :

`$ docker attach practical_bohr` 

## Lancement du serveur jupyter

Depuis le conteneur interactif :

```bash
Jovyan $ cd work/Notebooks-python-2.0
Jovyan $ start.sh jupyter lab
```

Le lancement du kernel jupyter retourne une ligne de la forme : `http://127.0.0.1:8888/lab?token=<valeur-du-token>`


```bash
[I 2024-10-17 05:06:23.178 ServerApp] jupyterlab | extension was successfully loaded.

  _   _          _      _
 | | | |_ __  __| |__ _| |_ ___
 | |_| | '_ \/ _` / _` |  _/ -_)
  \___/| .__/\__,_\__,_|\__\___|
       |_|

Read the migration plan to Notebook 7 to learn about the new features and the actions to take if you are using extensions.

https://jupyter-notebook.readthedocs.io/en/latest/migrate_to_notebook7.html

Please note that updating to Notebook 7 might break some of your extensions.

[I 2024-10-17 05:06:23.183 ServerApp] nbclassic | extension was successfully loaded.
[I 2024-10-17 05:06:23.185 ServerApp] notebook | extension was successfully loaded.
[I 2024-10-17 05:06:23.186 ServerApp] Serving notebooks from local directory: /home/jovyan/work
[I 2024-10-17 05:06:23.186 ServerApp] Jupyter Server 2.14.1 is running at:
[I 2024-10-17 05:06:23.186 ServerApp] http://7ef2e2382242:8888/lab?token=f854cb2acae30a6532e54b88225cb41b52f6584f80c2e0fd
[I 2024-10-17 05:06:23.186 ServerApp]     http://127.0.0.1:8888/lab?token=f854cb2acae30a6532e54b88225cb41b52f6584f80c2e0fd
[I 2024-10-17 05:06:23.186 ServerApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 2024-10-17 05:06:23.188 ServerApp]

    To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-81-open.html
    Or copy and paste one of these URLs:
        http://7ef2e2382242:8888/lab?token=f854cb2acae30a6532e54b88225cb41b52f6584f80c2e0fd
        http://127.0.0.1:8888/lab?token=f854cb2acae30a6532e54b88225cb41b52f6584f80c2e0fd
[I 2024-10-17 05:06:23.642 ServerApp] Skipped non-installed server(s): bash-language-server, dockerfile-language-server-nodejs, javascript-typescript-langserver, jedi-language-server, julia-language-server, pyright, python-language-server, python-lsp-server, r-languageserver, sql-language-server, texlab, typescript-language-server, unified-language-server, vscode-css-languageserver-bin, vscode-html-languageserver-bin, vscode-json-languageserver-bin, yaml-language-server
```



## Accès par navigateur

Au lancement du serveur (ci-dessus), un token est fourni :

Exemple :
`http://127.0.0.1:8888/lab?token=8b0212e15b20ce99b98dfa3abe22429851e3272d7bc24f59`


Depuis un navigateur, en utilisant le port 8080 (exposé par le conteneur et redirigé ensuite par celui-ci en interne vers 8888), acceder au serveur depuis la machine locale :

`http://localhost:8080/lab?token=<valeur-du-token>`

ou bien depuis un autre machine :

`http://192.168.1.54:8080/lab?token=<valeur-du-token>`


## Accès depuis VSCode

Depuis l'onglet du fichier `.ipynb`, sélectionner en haut à droite le bouton `Select Kernel`.

Puis `Existing Jupyter Server`.

Dans le champ de saisi (au coutour bleu), entrer l'URL vers le serveur jupyter de la forme `http://...` 


https://code.visualstudio.com/docs/datascience/jupyter-kernel-management

L'URL à utiliser avec le serveur lancé en local est : `http://localhost:8080`


(Si le conteneur a été lancé sur une machine distante, l'URL à utiliser est : `http://<adresse-ip>:8080`. Exemple : `http://192.168.1.54:8080`)

puis appuyer sur le bouton bleu directement en dessous : `connect to ..`



Il apparait alors un champ de saisi `Enter your password`.

Le password à utiliser est la valeur du token fourni au lancement du serveur jupyter dans le container.

(Exemple. Si la valeur retournée est : http://127.0.0.1:8888/lab?token=f854cb2acae30a6532e54b88225cb41b52f6584f80c2e0fd  => password = f854cb2acae30a6532e54b88225cb41b52f6584f80c2e0fd).



Confirmer ensuite les informations retournées par VSCode et sélectionner le kernel que VSCode a pu détecter.
