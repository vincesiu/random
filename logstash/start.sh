#!/bin/bash -xu


docker run \
    --interactive \
    --tty \
    --name vince_logstash \
    --net host \
    --volume ${PWD}:/config-dir \
    logstash:latest \
    logstash -f /config-dir/logstash.conf

#    logstash -e 'input { stdin {} } output { file { path => "/yay.txt" } }'
#    logstash -e 'input { stdin {} } output { stdout {} }'
 

docker rm vince_logstash
