#!/bin/bash

# Author: Srinivas Kotla
# Date: October, 2020

# Running this script without options will automatically build the Jenkins docker image
# and run jenkins-master container
# Jenkins will be accessible from http://localhost:8080
# Run the myTestPipeLine jenkins project
# This will just demonstrate the pipeline steps but not build/test/deploy anything.

# Running ./run.sh cleanup will clean up the docker image and container.

if [ "$1" == "cleanup" ]; then
  echo "Stopping and deleting jenkins-master container"
  docker stop jenkins-master
  docker rm jenkins-master
  echo "Removing myjenkins docker image"
  docker rmi myjenkins
else
  echo "Preparing for docker build"
  cd jenkins-master
  if [ ! -d jenkins-data ]; then
    tar zxf jenkins-data.tar.gz
  fi
  echo "Running docker build for myjenkins..."
  docker build -t myjenkins .
  echo "Running the docker container jenkins-master"
  docker run -p 8080:8080 -p 50000:50000 --name=jenkins-master -v jenkins-data:/var/jenkins_home -d myjenkins
  echo "Launch jenkins at http://localhost:8080"
  echo "Login with username admin and password admin"
  echo "Run myTestPipeLine"
fi

