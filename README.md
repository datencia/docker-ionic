[![Build Status](https://travis-ci.org/datencia/docker-ionic.svg?branch=master)](https://travis-ci.org/datencia/docker-ionic) [![](https://images.microbadger.com/badges/image/datencia/ionic.svg)](https://microbadger.com/images/datencia/ionic) [![](https://images.microbadger.com/badges/version/datencia/ionic.svg)](https://microbadger.com/images/datencia/ionic)

# Minimal docker image for Ionic projects to get CI

> based on [datencia/nodejs](https://hub.docker.com/r/datencia/nodejs/)

## Inspired by

- https://github.com/beevelop/docker-ionic
- https://github.com/marcoturi/ionic-docker
- https://github.com/agileek/docker

## Features

- Node 6
- Npm 5.6.0
- Yarn 1.3.2
- Ionic 3.19.1
- Cordova 8.0.0
- Google Chrome Headless for unit tests
- xvfb for e2e tests (Cypress & TestCafé)

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
