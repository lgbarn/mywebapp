#!/bin/bash

docker build -t resume_site .
docker rm -f resume_site
docker run -t -d -p 80:80 --name resume_site resume_site
