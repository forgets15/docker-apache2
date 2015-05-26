Httpd
=====

Build
-----

```
<<<<<<< HEAD
docker build -no-cache -f Dockerfile -t forgets15/apache2:v0.0.4 .
=======
docker build -no-cache -f Dockerfile -t forgets15/apache2:v0.0.3 .
>>>>>>> 985a7c064562a30de7f8a9d129402ce3e710c358
```

Run
---

```
docker run -p 8888:80 -it --rm forgets15/apache2:v0.0.4
```

Test
----

```
curl -v 127.0.0.1:8888
netstat -l  | grep 8888
```
