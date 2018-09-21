#!/bin/bash

for i in jenkins/*.xz; do docker load -i $i; done
#jenkins
docker tag chadmoon/jenkins-docker-kubectl:latest  portus.teligen.com:5000/kubesprayns/chadmoon/jenkins-docker-kubectl:latest
docker tag nginx:latest                            portus.teligen.com:5000/kubesprayns/nginx:latest
docker tag jenkins/jnlp-slave:alpine               portus.teligen.com:5000/kubesprayns/jenkins/jnlp-slave:alpine              
docker push portus.teligen.com:5000/kubesprayns/chadmoon/jenkins-docker-kubectl:latest
docker push portus.teligen.com:5000/kubesprayns/nginx:latest
docker push portus.teligen.com:5000/kubesprayns/jenkins/jnlp-slave:alpine             
