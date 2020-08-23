#!/bin/bash
docker run --rm -d -p 8080:8080 \
    --network petclinic-net \
    -e SPRING_DATASOURCE_URL="jdbc:mysql://mysql:3306/petclinic?autoReconnect=true&failOverReadOnly=false&maxReconnects=10" \
    -e SPRING_DATASOURCE_USERNAME=petclinic \
    -e SPRING_DATASOURCE_PASSWORD=petclinic \
    -e SPRING_DATASOURE_INITIALIZE=yes \
    -e SPRING.DATASOURCE.INITIALIZATION-MODE=always \
    -e SPRING_PROFILES_ACTIVE=mysql \
    togata88/spring-petclinic:latest
