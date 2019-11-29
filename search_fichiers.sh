#!/bin/bash

#recuperation de la date d'aujourd'hui dans le bon format
jour=$(date | cut -d "," -f1)
echo "Bienvenue $USER, aujourdhui nous sommes le $jour"

#recuperation du repertoire voulu en tant que variable
read -p "Quel repertoire voulez vous utiliser aujourd'hui ? " directory
echo "Vous avez choisi le repertoire $directory , bonne journee "


#Ajout du deuxieme pattern avec deux option, i pour enlever la case sensitivity,l pour que le script affiche le nom du fichier au lieu de la ligne dans le fichier, il permet de chercher une chaine de caractere specifique dans un fichier

grep -il $2 $directory/$1
