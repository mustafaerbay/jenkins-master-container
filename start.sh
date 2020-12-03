#!/bin/bash

proxy=$1

if [ X == "$proxy"X]; then
  docker run --user root --env http_proxy=http://$proxy --env https_proxy=http://$proxy -d --restart on-failure -v /data01/jenkins_home:/var/jenkins_home -v /data01/jenkins_sshkeys:/root/.ssh -p 8080:8080 -p 50000:50000 jenkinsci/blueocean:latest
else
  docker run --user root -d --restart on-failure -v /data01/jenkins_home:/var/jenkins_home -v /data01/jenkins_sshkeys:/root/.ssh -p 8080:8080 -p 50000:50000 jenkinsci/blueocean:latest
fi


