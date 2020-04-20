#!/bin/bash
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
chmod 644 ${XAUTH}
docker create --name workspace_client_1 -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTH  workspace_client:latest