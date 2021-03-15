#!/bin/bash
docker image rm 254038622216.dkr.ecr.eu-central-1.amazonaws.com/noa-dev:latest
docker image rm noa-dev:latest
docker build -t noa-dev .
docker tag noa-dev:latest 254038622216.dkr.ecr.eu-central-1.amazonaws.com/noa-dev:latest
aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin https://254038622216.dkr.ecr.eu-central-1.amazonaws.com
docker push 254038622216.dkr.ecr.eu-central-1.amazonaws.com/noa-dev:latest