#!/bin/bash

docker build --pull --tag="kurron/monitor-rabbitmq:latest" .
docker images
