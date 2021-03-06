#!/bin/bash

set -x
pwd
ls kong/*.xz
for i in kong/*.xz; do docker load -i $i; done
#kong
docker tag portus.teligen.com:5000/kismatic110/postgres:9.6          portus.teligen.com:5000/kubesprayns/postgres:9.6
docker tag portus.teligen.com:5000/kismatic110/pantsel/konga         portus.teligen.com:5000/kubesprayns/pantsel/konga
docker tag portus.teligen.com:5000/kismatic110/pgbi/kong-dashboard   portus.teligen.com:5000/kubesprayns/pgbi/kong-dashboard
docker tag portus.teligen.com:5000/kismatic110/kong                  portus.teligen.com:5000/kubesprayns/kong                
docker push portus.teligen.com:5000/kubesprayns/postgres:9.6
docker push portus.teligen.com:5000/kubesprayns/pantsel/konga
docker push portus.teligen.com:5000/kubesprayns/pgbi/kong-dashboard
docker push portus.teligen.com:5000/kubesprayns/kong
set +x
