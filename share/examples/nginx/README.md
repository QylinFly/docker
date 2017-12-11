<!-- toc -->

## 基本使用


### 拉去镜像

        docker pull nginx:1.13.7-alpine

### docker 未启动

```
**[terminal]
**[prompt localhost]**[path ~]**[delimiter  qylinqylin$ ]**[command docker pull nginx:1.13.7-alpine]
**[warning [Warning] failed to get default registry endpoint from daemon (Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?). Using system default: https://index.docker.io/v1/
    Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?]
```

### 正在加载

```
**[terminal]
**[prompt localhost]**[path ~]**[delimiter  qylinqylin$ ]**[command docker pull nginx:1.13.7-alpine]
1.13.7-alpine: Pulling from library/nginx
b1f00a6a160c: Pull complete 
893ab8d8734b: Downloading 2.817 MB/4.778 MB
5bd0e3e256d9: Download complete 
79c4e9920d30: Download complete 
Digest: sha256:f1ca87d9adb678b180c31bf21eb9798b043c22571f419ed844bca1d103f2a2f7
Status: Downloaded newer image for nginx:1.13.7-alpine
```

### 列举镜像

```
**[terminal]
**[prompt localhost]**[path ~]**[delimiter  qylinqylin$ ]**[command docker images]
REPOSITORY                     TAG                 IMAGE ID            CREATED             SIZE
nginx                          1.13.7-alpine       bf85f2b6bf52        11 hours ago        15.5 MB
gcr.io/tensorflow/tensorflow   1.3.0               1bb38d61d261        3 months ago        1.21 GB
gcr.io/tensorflow/tensorflow   latest              ea40dcc45724        9 months ago        1.03 GB
rmohr/activemq                 5.14.1-alpine       74d7bd0b3b47        11 months ago       171 MB
nginx-php7-fpm                 ssl                 a943fef2d168        11 months ago       246 MB
mysql                          latest              d9124e6c552f        12 months ago       383 MB
redis                          3.2.5-alpine        501ad78535f0        12 months ago       21 MB
```

### 启动一个容器服务
docker run --name my-nginx001 -p 5555:80 nginx:1.13.7-alpine

```
**[terminal]
**[prompt localhost]**[path ~]**[delimiter qylinqylin$ ]**[command docker docker run --name my-nginx001 -p 5555:80 nginx:1.13.7-alpine]
172.17.0.1 - - [23/Nov/2017:07:03:28 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36" "-"
172.17.0.1 - - [23/Nov/2017:07:03:30 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36" "-"
```

### 后台执行 -d

docker run -d --name my-nginx001 -p 5555:80 nginx:1.13.7-alpine
```
**[terminal]
**[prompt localhost]**[path ~]**[delimiter qylinqylin$ ]**[command docker run -d --name my-nginx001 -p 5555:80 nginx:1.13.7-alpine]
baaa25a9d57e4039522dd65f8a9a965be3e1edc84975c44d8eff71ddab7c7f51
**[prompt localhost]**[path ~]**[delimiter qylinqylin$ ]**[command docker ps]
CONTAINER ID        IMAGE                 COMMAND                  CREATED             STATUS              PORTS                                      NAMES
baaa25a9d57e        nginx:1.13.7-alpine   "nginx -g 'daemon ..."   18 seconds ago      Up 15 seconds       0.0.0.0:5555->80/tcp                       my-nginx001
```

### 查看所有容器 包含未启动
docker ps -a
localhost:~ qylinqylin$ docker ps -a    


### 进入容器
docker exec -it my-nginx001 /bin/sh

