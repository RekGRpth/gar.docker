#!/bin/sh -eux

docker pull ghcr.io/rekgrpth/gar.docker
docker volume create gar
docker network create --attachable --opt com.docker.network.bridge.name=docker docker || echo $?
docker stop gar || echo $?
docker rm gar || echo $?
docker run \
    --env GROUP_ID="$(id -g)" \
    --env LANG=ru_RU.UTF-8 \
    --env PGDATABASE=gar \
    --env PGHOST=/run/postgresql \
    --env PGUSER=gar \
    --env TZ=Asia/Yekaterinburg \
    --env USER_ID="$(id -u)" \
    --hostname gar \
    --interactive \
    --mount type=bind,source=/etc/certs,destination=/etc/certs,readonly \
    --mount type=bind,source=/run/postgresql,destination=/run/postgresql \
    --mount type=volume,source=gar,destination=/home \
    --name gar \
    --network name=docker \
    --rm \
    --tty \
    ghcr.io/rekgrpth/gar.docker su-exec gar:gar cron.sh
