# periscope-docker

## Restauration d'application (Work in progress..)

### Pour restaurer Solr
Il suffit de lancer le projet avec la commande suivante :
```
sudo docker compose up -d
```

### Pour restaurer l'index 
```
http://diplotaxis5-prod.v102.abes.fr:19082/solr/admin/cores?action=CREATE&name=periscope-v2&configSet=periscope-v2
```

### Pour restaurer les données solr, il suffit de se connecter sur le serveur diplotaxis5-prod.v102.abes.fr
(IL faut verifier que le core à bien été créé)
Se placer ici : /opt/pod/periscope-docker
il suffirait d'executer le script dans le repertoire cependant le script est très gourmant sur la baseXML. Il est donc conseiller de l'executer à des heures creusent ou d'utiliser la commande "at" qui permet de lancer un script en différé.

```
sudo docker exec -it periscope-batch at 2200
```

cela ouvre un petit editeur et il faudrait dans cette editeur lancer la commande ```/scripts/run_batch.sh >> /scripts/app.log``` comme la capture d'ecran si dessous.  
![image](https://github.com/user-attachments/assets/26fcebcd-ed35-40fc-9be0-83ea7dca6a71)

Pour quitter et sauvegarder notre commande en différé, il faut faire **ctrl + D**. (ps: si au moment de sauvegarder, le terminal parle du deamon atd, il suffit de lancer ```sudo docker exec -it periscope-batch atd``` dans la console puis de refaire la commande at 2200)
Une fois sauvegarder, On peut effectuer la commande suivante pour lister et verifier que notre script se lancera.
```
sudo docker exec -it periscope-batch at -l
```
![image](https://github.com/user-attachments/assets/a961dad6-07f8-496d-a808-837557ee29be)

_dans l'image on voit que mon script se lancera le 2 avril à 22h00 en 2025._
