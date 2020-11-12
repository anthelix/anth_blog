# anthelix.github.io

Project site for my github projects, beginning with the Udacity Nanodegree ( spring 2020 )

About my programming work and to write in English.

HowTodo post blog: 
- `Touch` file in \_post/ folder as format :  YYYY-MM-DD-title-of-my-post.md    
- `git add`, `git push`
```
----
layout: post
title: ""
date: yyyy-mm-dd
---
some text
```

Todo:
- a HTML CV
- a page with link to github project

HowTodo
- Organisation
  - `_config` contient la configuration générale du blog
  - `_layout` contient les templates qui serviront à générer les pages
  - `_post` contient les articles et le dossier
  - `_site` contient le blog généré
- Créer des articles
  - les posts se trouvent dans `_posts`
  - ecrit en Markdown ou Textile
  - creer un fichier `YYYY-MM-DD-titre-du-post.md`
  ```
  ---
  pusblished: true
  layout: post
  title: "Tuto"
  categories: jekyll
  ---
  #### titre en H4
  ```
- Creer des pages
  - Placer un fichier html a la racine du projet
- Inclure des images
  - creer un dossier image a la racine du projet
  - image accessible par:
  `<img src="http://anthelix.github.io/images/monImage.png" />`
- Personalisation du template
  - un système de template, *Liquid*
    - fichiers html dans le dossier `_layouts`
    - `_layouts/default.html` contient par exemple la structure des pages
    - Le contenu des pages sera copier à l’emplacement de la variable content `{{ content }}`
- permalien
  - liens vers les articles sont paramétrables dans le fichier de configuration du blog
  - pour definir `http://www.monblog.fr/2013-03-10-Titre-de-mon-article`, definir `permalink: /blog/:year/:month/:day/:title` dans `_config.yml`
  - 