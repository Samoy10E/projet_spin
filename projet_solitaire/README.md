## Le solitaire

### Modélisation 

On modélise le joueur avec un automate qui demande de manière non déterministe à un pion de bouger, et à fini quand il ne reste plus qu'un pion

#### Joueur
![Joueur](https://github.com/Samoy10E/projet_spin/blob/master/projet_solitaire/images/joueur.PNG "Joueur")

On modélise un pion sur un automate infini en forme de grille. On nomme l'état d'entré (i, j) (les coordonnées dans le vrai plateau) et (i+2, j) l'état sur sa droite, etc.
Il y a n pion. Chaque pion demande de bouger. Il choisi de manière non deterministe sa prochaine case. Il doit vérifié qu'il existe un pion sur la case entre lui et sa prochaine case.
Ce pion est alors détruit, il ne peut plus bouger et ne peut plus servir aux autres pions pour bouger.

#### Pion k
![1 pion](https://github.com/Samoy10E/projet_spin/blob/master/projet_solitaire/images/pions.PNG "1 pion")

### Objectif

On souhaite que les pions restent sur le plateau, donc après un déplacement on va vérifier qu'aucun pion est en dehors du plateau.