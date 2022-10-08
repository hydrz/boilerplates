#!/bin/bash

set -ex

pushd $(dirname "$0")

source ../.env

# Create a bridge network to allow the containers to communicate
docker network create -d bridge \
  --subnet=${SUBNET} \
  --ip-range=${IP_RANGE} \
  --gateway=${GATEWAY} \
  ${DOKCER_BRIDGE}

popd
