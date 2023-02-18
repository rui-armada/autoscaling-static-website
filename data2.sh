#! /bin/bash
sudo yum update -y
sudo yum install -y docker
sudo systemctl start docker
sudo echo "FROM ubuntu:20.04
     RUN apt update -qq
     RUN apt install -y --no-install-recommends \
         python3 \
         python3-pip \
         awscli
     RUN pip install boto" > Dockerfile
sudo docker build -t mercedes /
sudo docker run -d -it --name=mercedes -P mercedes