#!/bin/bash

for i in nfs/*.xz; do docker load -i $i; done
#nfs
docker tag portus.teligen.com:5000/kismatic110/quay.io/external_storage/nfs-client-provisioner:latest  portus.teligen.com:5000/kubesprayns/quay.io/external_storage/nfs-client-provisioner:latest
docker push portus.teligen.com:5000/kubesprayns/quay.io/external_storage/nfs-client-provisioner:latest
