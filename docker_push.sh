#!/bin/bash

tag=""
if [[ $1 = "master" ]]; then
    tag="mozilla/hindsight_admin:master"
elif [[ $1 = "dev" ]]; then
    tag="mozilla/hindsight_admin:dev"
else
    exit 1
fi

docker tag mozilla/hindsight_admin $tag
docker login -u "$DOCKER_USER" -p "$DOCKER_PASS"
docker push $tag
