#!/bin/bash

set -ex

pushd $(dirname "$0")

source ../.env

# Create a bridge network to allow the containers to communicate
podman network create -d bridge \
  --subnet=${SUBNET} \
  --ip-range=${IP_RANGE} \
  --gateway=${GATEWAY} \
  ${DOCKER_BRIDGE}

popd
