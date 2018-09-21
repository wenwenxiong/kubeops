#!/bin/bash

for i in openebs/*.xz; do docker load -i $i; done
#openebs
docker tag openebs/m-apiserver:0.6.0              portus.teligen.com:5000/kubesprayns/openebs/m-apiserver:0.6.0
docker tag openebs/openebs-k8s-provisioner:0.6.0  portus.teligen.com:5000/kubesprayns/openebs/openebs-k8s-provisioner:0.6.0
docker tag openebs/jiva:0.6.0                     portus.teligen.com:5000/kubesprayns/openebs/jiva:0.6.0
docker tag openebs/snapshot-controller:0.6.0      portus.teligen.com:5000/kubesprayns/openebs/snapshot-controller:0.6.0
docker tag openebs/snapshot-provisioner:0.6.0     portus.teligen.com:5000/kubesprayns/openebs/snapshot-provisioner:0.6.0
docker tag openebs/m-exporter:0.6.0               portus.teligen.com:5000/kubesprayns/openebs/m-exporter:0.6.0
docker tag prom/prometheus:v2.1.0                 portus.teligen.com:5000/kubesprayns/prom/prometheus:v2.1.0
docker tag grafana/grafana:4.6.3                  portus.teligen.com:5000/kubesprayns/grafana/grafana:4.6.3
docker tag jenkins/jenkins:lts                    portus.teligen.com:5000/kubesprayns/jenkins/jenkins:lts                     
docker push portus.teligen.com:5000/kubesprayns/openebs/m-apiserver:0.6.0
docker push portus.teligen.com:5000/kubesprayns/openebs/openebs-k8s-provisioner:0.6.0
docker push portus.teligen.com:5000/kubesprayns/openebs/jiva:0.6.0
docker push portus.teligen.com:5000/kubesprayns/openebs/snapshot-controller:0.6.0
docker push portus.teligen.com:5000/kubesprayns/openebs/snapshot-provisioner:0.6.0
docker push portus.teligen.com:5000/kubesprayns/openebs/m-exporter:0.6.0
docker push portus.teligen.com:5000/kubesprayns/prom/prometheus:v2.1.0
docker push portus.teligen.com:5000/kubesprayns/grafana/grafana:4.6.3
docker push portus.teligen.com:5000/kubesprayns/jenkins/jenkins:lts                   
