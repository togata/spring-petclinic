#!/bin/bash
# start networking
docker network create petclinic-net

# start mysql
docker run -d \
    --network petclinic-net \
    --network-alias mysql \
    -v petclinic-data:/var/lib/mysql \
    --name db \
    -e MYSQL_USER=petclinic \
    -e MYSQL_PASSWORD=petclinic \
    -e MYSQL_ROOT_PASSWORD=root \
    -e MYSQL_DATABASE=petclinic \
    -p 3306:3306 \
    mysql:5.7
