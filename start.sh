#!/bin/bash

LIST="db logstash kibana elasticsearch"

for dir in $LIST; do
    ${dir}/start.sh
done
