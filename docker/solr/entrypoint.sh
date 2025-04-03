#!/bin/bash

if [ ! -d "/var/solr/data/configsets" ]; then
  mkdir /var/solr/data/configsets
fi

cp -r /opt/solr/server/solr/configsets/periscope-v2 /var/solr/data/configsets/periscope-v2

if [ $? -eq 0 ]; then
  chown -R solr:solr /var/solr/data/configsets/periscope-v2
  chmod -R 755 /var/solr/data/configsets/periscope-v2
else
  echo "Error copying configset"
  exit 1
fi

#tail -f /var/log/solr.log

solr start &
sleep 5
solr create_core -c periscope-v2 -d /var/solr/data/configsets/periscope-v2/conf -p 8983
solr restart -f
