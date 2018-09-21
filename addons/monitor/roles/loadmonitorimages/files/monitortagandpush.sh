#!/bin/bash

for i in monitor/*.xz; do docker load -i $i; done
#monitor
docker tag quay.io/coreos/hyperkube:v1.7.6_coreos.0           portus.teligen.com:5000/kubesprayns/quay.io/coreos/hyperkube:v1.7.6_coreos.0
docker tag quay.io/coreos/prometheus-config-reloader:v0.20.0  portus.teligen.com:5000/kubesprayns/quay.io/coreos/prometheus-config-reloader:v0.20.0
docker tag quay.io/coreos/configmap-reload:v0.0.1             portus.teligen.com:5000/kubesprayns/quay.io/coreos/configmap-reload:v0.0.1
docker tag quay.io/coreos/prometheus-operator:v0.20.0         portus.teligen.com:5000/kubesprayns/quay.io/coreos/prometheus-operator:v0.20.0
docker tag quay.io/prometheus/alertmanager:v0.14.0            portus.teligen.com:5000/kubesprayns/quay.io/prometheus/alertmanager:v0.14.0
docker tag quay.io/prometheus/prometheus:v2.2.1               portus.teligen.com:5000/kubesprayns/quay.io/prometheus/prometheus:v2.2.1
docker tag gcr.io/google_containers/kube-state-metrics:v1.2.0 portus.teligen.com:5000/kubesprayns/gcr.io/google_containers/kube-state-metrics:v1.2.0
docker tag gcr.io/google_containers/addon-resizer:1.7         portus.teligen.com:5000/kubesprayns/gcr.io/google_containers/addon-resizer:1.7
docker tag quay.io/prometheus/node-exporter:v0.15.2           portus.teligen.com:5000/kubesprayns/quay.io/prometheus/node-exporter:v0.15.2
docker tag grafana/grafana:5.0.0                              portus.teligen.com:5000/kubesprayns/grafana/grafana:5.0.0
docker tag quay.io/coreos/grafana-watcher:v0.0.8              portus.teligen.com:5000/kubesprayns/quay.io/coreos/grafana-watcher:v0.0.8
docker push portus.teligen.com:5000/kubesprayns/quay.io/coreos/hyperkube:v1.7.6_coreos.0
docker push portus.teligen.com:5000/kubesprayns/quay.io/coreos/prometheus-config-reloader:v0.20.0
docker push portus.teligen.com:5000/kubesprayns/quay.io/coreos/configmap-reload:v0.0.1
docker push portus.teligen.com:5000/kubesprayns/quay.io/coreos/prometheus-operator:v0.20.0
docker push portus.teligen.com:5000/kubesprayns/quay.io/prometheus/alertmanager:v0.14.0
docker push portus.teligen.com:5000/kubesprayns/quay.io/prometheus/prometheus:v2.2.1
docker push portus.teligen.com:5000/kubesprayns/gcr.io/google_containers/kube-state-metrics:v1.2.0
docker push portus.teligen.com:5000/kubesprayns/gcr.io/google_containers/addon-resizer:1.7
docker push portus.teligen.com:5000/kubesprayns/quay.io/prometheus/node-exporter:v0.15.2
docker push portus.teligen.com:5000/kubesprayns/grafana/grafana:5.0.0
docker push portus.teligen.com:5000/kubesprayns/quay.io/coreos/grafana-watcher:v0.0.8
