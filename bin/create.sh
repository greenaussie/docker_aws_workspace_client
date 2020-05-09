#!/bin/bash

: ${1?"Usage: $0 <1|2|3|...>"}}

index=${1}

XSOCK=/tmp/.X11-unix
# XAUTH=/tmp/.docker.xauth
# xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
# chmod 0644 ${XAUTH}
podman create --name workspace_client_${index} --security-opt=label=type:container_runtime_t -e DISPLAY -v $XSOCK:$XSOCK -e DISPLAY=$DISPLAY  workspace_client:latest