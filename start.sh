#!/bin/bash

# Use host networking to avoid having to map every hostname needed for the simulation
docker run --detach=true --name=rabbitmq-service --net=host --publish=8500:8500 --env=NEW_RELIC_APP_NAME=rabbitmq-service --env=NEW_RELIC_HOST_DISPLAY_NAME=${HOSTNAME} kurron/monitor-rabbitmq:latest
docker logs --follow=true --tail=25 rabbitmq-service
