FROM node:8.9
WORKDIR /home/node
COPY sources.list /etc/apt/sources.list
COPY google-chrome-stable_current_amd64.deb /home/node
MAINTAINER fangbao@i-counting.cn
RUN sh -cx "apt-get update;dpkg -i google-chrome-stable_current_amd64.deb;apt-get -fy install"