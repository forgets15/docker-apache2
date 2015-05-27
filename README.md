Docker-apache2
==============

Dockerfile
----------
```
FROM gliderlabs/alpine:3.1
MAINTAINER I-Ching Wang <forgets15@gmail.com>
RUN apk --update add apache2
ENTRYPOINT ["/usr/sbin/apachectl", "-f", "/etc/apache2/httpd.conf", "-e", "info", "-DFOREGROUND"]
```

How to build
------------

```
docker build -no-cache -f Dockerfile -t forgets15/docker-apache2:latest .
```

How to run
----------

```
docker run -p 8888:80 -it --rm forgets15/docker-apache2:latest
```

How to test
-----------

```
curl -v 127.0.0.1:8888
netstat -l  | grep 8888
```
