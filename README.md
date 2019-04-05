# TEA_Securite

Projet de Sécurité de l'ULR

Le projet suivant comporte les programmes suivants: - Main.c: le virus et son système de réplication<br> - Mediaplayer.c: un simple programme d'affichage utilisant le visioneur d'image par défaut de votre distribution Linux.<br> - Utils_OrderResolve.c: un algorithme de résolution d'équation linéaire<br> - Utils_PI.c: un programme permettant de calculer une valeur de Pi en spécifiant le nombre d'itérations utilisées ainsi que la précision souhaitée.<br> - Utils_SolveLinear.c: un programme qui résoud des systèmes d'équations linéaires<br> - Utils_Primes.c: un programme qui permet de calculer les nombres premiers dans un intervalle donné<br>

Ce projet est fournit avec un CMakeLists.txt, qui permet de compiler plus facilement le code source. Pour compiler celui-ci il faut ouvrir un terminal Unix dans le répertoire du projet puis y entrer ces commandes:

```bash
cd build
cmake ../src/
make all
```

Les trois commandes précédentes permettent de compiler le code source. Une fois le code compilé, on peut exécuter les programmes de la manière suivante:

```bash
./<filename>
```

Pour utiliser le virus pour réaliser la primo-infection il faut simplement utiliser la commande suivante:

```bash
./MediaPlayer.exe
```

Le virus infectera ensuite tout les fichiers exécutables dans le répertoire courant.
