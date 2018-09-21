#!/bin/bash

set -x
dockerimages=(
quay.io/coreos/hyperkube:v1.7.6_coreos.0
quay.io/coreos/prometheus-config-reloader:v0.20.0
quay.io/coreos/configmap-reload:v0.0.1
quay.io/coreos/prometheus-operator:v0.20.0
quay.io/prometheus/alertmanager:v0.14.0
quay.io/prometheus/prometheus:v2.2.1
gcr.io/google_containers/kube-state-metrics:v1.2.0
gcr.io/google_containers/addon-resizer:1.7
quay.io/prometheus/node-exporter:v0.15.2
grafana/grafana:5.0.0
)

j=1
for i in ${dockerimages[@]}
do
    echo $i
    echo $j

    docker pull $i && docker save $i -o $j.tar && xz $j.tar
    docker rmi $i
    let j+=1
done
set +x

