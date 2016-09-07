#!/bin/bash

docker run \
    --net host \
    --name vince_kibana \
    --detach \
    --env ELASTICSEARCH_URL=http://127.0.0.1:9200 \
    kibana:latest
