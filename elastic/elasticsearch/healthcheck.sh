#!/bin/sh

# miss-use health check to do some fixed setups
curl -u elastic:$ELASTIC_PASSWORD --fail --silent --output /dev/null -X POST -H "Content-Type: application/json" http://localhost:9200/_security/user/kibana_system/_password -d "{ \"password\": \"$ELASTIC_PASSWORD\" }"

# healthcheck
curl -u elastic:$ELASTIC_PASSWORD --silent http://localhost:9200/_cluster/health | grep -vq '"status":"red"'