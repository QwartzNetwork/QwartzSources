#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-qwartzpay/qwartzd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/qwartzd docker/bin/
cp $BUILD_DIR/src/qwartz-cli docker/bin/
cp $BUILD_DIR/src/qwartz-tx docker/bin/
strip docker/bin/qwartzd
strip docker/bin/qwartz-cli
strip docker/bin/qwartz-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
