#!/bin/bash

echo "export DOCKER_HOST=unix:///var/run/docker.sock" >> /root/.profile
echo "DOCKER_DAEMON_ARGS=\"--dns 8.8.8.8\"" >> /root/.profile
source /root/.profile

#start docker in docker
nohup /usr/local/bin/wrapdocker &

java -jar /swarm-client-2.0-jar-with-dependencies.jar -disableSslVerification -master http://jenkins:80