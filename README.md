# manga-api
partie api du projet vueJS avec API

manga:
  {
    "name": "",
    "type": "",
    "author": "",
    "editor": "",
    "createdAt": "",
    "resume": "",
    "nbTomes": ,
    "image": ""
  }

Les différentes méthodes pour utiliser l'API

POST :

  Création d'un objet Manga
  http://127.0.0.1:8000/api/manga/new

GET :

  Lister les mangas disponibles
  http://127.0.0.1:8000/api/manga

  Aperçu d'un manga
  http://127.0.0.1:8000/api/manga/{id}
  
PUT :
  
  Editer la totalité d'un manga
  http://127.0.0.1:8000/api/manga/edit/{id}
  
PATCH :

  Editer partiellement un manga
  http://127.0.0.1:8000/api/manga/edit/{id}
  
DELETE :

  Supprimer un manga
  http://127.0.0.1:8000/api/manga/{id}
  






