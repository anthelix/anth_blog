---
layout: postlog
title: "Stephanie Chatagner, Data and more Data"
date: 2020-09-15
categories: blog update
permalink: /:categories/:day/:month/:title.html
---

Well. 

Septembre est là et notre bootcamp de Data Analyst est déjà loin.  C'était intense, instructif et fun! Ce type d'environnement d’apprentissage est très gratifiant et me laissera un souvenir impérissable ainsi qu'à ce premier Batch DataBird. 
Venant du secteur de la Santé, j’ai toujours été attiré par la donnée médicale, son analyse et l’impact des transformations qu’elle entraîne sur le patient et son environnement. Sans notions de Mathématiques approfondies ou de Master en Économie et un passage par l’Ecole42, c’est très récemment que j’ai considéré une carrière dans la Data. C'était il y a 6 mois, on dirait un siècle ! Vu mon profil, je me suis lancé ce challenge personnel d’apprendre l’analyse des données en deux mois et de l’appliquer ensuite dans un futur métier en relation avec mon ancien parcours professionnel si possible. 
Excepté que ce dernier point est arrive un peu plus tôt que prévu…

Un projet d’analyse de données sur une durée de 15 jours conclut le bootcamp. Les données nous sont fournis ou nous pouvons apporter les nôtres. Les datasets de Santé sont rares. Au milieu du bootcamp, après une discussion avec Antoine (co-fondateur Databird), un mail à un ancien collègue de chez Johnson et Johnson, Pierre Cosson, et fondateur d‘Arsenal Chirurgical puis une réponse enthousiaste, j’avais un dataset de données logistiques médicales. Une victoire!
Arsenal Chirurgical est une plateforme qui met en relation des clients (des établissements de Santé) avec leur fournisseurs de matériel (des laboratoires pharmaceutiques). Ce matériel est utilisé pendant les interventions chirurgicales. Il y a l’implant posé qui reste dans le patient (une prothèse de hanche, par exemple), et la boîte à outils spécifique à la pose de cet implant qui est loué par l'établissement de Santé au laboratoire (les ancillaires).
Nous sommes 4 à avoir travaillé sur ce dataset, la team Arsenal! La répartition des tâches s’est faite naturellement en fonction des expertises de chacun. 
Simon, expérience dans la finance de marché, Expert Machine Learning, Python et Sql de la team Arsenal.
Fahmi, cursus universitaire en biologie, Expert Machine Learning, Python et méthodologie de la team.
Aurélie, cursus école de commerce, Team Excel, PowerPoint et Tableau de la team.
Stéphanie, infirmière de bloc opératoire en reconversion. Passage par l’ecole 42. Expert métier, base de données, data cleaning de la team.
Nous avons utilisés comme outils et langages : Metabase, Excel, Python, MySql, Regex, JupyterNotebook, Tableau Software, Trello, Dbeaver.
Les deux premiers jours ont été consacrés à la découverte des 32 tables de Metabase, des 2 fichiers Excel concernant le chiffre d’affaire (80 lignes) et des logs des mails (780 000 lignes). En fonction des demandes Business de Pierre, nous avons ensuite choisi les tables pertinentes pour le projet, et commencer le data cleaning. Les données ont été enrichies dans un dernier temps avec des données publiques sur la taille des établissements de Santé. Les 5 derniers jours ont été consacré à la segmentation, la construction des visuels dans Tableau Software et la présentation client.

