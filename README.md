# **Lab 1**

# Présentation :

L'objectif de ce TP est de générer un chenillard grâce à l’appui sur un bouton poussoir.
La vitesse du chenillard est quant à elle commandée par quatre switchs.
Etant donné que le sujet laisse plusieurs choix quant à comment commander ce chenillard, j’ai choisi de configurer un bouton poussoir afin qu’il démarre et stoppe le chenillard.

# Architecture du système

![image](https://github.com/ESN2024/Podgorski_Lab1/assets/145102054/a76f7152-69b4-4774-89e7-9a11847bd77b)



Le système est composé de :
•	Un processeur Nios II
•	Une mémoire RAM
•	Une horloge
•	Un JTAG UART
•	1 PIO 8 bits qui contrôlera les leds.
•	1 PIO 1 bits qui contrôlera le bouton poussoir.
•	1 PIO 4 bits qui contrôlera les switchs.
# Configuration matérielle :

Afin de configurer le FPGA, nous avons créé le fichier Qsys ci-dessus qui contient toute la description matérielle de notre système.
Nous avons ensuite créé notre fichier top-level « Led_Chaser_main.vhd » qui instanciera les composants décrits dans le fichier Qsys.
Après la mise en place des connections entre les signaux d’entrées-sorties et les broches physiques du FPGA dans le pin planner, et une compilation sans erreur, nous pouvons maintenant flasher le bitstream sur la carte.
Le FPGA est maintenant configuré comme on le souhaite, il ne reste plus qu’à créer le software lié au système et le télécharger sur la carte.

# Implémentation logicielle :

Nous allons maintenant créer notre fichier main.c
Dedans nous avons créé une fonction qui déclenche un chenillard sur la carte en écrivant sur le PIO qui contrôle les leds.
L’appuie sur un bouton-poussoir ou un switch déclenchera une routine d’interruption qui modifiera un flag de manière à contrôler efficacement le démarrage, l’arrêt et la vitesse du chenillard.

# Vidéo :



https://github.com/ESN2024/Podgorski_Lab1/assets/145102054/d486b8e6-c7fb-4691-bb92-1bb37f6d2931




# Conclusion :
