#!/bin/bash
# Démarrer Solr en arrière-plan
/opt/solr/bin/solr start -f &
cp -R /configs-periscope-v2/ /var/solr/data/periscope-v2/
chown -R 8983:8983 /var/solr/data
tail -f /dev/null
