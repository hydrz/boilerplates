#!/bin/bash

docker network create -d bridge \
  --subnet=${SUBNET} \
  --ip-range=${IP_RANGE} \
  --gateway=${GATEWAY} \
  ${DOKCER_BRIDGE}
