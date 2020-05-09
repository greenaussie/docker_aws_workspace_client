#!/bin/bash

: ${1?"Usage: $0 <1|2|3|...>"}}

index=${1}

podman start workspace_client_${index}