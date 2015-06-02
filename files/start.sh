#!/usr/bin/env bash
sed -i "s/localhost:9200/$ELASTICSEARCH_PORT_9200_TCP_ADDR:$ELASTICSEARCH_PORT_9200_TCP_PORT/g" /opt/kibana/config/kibana.yml

exec /opt/kibana/bin/kibana
