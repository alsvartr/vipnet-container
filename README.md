# VipNet Client containers
Containers for VipNet client.

## Description
You need original VipNet packages, which is not included in this repo.

* docker: docker image files based on Ubuntu

## Docker

* Build image: `docker build vipnet:latest ./`
* Install keys:
`docker run -it --rm --name vipnet --privileged -v /path/to/key.dst:/tmp/key.dst -v /path/to/store/vipnet/:/root/.vipnet/ vipnet:latest`
* Run: `docker run -d --net=host --name vipnet --privileged -v /path/to/store/vipnet/:/root/.vipnet/ vipnet:latest`

Don't forget to pass `--privileged` and `--net=host` options!
