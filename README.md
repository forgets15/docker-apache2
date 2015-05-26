Httpd
=====

Build
-----

```
docker build -no-cache -f Dockerfile -t forgets15/docker-apache2:latest .
```

Run
---

```
docker run -p 8888:80 -it --rm forgets15/docker-apache2:latest
```

Test
----

```
curl -v 127.0.0.1:8888
netstat -l  | grep 8888
```
