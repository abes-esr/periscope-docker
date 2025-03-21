#!/bin/bash

if [ ! -d "/var/solr/data/configsets" ]; then
  mkdir /var/solr/data/configsets
fi

cp -r /opt/solr/server/solr/configsets/periscope-v2 /var/solr/data/configsets/periscope-v2

if [ $? -eq 0 ]; then
  chown -R solr:solr /var/solr/data/configsets/periscope-v2
  chmod -R 755 /var/solr/data/configsets/periscope-v2
  solr start -f
else
  echo "Error copying configset"
  exit 1
fi

tail -f /var/log/solr.log
