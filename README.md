# docker-hugo
Docker image with hugo

Create account on https://circleci.com use Your github account. 
Install circlecli cli 

```bash
curl -fLSs https://circle.ci/cli | bash
```
or

```bash
curl -fLSs https://circle.ci/cli | DESTDIR=/opt/bin bash
``` 

Create deploy script in .circleci/config.yml

Validate it
```bash
circleci config validate
```
Write Dockerfile

Push it to github

Go to https://circleci.com Add project and build it
