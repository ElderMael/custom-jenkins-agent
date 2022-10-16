#!/usr/bin/env bash

set -ex

tag='eldermael/custom-jenkins-agent:latest'

if [[ ! "${CI}" == "true" ]]; then
  docker login
fi

docker build -t  "${tag}" .

docker push "${tag}"