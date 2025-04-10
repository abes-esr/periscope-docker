# periscope-docker

## Restauration d'application
 
il suffit de se connecter sur le serveur diplotaxis5-prod.v102.abes.fr
 
### Pour restaurer Solr
Il suffit de lancer le projet avec la commande suivante :
```
sudo docker compose up -d periscope-db
```

### Pour restaurer le Core
Il suffit de faire un appel get sur cette url (ou d'aller sur cette url)  
[http://diplotaxis5-prod.v102.abes.fr:19082/solr/admin/cores?action=CREATE&name=periscope-v2&configSet=periscope-v2](http://diplotaxis5-prod.v102.abes.fr:19082/solr/admin/cores?action=CREATE&name=periscope-v2&configSet=periscope-v2)

### Pour restaurer les données solR
(IL faut verifier que le core à bien été créé)
Se placer ici : /opt/pod/periscope-docker
il suffit de lancer le contenair periscope-batch. En effet, le contenair periscope-batch est programmer pour indexer les données via la base XML, de plus il index les données le jour du lancement du contenair (à 22h00 car l'indexation est tres gourmand). C'est à dire que si le contenair est déjà démarrer, il faudrait le redemarrer pour en etre sur.
```
sudo docker compose up -d periscope-batch
```
Une fois le contenair démarrer, il suffit d'attendre 22h pour qu'il index les données. on peut suivre les logs du contenair pour voir si tout c'est bien passé.
