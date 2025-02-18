# periscope-docker

## Restauration d'application (Work in progress..)
Pour restaurer les données solr, il suffit de se connecter sur le serveur [[LIEN]] avec l'utilisateur dédié au batch.
Se placer ici : /home/batch/periscope
il suffirait d'executer le script dans le repertoire cependant le script est très gourmant sur la baseXML. Il est donc conseiller de l'executer à des heures creusent ou d'utiliser la commande "at" qui permet de lancer un script en différé.

```
at 2200
```

cela ouvre un petit editeur et il faudrait dans cette editeur lancer la commande ./run_batch.sh.  
![image](https://github.com/user-attachments/assets/11ebe904-1972-4020-9583-71b2475637a6)  
Pour quitter et sauvegarder notre commande en différé, il faut faire **ctrl + D**.

Une fois sauvegarder, On peut effectuer la commande suivante pour lister et verifier que notre script se lancera.
```
at -l
```
![image](https://github.com/user-attachments/assets/e75c21cf-f860-4ea3-961c-17e27aa77835)

_dans l'image on voit que mon scripte se lancera le 18 fevrier à 22h00 en 2025._

