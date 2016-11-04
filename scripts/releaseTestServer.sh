#!bin/bash
set -v
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi juju69/webapp:latest
docker pull juju69/webapp:latest
docker run -itd -p 6042:5000 juju69/webapp:latest
