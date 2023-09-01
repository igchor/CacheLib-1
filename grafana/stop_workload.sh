#!/bin/sh

ids=`docker ps -a --filter="name=cachebench" --format="{{.ID}}"`
echo "$ids" | while read -r id
do
    if [ ! -z "$id" ]
    then
        echo "stop $id"
        echo Stopping and deleting $c
        docker rm $(docker stop $id)
    fi
done

rm -rf ../stats
