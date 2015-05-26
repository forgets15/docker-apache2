FROM ubuntu:latest
MAINTAINER I-Ching Wang <forgets15@gmail.com>

RUN apt-get install -y --fix-missing apache2
RUN apt-get install -y curl automake gcc
RUN sudo /etc/init.d/apache2 start
RUN netstat -l --numeric-ports

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
