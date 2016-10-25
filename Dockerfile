FROM ubuntu:latest
RUN sh -c 'echo "deb http://us.archive.ubuntu.com/ubuntu xenial main universe" >> /etc/apt/sources.list'
RUN apt-get update
RUN apt-get install -y tinyproxy
RUN rm /etc/tinyproxy.conf
COPY tinyproxy.conf /etc/tinyproxy.conf
RUN service tinyproxy restart
EXPOSE 8888
