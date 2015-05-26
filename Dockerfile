FROM ubuntu:latest
MAINTAINER I-Ching Wang <forgets15@gmail.com>
RUN apt-get install -y --fix-missing apache2
RUN echo "Hello Http" > /var/www/html/hello.txt
ENTRYPOINT ["/usr/sbin/apachectl", "-f", "/etc/apache2/apache2.conf", "-e", "info", "-DFOREGROUND"]

