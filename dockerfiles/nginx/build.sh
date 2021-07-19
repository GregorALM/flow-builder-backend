#!/bin/sh
set -e

TAG=$1
if [ "$TAG" = "" ]; then
  echo Please set tag fot dokcer image: build.sh tag_name
  exit 2
fi

PUSH=$2
if [ "$PUSH" != "push" ]; then
  echo Run without pushing
fi

DOCKER_IMAGE=602044514283.dkr.ecr.eu-central-1.amazonaws.com/jc_site/nginx

docker build -t $DOCKER_IMAGE:$TAG -f Dockerfile .
[ "$PUSH" = "push" ] && docker push $DOCKER_IMAGE:$TAG
