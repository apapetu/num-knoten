#!/bin/sh

export COMPOSE_IGNORE_ORPHANS=True
export COMPOSE_PROJECT=num-knoten

docker-compose -p $COMPOSE_PROJECT -f fhir-gw/docker-compose.yml down
docker-compose -p $COMPOSE_PROJECT -f monitoring/docker-compose.yml down
docker-compose -p $COMPOSE_PROJECT -f i2b2/docker-compose.yml down
docker volume rm ${COMPOSE_PROJECT}_fhir-gateway-data
docker volume rm ${COMPOSE_PROJECT}_gpas-data
docker volume rm ${COMPOSE_PROJECT}_pg-data-volume
