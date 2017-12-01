#!/bin/bash

docker-machine create gocd

docker $(docker-machine config gocd) run -d --name go-cd-server -p 8153:8153 -p 8154:8154 gocd/gocd-server:v17.11.0
docker $(docker-machine config gocd) run -d --name go-cd-agent1 -e GO_SERVER_URL=https://$(docker-machine ip gocd):8154/go gocd/gocd-agent-alpine-3.5:v17.11.0

echo "Webpage: http://$(docker-machine ip gocd):8153"
