#!/bin/bash

#recuperation de la date d'aujourd'hui dans le bon format
jour=$(date | cut -d "," -f1)
echo "Bienvenue $USER, aujourdhui nous sommes le $jour"
#recuperation du repertoire voulu en tant que variable
read -p "Quel repertoire voulez vous utiliser aujourd'hui ? " directory
echo "Vous avez choisi le repertoire : $directory "

#listing de tous le contenu du repertoire en question demandé precedemment et ajout d'un premier pattern fourni en parametre

ls $directory/$1
