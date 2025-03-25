# periscope-docker

## Restauration d'application (Work in progress..)

### Création du CORE

Pour restaurer le core, il suffit de faire un appel get au ws comme si dessous :
```
http://diplotaxis5-dev.v212.abes.fr:19082/solr/admin/cores?action=CREATE&name=periscope-v2&configSet=periscope-v2
```
on devrait avoir une reponse comme ceci :  
![image](https://github.com/user-attachments/assets/19637192-b7ea-43ff-a57e-650588d33b97)

Pour Vérifier que le core existe, il suffit d'aller sur la page d'admin de SOLR sur cette URL et voir s'ils ont voit bien le core _periscope-v2_
[http://diplotaxis5-dev.v212.abes.fr:19082/solr](http://diplotaxis5-dev.v212.abes.fr:19082/solr)   
![image](https://github.com/user-attachments/assets/fe215d74-3e1b-4af6-b9bb-f40a3468882b)

### Restauration des données

Pour restaurer les données solr, il suffit de réindexer les données via le contenair periscope-batch
Pour se fait, il faut executer le contenair avec la variable d'environement `PERISCOPE_BATCH_AT_STARTUP ` à `1` cependant le script est très gourmant sur la baseXML. Il est donc conseiller de l'executer à des heures creusent ou d'utiliser la commande "at" qui permet de lancer un script en différé.

```
at 2200
```

cela ouvre un petit editeur et il faudrait dans cette editeur ecrire la commande suivante : 
```
sudo docker compose up periscope-batch
```
_(ps: j'ai peur que le sudo ne passe pas)_
Pour quitter et sauvegarder notre commande en différé, il faut faire **ctrl + D**.

Une fois sauvegarder, On peut effectuer la commande suivante pour lister et verifier que notre script se lancera.
```
at -l
```
![image](https://github.com/user-attachments/assets/e75c21cf-f860-4ea3-961c-17e27aa77835)

_dans l'image du dessus on voit que ma commande se lancera le 18 fevrier à 22h00 en 2025._

