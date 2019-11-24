#!/bin/bash

#recuperation de la date d'aujourd'hui dans le bon format
jour=$(date | cut -d "," -f1)
echo "Bienvenue $USER, aujourdhui nous sommes le $jour"

#recuperation du repertoire voulu en tant que variable
read -p "Quel repertoire voulez vous utiliser aujourd'hui ? " directory
echo "Vous avez choisi le repertoire, bonne journee : $directory "


#Ajout du deuxieme pattern avec deux option, i pour enlever la case sensitivity,l pour que le script s'arrete dès le premier matching, il permet de chercher une chaine de caractere specifique dans un fichier

grep -il $2 $directory/$1
