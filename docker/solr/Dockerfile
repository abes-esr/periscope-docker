FROM solr:8.8.2

COPY ./docker/solr/conf /opt/solr/server/solr/configsets/periscope-v2/conf
COPY ./docker/solr/entrypoint.sh /entrypoint.sh

USER root
RUN chown -R solr:solr /opt/solr/server/solr/configsets/periscope-v2/conf
RUN chown -R solr:solr /var/solr/data
RUN chmod +x /entrypoint.sh
USER solr

# Créer le coeur solr au démarrage
#CMD ["solr-precreate", "periscope-v2", "/opt/solr/server/solr/configsets/periscope-v2/conf"]
EXPOSE 8983

ENTRYPOINT ["/entrypoint.sh"]
