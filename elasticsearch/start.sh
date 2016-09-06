#!/bin/bash -xue

docker run \
    --net host \
    --name vince_elasticsearch \
    --detach \
    elasticsearch:2.4
#    -Des.network.bind_host=0.0.0.0


#    -p 9200:9200 \

docker rm vince_elasticsearch
