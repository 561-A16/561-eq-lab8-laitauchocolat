#!bin/bash

set –v 
docker pull webapp:release
docker stop $(docker ps -a -q) 
docker rm $(docker ps -a -q) 
