#!/bin/bash

shopt -s expand_aliases
source /etc/bashrc

echo Starting pushgateway
pushgateway_port=$1
docker run --name pushgateway --restart=unless-stopped -d -p $pushgateway_port:9091 \
      prom/pushgateway:latest \
      '--web.enable-admin-api'

echo Start browser at http://localhost:$pushgateway_port/ and see the options.

