# docker-oraclelinux7-nfs-client-autofs

This image runs systemd to allow us to do the following:

- Connect to NFSv3 and NFSv4 shares
- Use autofs to leverage automounter
- Run SSH server

## Build the Docker image

> docker build -t *image* .

## Run the Docker image

> docker run --privileged -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro *image*

## Access the running container

> docker exec -it *container* bash
