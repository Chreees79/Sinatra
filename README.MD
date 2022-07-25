BIENVENUE A TOI VISITEUR !
==================

![Chris](/gossip.jpg)

## Le Gossip Projet

Le but de cet exercice, est de pouvoir créer, en travaillant avec Sinatra, qui est un framework conçu pour coder des applications web, nous pouvons très rapidement faire une application web. Le but est également de pouvoir utiliser ainsi un serveur local (avec l'aide de la gem 'rackup', et 'shotgun'), de continuer à travailler l'architecture logicielle MVC, les routes, les views, les BDD, l'utilisation de formulaires, les CSV...

## Mon travail

J'ai pu, comme demandé, coder une view "index" qui affiche la liste des gossips, ainsi qu'un lien pour créer un gossip.

J'ai également coder une view "new_gossip" permettant via un formulaire dont on récupère les informations,  de créer un nouveau potin, qui va s'enregistrer sur le fichier 'gossip.csv' de manière additionnelle, et avec des paramètres dynamiques. Un lien est également présent sur la view, afin que l'utilisateur puisse retourner sur l'index afin que l'utilisateur puisse avoir un retour de l'enregistrement de ses données.

Dans le même temps, j'ai également codé le fichier 'controller.rb' pour pouvoir faire en sorte que soit exécuter les demandes (création, affichage...), ainsi que le fichier 'gossip.rb' afin de gérer tous les exécutions concernant la BDD, et tout cela de manière inter-reliée.

J'ai également codé une view ainsi qu'une méthode, et créé une route dynamique, afin que les potins affichés dans la page d'index, porte un lien vers sa propre show, et donc ses propres informations, ainsi qu'un lien de retour vers la page index, pour une utilisation 'user-friendly'.

J'ai également codé une view 'edit', ainsi qu'une méthode, afin que les potins puissent être individuellement mis-à-jour dans la BDD via un formulaire.

J'ai enfin pu coder d'enregistrer un commentaire dès la page de création du potin, de le faire apparaître uniquement sur sa page 'show' et non l'index, avec la possibilité à travers 'edit' et sa méthode, d'être mise à jour. Malheureusement, je n'ai pas pu coder le fait qu'il y ait possibilité de faire 0, 1 ou n commentaires, et cela à partir de la page show (création et affichage ensemble sur la page show de chaque potin).

Et finalement, en reprenant un peu de Bootstrap, j'ai tenté de rendre, tant que faire se peut, cette application un peu plus accueillante!!

GRAND MERCI POUR VOTRE VISITE !
=======================