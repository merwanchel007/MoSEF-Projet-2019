 ## Projet Linux MoSEF 2019 - Merwan Amar Chelouah
*Ce repository est dédié à l'UE Linux du Master Mosef, promotion 2019/2020, animé par Amadou Baldé.*

**Il inclut un fichier search_fichiers.sh ainsi que le fichier read_me que vous venez d'ouvrir.**

C'est un projet qui vise à mettre en pratique les connaissances apprises en cours d'initiation à Linux (disribution Ubuntu) et à Git.
Il s'agit de mettre en pratique les connaissances générales en programmation sous le terminal Linux notamment : 
- La création de fichier, la modification et l'utilisation de scripts (bash notamment) pour le volet Linux.
- La compréhension de l'environnement Git du travail collaboratif ainsi que des commits / pull request / utilisation des branches.

Nous avons créé un fichier bash dont l'utilisation permmettrait d'afficher dès son initialisation :
- La date et l'heure d'execution du script ainsi qu'un message d'accueil qui contient le nom de l'utilisateur
- Le contenu d'un répertoire que l'on mentionne en tant que variable (variable directory). L'utilisateur devra mentionner la variable 
  directory lorsque le script lui demandera quel répertoire il souhaite étudier
Nous avons ajouté un pattern de filtrage, j'ai ajouté un parametre $1 dans le bash afin que l'utilisateur puisse mentionner dès l'execution du script plusieurs modalités de fichiers comme affiché tous les fichiers possédant une extension 
particulière (.txt, .png etc...) dans son répertoire ou bien des fichiers ne contenant qu'un seul pattern (fichiers avec une strucure 
nominale particulière, qui commencent par XXXX).

Nous avons ajouté à notre script la possibilité de chercher à l'interieur du répertoire voulu tous les pattern de chaînes
de caractères que l'utilisateur voudra entrer en deuxième paramètre ($2), nous avons utiliser la fonction grep afin de filtrer nos fichiers par rapport aux caractères qui se trouvent dans les fichiers du répertoire directory. Les options i et l permettent respectivement de :
- Ne pas rendre le pattern sensible à la casse, par exemple, (.txt et .TXT auront pour finalités le même résultats)
- Permet d'afficher uniquement le nom du fichier contenant la chaîne de caractère au lieu de la ligne pour plus de lisibilité

**A noter qu'il est également possible pour l'utilisateur de ne pas mentionner de paramètres au lancement du script afin d'afficher uniquement la liste du contenu du répertoire choisi.**



Voici un exemple d'usage du script: 
```
cd
./search_fichiers.sh *.rf banane

Bienvenue merwanchelouah, aujourdhui nous sommes le Sam 23 nov 2019 19:04:44 CET.
Quel repertoire voulez vous utiliser aujourd'hui ? mosef
Vous avez choisi le repertoire, bonne journée : mosef
mosef/exemple search 1.rtf
mosef/exemple search.rtf
```
Le script a donc affiché tous les fichiers dont l'extension est ".rtf" qui contiennent "banane" dans le répertoire "mosef"
