#!/bin/bash

docker run \
    --detach \
    --name vince_db \
    --env MYSQL_ROOT_PASSWORD=meow \
    --net host \
    --log-driver syslog \
    --log-opt syslog-address=udp://localhost:6060 \
    --volume ${PWD}:/etc/mysql/conf.d \
    mariadb:latest

#docker rm vince_db
