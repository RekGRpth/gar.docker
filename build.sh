#!/bin/sh -eux

docker build --progress=plain --tag "ghcr.io/rekgrpth/gar.docker:${INPUTS_BRANCH:-latest}" $(env | grep -E '^DOCKER_' | grep -v ' ' | sort -u | sed 's@^@--build-arg @g' | paste -s -d ' ') --file "${INPUTS_DOCKERFILE:-Dockerfile}" . 2>&1 | tee build.log
