Httpd
=====

Build
-----

```
docker build -no-cache -f Dockerfile -t forgets15/apache2:v0.0.3 .
```

Run
---

```
docker run -p 8888:80 -it --rm forgets15/apache2:v0.0.3
```

Test
----

```
curl -v 127.0.0.1:8888
netstat -l  | grep 8888
```
