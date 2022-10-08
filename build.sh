#!/usr/bin/env bash

set -ex

command="img"
tag='eldermael/custom-jenkins-agent:latest'

if [[ ! "${CI}" == "true" ]]; then
  command="docker"
  "${command}" login
fi

"${command}" build -t  "${tag}" .

"${command}" push "${tag}"