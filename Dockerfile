FROM ubuntu:18.04

RUN apt update
RUN apt install curl -y
RUN apt install jq -y
RUN apt install software-properties-common -y

RUN apt install vim -y
run apt install git -y
RUN apt install wget -y

ENV PATH="/opt/node-v14.19.1-linux-x64/bin:${PATH}"
RUN curl -k https://nodejs.org/dist/v14.19.1/node-v14.19.1-linux-x64.tar.gz |tar xzf - -C /opt/
RUN npm install -g npm@latest

RUN node --version
RUN npm --version


ENV ANSIBLE_HOST_KEY_CHECKING=False
