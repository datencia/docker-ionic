[![Build Status](https://travis-ci.org/datencia/docker-ionic.svg?branch=master)](https://travis-ci.org/datencia/docker-ionic) [![](https://images.microbadger.com/badges/image/datencia/ionic.svg)](https://microbadger.com/images/datencia/ionic) [![](https://images.microbadger.com/badges/version/datencia/ionic.svg)](https://microbadger.com/images/datencia/ionic)

# Minimal docker image for Ionic projects to get CI

> based on [node:10.24.0](https://hub.docker.com/_/node/)

## Inspired by

- https://github.com/beevelop/docker-ionic
- https://github.com/marcoturi/ionic-docker
- https://github.com/agileek/docker

## Features

- Node 10.24.0
- Npm 6.14.11
- Yarn 1.12.3
- Ionic 6.12.3
- Cordova 10.0.0
- Google Chrome Headless for unit tests

## Usage

### Pull from Docker Hub

```bash
docker pull datencia/ionic:latest
```

### Build from Dockerfile

```bash
docker build -t datencia/ionic .
```

### Build from GitHub

```bash
docker build -t datencia/ionic github.com/datencia/docker-ionic
```

### Run image

```bash
docker run -it datencia/ionic bash
```

### Use as base image

```Dockerfile
FROM datencia/ionic:latest
```
