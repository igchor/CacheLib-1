#!/bin/sh

id=`docker ps -a -q --filter="name=cachebench" --format="{{.ID}}"`
if [ ! -z "$id" ]
then
    echo Stopping and deleting $c
    docker rm $(docker stop $id)
fi

rm -rf ../stats