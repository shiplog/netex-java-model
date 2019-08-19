#!/bin/bash
docker build -t netexjavamodel .
docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -v $HOME/.m2:/root/.m2 -w /usr/src/mymaven netexjavamodel mvn clean install