```
**[terminal]
**[prompt localhost]**[path ~]**[delimiter qylinqylin$ ]**[command docker exec -it my-nginx001 /bin/sh]
/ # ls -al
total 60
drwxr-xr-x   33 root     root          4096 Nov 23 07:13 .
drwxr-xr-x   33 root     root          4096 Nov 23 07:13 ..
-rwxr-xr-x    1 root     root             0 Nov 23 07:07 .dockerenv
drwxr-xr-x    2 root     root          4096 Oct 25 22:05 bin
drwxr-xr-x    5 root     root           340 Nov 23 07:07 dev
drwxr-xr-x   20 root     root          4096 Nov 23 07:07 etc
drwxr-xr-x    2 root     root          4096 Oct 25 22:05 home
drwxr-xr-x    6 root     root          4096 Nov 22 19:17 lib
drwxr-xr-x    5 root     root          4096 Oct 25 22:05 media
drwxr-xr-x    2 root     root          4096 Oct 25 22:05 mnt
dr-xr-xr-x  144 root     root             0 Nov 23 07:07 proc
drwx------    2 root     root          4096 Nov 23 07:13 root
drwxr-xr-x    2 root     root          4096 Oct 25 22:05 run
drwxr-xr-x    2 root     root          4096 Oct 25 22:05 sbin
drwxr-xr-x    2 root     root          4096 Oct 25 22:05 srv
dr-xr-xr-x   12 root     root             0 Nov 23 07:07 sys
drwxrwxrwt    2 root     root          4096 Nov 22 19:17 tmp
drwxr-xr-x   13 root     root          4096 Nov 22 19:17 usr
drwxr-xr-x   16 root     root          4096 Nov 23 07:07 var
/ # whoami
root
/ #
```


// 修改nginx启动参数 例如开启gzip 
// 如何讲一个宿主计算机的文件和目录映射到容器
// 何时需要挂载本地目录，
## [在Docker中管理数据](https://docs.docker.com/engine/admin/volumes/)
    https://docs.docker.com/engine/admin/volumes/


![](/assets/types-of-mounts-volume.png)

docker run -d --name my-nginx001 -p 5555:80 -v /Users/qylinqylin/GitBook/Library/qylinfly/docker/share/examples/nginx/nginx.conf:/etc/nginx/nginx.conf:ro nginx:1.13.7-alpine 

localhost:~ qylinqylin$ docker stop my-nginx001
my-nginx001
localhost:~ qylinqylin$ docker rm my-nginx001

// 这些还不够，我们要加载我们的页面才可以
docker run -d --name my-nginx001 -p 5555:80 -v /Users/qylinqylin/GitBook/Library/qylinfly/docker/share/examples//nginx/html:/usr/share/nginx/html:ro -v /Users/qylinqylin/GitBook/Library/qylinfly/docker/share/examples/nginx/nginx.conf:/etc/nginx/nginx.conf:ro nginx:1.13.7-alpine
```

## Dockerfile

### 基本结构

```json
**[terminal]
#
# Dockerfile for shadowsocks-libev
#

FROM alpine
MAINTAINER EasyPi Software Foundation

ENV SS_VER 3.1.0
ENV SS_URL https://github.com/shadowsocks/shadowsocks-libev/archive/v$SS_VER.tar.gz
ENV SS_DIR shadowsocks-libev-$SS_VER

RUN set -ex \
    && apk add --no-cache c-ares \
                          libcrypto1.0 \
                          pcre \
    && apk add --no-cache \
               --virtual TMP autoconf \
                             automake \
                             pcre-dev \
                             tar \
    && curl -sSL $SS_URL | tar xz \
    && cd $SS_DIR \
        && curl -sSL https://github.com/shadowsocks/ipset/archive/shadowsocks.tar.gz | tar xz --strip 1 -C libipset \
        && make install \
        && cd .. \
        && rm -rf $SS_DIR \
    && apk del TMP

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 8388
ENV METHOD      aes-256-cfb
ENV PASSWORD=
ENV TIMEOUT     60
ENV DNS_ADDR    8.8.8.8

EXPOSE $SERVER_PORT/tcp
EXPOSE $SERVER_PORT/udp

CMD ss-server -s "$SERVER_ADDR" \
              -u                \
              --fast-open $OPTIONS
```

### 如何使用

```
构建一个自己的镜像 Dockerfile  默认开启gzip
cd /Users/qylinqylin/GitBook/Library/qylinfly/docker/share/examples/nginx
docker build -t hwl-nginx:1.0 .

docker run -d --name my-nginx001 -p 5555:80 hwl-nginx:1.0
```



