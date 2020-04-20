# Amazon WorkSpace client for Linux under Docker on Linux

Amazon WorkSpace client is released for Ubuntu 18.04. This allows the released package to be built as a Docker image, which can be run on a different Linux (or Linux like) distro. The author currently uses Fedora 31.

## Prequistes

1. Docker
1. Bash

## Instructions

```bash
# Build the image
bin/build.sh

# Create the container
bin/create.sh

## Start the container

bin/start.sh
```

## Updates

Rebuild to update.

## References

1. [https://clients.amazonworkspaces.com/linux-install.html](https://clients.amazonworkspaces.com/linux-install.html)
1. [https://stackoverflow.com/questions/16296753/can-you-run-gui-applications-in-a-docker-container](https://stackoverflow.com/questions/16296753/can-you-run-gui-applications-in-a-docker-container)