Le monde médical a un langage et des process qui lui sont propres. Arsenal chirurgical, ancillaire, arthrodèse,  cage, vis, plaque, implant … Avoir un expert métier dans la team, Google et les contacts fréquent avec Pierre ont permis d'acquérir les connaissances pour arriver au terme de ce projet. 
La plus grande surprise a été la base de donnée Metabase et l’absence d’un schéma. Un mur au premier abord. On tirait sur un fil et toute la base de donnée venait, un vrai cauchemar…  Nous avons fait marche arrière et ensemble, nous avons exploré les tables pour être certain que tout le monde comprenait la même chose et retracer le schéma de la base de données avec la bonne vieille méthode du papier et du crayon. 
La startup Arsenal Chirurgical étant récente, les données ne sont pas toutes construites sur un seul format. Au fur et à mesure des évolutions de la société, ses data suivent le même mouvement. Il nous fallait extraire et uniformiser ces data. Nous avons sous-estimé le temps que nous prendrait le data cleansing… Nous avons choisi de nettoyer quelques fichiers, de mettre en standby certaines tâches pour délivrer des fichiers exploitables à ceux qui commenceraient à faire les visuels dans Tableau Software. 
Je suis obligée de parler hardware et software. Sur une équipe de 4 personnes, il y avait 3 systèmes d'exploitation différents (Mac, Windows et Linux), des ordinateurs qui reboot en plein milieu d’une segmentation, des versions de Tableau Software différentes, des ordinateurs sur lequel il n’existe pas de version Tableau, des Excel pas forcément Microsoft…  bref, nous nous sommes adaptés, nous avons communiqué, fait des démonstrations aux autres . On a attendu avec un café l’ordinateur qui redémarre, comparer nos versions d’Excel, échanger nos ordinateurs, expliquer. 

Nous avons fait un rétro planning. Le jour de la présentation, -1 jour pour s’entrainer, -1 jour pour finaliser le powerpoint et les dernieres verifications d’usage, -2 jours etc… Nous avions oublié les impondérables liés à chaque projet. Les 32 tables nous ont ramenés à  la réalité. 
Chaque soir nous faisons un point sur ce qui avait été fait, les difficultés de la journée, les solutions possibles et le programme du lendemain. Un rapport de quelques lignes était écrit sur le Slack du groupe et le trello mis à jour… On a tenu 10 jours.
Les fichiers étaient organisés sur Google drive. Un dossier pour les fichiers avant modifications, un dossier des tables choisies, un dossier sql, un dossier Tableau, un dossier Notebook, un dossier pour la présentation.
Nous connaissions les forces de chacun en commençant le projet. Nous nous sommes repartis les 32 tables en 4, puis 2 ont dessiné le schéma de la base de données pendant que 2 autres cherchaient les liens entre les tables. Nous nous sommes ensuite reparti les questions business de Pierre pour explorer les tables choisies et faire le data cleansing. Dans un second temps, chacun à avancer à son rythme selon ses tables. Si une personne prenait de l’avance, elle aidait une autre à avancer. Les fichiers nettoyés étaient mis ensuite dans un même dossier prêt à être utilisé par les experts Tableau.

En tant qu’expert métier du projet, j’ai adoré pouvoir fusionner mon ancien secteur médical et le nouveau en Tech. C’est vraiment une révélation pour moi. J’adore repousser la limite de ma zone de confort. Dans une reconversion totale, on est toujours dans cette limite. Depuis deux ans que j’y suis, c’était très agréable de redécouvrir une zone de confort!
La satisfaction de travailler avec cette équipe, d'échanger et de trouver des solutions étaient très satisfaisantes. Le café et les gâteaux du matin y ont beaucoup contribué aussi. Même si nous étions 4 à travailler ensemble, nous avons pu aussi compter sur le reste du Batch que ça soit le temps d’une pause, d’une question business, d’une question Excel.
Après la présentation à Pierre, nous lui avons  demandé son avis. En tant que fondateur d’une startup, nous étions très curieux de savoir si nous avions soulevé des points qu’il ne connaissait pas, Pari gagné !
Dans le bootcamp, 2 mois nous sépare du status grand débutant du jour de la présentation de notre projet devant un jury de data analyst. Ensuite, viendra le temps des entretiens pour un futur job, c’est le but du bootcamp après tout. Aujourd’hui, ces entretiens m'effraient un peu moins. Grâce à ce projet, je peux simplement expliquer ce que j’ai appris pendant 2 mois. Je suis plus confiante dans ce que j‘ai appris. 

Sorry about the French. I'll try not to do it again.
So, step by step.

s