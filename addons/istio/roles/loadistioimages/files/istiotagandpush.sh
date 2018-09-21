#!/bin/bash

for i in istio/*.xz;do docker load -i $i;done
#istio
docker tag gcr.io/istio-release/proxy_init:release-1.0-latest-daily        portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/proxy_init:release-1.0-latest-daily
docker tag quay.io/coreos/hyperkube:v1.7.6_coreos.0                        portus.teligen.com:5000/kubesprayns/quay.io/coreos/hyperkube:v1.7.6_coreos.0
docker tag docker.io/prom/statsd-exporter:v0.6.0                           portus.teligen.com:5000/kubesprayns/docker.io/prom/statsd-exporter:v0.6.0
docker tag gcr.io/istio-release/galley:release-1.0-latest-daily            portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/galley:release-1.0-latest-daily
docker tag gcr.io/istio-release/proxyv2:release-1.0-latest-daily           portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/proxyv2:release-1.0-latest-daily
docker tag gcr.io/istio-release/mixer:release-1.0-latest-daily             portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/mixer:release-1.0-latest-daily
docker tag gcr.io/istio-release/pilot:release-1.0-latest-daily             portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/pilot:release-1.0-latest-daily
docker tag docker.io/prom/prometheus:v2.3.1                                portus.teligen.com:5000/kubesprayns/docker.io/prom/prometheus:v2.3.1
docker tag gcr.io/istio-release/citadel:release-1.0-latest-daily           portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/citadel:release-1.0-latest-daily
docker tag gcr.io/istio-release/sidecar_injector:release-1.0-latest-daily  portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/sidecar_injector:release-1.0-latest-daily
docker tag docker.io/jaegertracing/all-in-one:1.5                      portus.teligen.com:5000/kubesprayns/docker.io/jaegertracing/all-in-one:1.5
docker tag docker.io/kiali/kiali:istio-release-1.0                     portus.teligen.com:5000/kubesprayns/docker.io/kiali/kiali:istio-release-1.0
docker tag quay.io/jetstack/cert-manager-controller:v0.3.1             portus.teligen.com:5000/kubesprayns/quay.io/jetstack/cert-manager-controller:v0.3.1
docker tag gcr.io/istio-release/servicegraph:release-1.0-latest-daily  portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/servicegraph:release-1.0-latest-daily
docker tag gcr.io/istio-release/grafana:release-1.0-latest-daily       portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/grafana:release-1.0-latest-daily
docker push portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/proxy_init:release-1.0-latest-daily
docker push portus.teligen.com:5000/kubesprayns/quay.io/coreos/hyperkube:v1.7.6_coreos.0
docker push portus.teligen.com:5000/kubesprayns/docker.io/prom/statsd-exporter:v0.6.0
docker push portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/galley:release-1.0-latest-daily
docker push portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/proxyv2:release-1.0-latest-daily
docker push portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/mixer:release-1.0-latest-daily
docker push portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/pilot:release-1.0-latest-daily
docker push portus.teligen.com:5000/kubesprayns/docker.io/prom/prometheus:v2.3.1
docker push portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/citadel:release-1.0-latest-daily
docker push portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/sidecar_injector:release-1.0-latest-daily
docker push portus.teligen.com:5000/kubesprayns/docker.io/jaegertracing/all-in-one:1.5
docker push portus.teligen.com:5000/kubesprayns/docker.io/kiali/kiali:istio-release-1.0
docker push portus.teligen.com:5000/kubesprayns/quay.io/jetstack/cert-manager-controller:v0.3.1
docker push portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/servicegraph:release-1.0-latest-daily
docker push portus.teligen.com:5000/kubesprayns/gcr.io/istio-release/grafana:release-1.0-latest-daily
