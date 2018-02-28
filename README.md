[![Build Status](https://travis-ci.org/datencia/docker-ionic.svg?branch=master)](https://travis-ci.org/datencia/docker-ionic) [![](https://images.microbadger.com/badges/image/datencia/ionic.svg)](https://microbadger.com/images/datencia/ionic) [![](https://images.microbadger.com/badges/version/datencia/ionic.svg)](https://microbadger.com/images/datencia/ionic)

# Minimal docker image for Ionic projects to get CI

> based on [datencia/nodejs](https://github.com/datencia/docker-nodejs)

## Features

- Node
- Npm or Yarn
- Ionic
- Cordova
- Google Chrome Headless for unit tests

## Usage

### Pull from Docker Hub

```bash
docker pull datencia/ionic:latest
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