#!/bin/bash

for i in logging/*.xz; do docker load -i $i; done
#logging
docker tag  upmcenterprises/elasticsearch-operator:0.0.12             portus.teligen.com:5000/kubesprayns/upmcenterprises/elasticsearch-operator:0.0.12
docker tag  docker.elastic.co/kibana/kibana-oss:6.1.3                portus.teligen.com:5000/kubesprayns/docker.elastic.co/kibana/kibana-oss:6.1.3 
docker tag  upmcenterprises/docker-elasticsearch-kubernetes:6.1.3_0  portus.teligen.com:5000/kubesprayns/upmcenterprises/docker-elasticsearch-kubernetes:6.1.3_0
docker tag  fluent/fluent-bit:0.13.0                                 portus.teligen.com:5000/kubesprayns/fluent/fluent-bit:0.13.0
docker tag  upmcenterprises/cerebro:0.6.8                            portus.teligen.com:5000/kubesprayns/upmcenterprises/cerebro:0.6.8
docker push  portus.teligen.com:5000/kubesprayns/upmcenterprises/elasticsearch-operator:0.0.12
docker push  portus.teligen.com:5000/kubesprayns/docker.elastic.co/kibana/kibana-oss:6.1.3 
docker push  portus.teligen.com:5000/kubesprayns/upmcenterprises/docker-elasticsearch-kubernetes:6.1.3_0
docker push  portus.teligen.com:5000/kubesprayns/fluent/fluent-bit:0.13.0
docker push  portus.teligen.com:5000/kubesprayns/upmcenterprises/cerebro:0.6.8
