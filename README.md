# Amazon WorkSpace client for Linux under Docker on Linux

Amazon WorkSpace client is released for Ubuntu 18.04. This allows the released package to be built as a Docker image, which can be run on a different Linux (or Linux like) distro. The author currently uses Fedora 31.

```bash
# Build the image
bin/build.sh

# Create the container
bin/create.sh

## Start the container

bin/start.sh
```
