#!/bin/bash

set -ex

pushd $(dirname "$0")

source ../.env

docker network rm ${DOCKER_BRIDGE}

popd
