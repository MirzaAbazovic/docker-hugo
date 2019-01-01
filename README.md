# Docker image with hugo

## Github -> CircleCi -> Docker hub
Create account on https://circleci.com (use Your github account).

Install circlecli cli 

```bash
curl -fLSs https://circle.ci/cli | bash
```
or

```bash
curl -fLSs https://circle.ci/cli | DESTDIR=/opt/bin bash
``` 

Write deploy script in .circleci/config.yml and Dockerfile

Validate circleci script
```bash
circleci config validate
```

Push code to github.

In order to build image using circleci and push it on docker hub:

1. If You don't have account on https://hub.docker.com/ - create it.

2. Go to https://circleci.com Add project from github.

3. In project settings set DOCKER_USERNAME and DOCKER_PASSWORD for https://hub.docker.com/

Push changes to github se how circleci builded and deployed image to docker hub.

This image is on https://hub.docker.com/r/abazovic/hugo


[![CircleCI](https://circleci.com/gh/MirzaAbazovic/docker-hugo.svg?style=svg)](https://circleci.com/gh/MirzaAbazovic/docker-hugo)
