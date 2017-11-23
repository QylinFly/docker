
# 拉去镜像
    
    docker pull nginx:1.13.7-alpine
    
    // docker 未启动
    localhost:~ qylinqylin$ docker pull nginx:1.13.7-alpine
    Warning: failed to get default registry endpoint from daemon (Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?). Using system default: https://index.docker.io/v1/
    Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?
    
    
    // 正在加载
    localhost:~ qylinqylin$ docker pull nginx:1.13.7-alpine
    1.13.7-alpine: Pulling from library/nginx
    b1f00a6a160c: Pull complete 
    893ab8d8734b: Downloading 2.817 MB/4.778 MB
    5bd0e3e256d9: Download complete 
    79c4e9920d30: Download complete 
    
    // 加载完成
    localhost:~ qylinqylin$ docker pull nginx:1.13.7-alpine
    1.13.7-alpine: Pulling from library/nginx
    b1f00a6a160c: Pull complete 
    893ab8d8734b: Pull complete 
    5bd0e3e256d9: Pull complete 
    79c4e9920d30: Pull complete 
    Digest: sha256:f1ca87d9adb678b180c31bf21eb9798b043c22571f419ed844bca1d103f2a2f7
    Status: Downloaded newer image for nginx:1.13.7-alpine
    
    // 列举镜像    
    localhost:~ qylinqylin$ docker images
    REPOSITORY                     TAG                 IMAGE ID            CREATED             SIZE
    nginx                          1.13.7-alpine       bf85f2b6bf52        11 hours ago        15.5 MB
    gcr.io/tensorflow/tensorflow   1.3.0               1bb38d61d261        3 months ago        1.21 GB
    gcr.io/tensorflow/tensorflow   latest              ea40dcc45724        9 months ago        1.03 GB
    rmohr/activemq                 5.14.1-alpine       74d7bd0b3b47        11 months ago       171 MB
    nginx-php7-fpm                 ssl                 a943fef2d168        11 months ago       246 MB
    mysql                          latest              d9124e6c552f        12 months ago       383 MB
    redis                          3.2.5-alpine        501ad78535f0        12 months ago       21 MB
    
    
    docker run --name my-nginx001 -p 5555:80 nginx:1.13.7-alpine
    
    localhost:~ qylinqylin$ docker run --name my-nginx001 -p 5555:80 nginx:1.13.7-alpine
    172.17.0.1 - - [23/Nov/2017:07:03:28 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36" "-"
    172.17.0.1 - - [23/Nov/2017:07:03:30 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36" "-"

    // 后台执行 -d
    docker run -d --name my-nginx001 -p 5555:80 nginx:1.13.7-alpine
    
        localhost:~ qylinqylin$ docker run -d --name my-nginx001 -p 5555:80 nginx:1.13.7-alpine
    baaa25a9d57e4039522dd65f8a9a965be3e1edc84975c44d8eff71ddab7c7f51
    localhost:~ qylinqylin$
    
    localhost:~ qylinqylin$ docker ps
    CONTAINER ID        IMAGE                 COMMAND                  CREATED             STATUS              PORTS                                      NAMES
    baaa25a9d57e        nginx:1.13.7-alpine   "nginx -g 'daemon ..."   18 seconds ago      Up 15 seconds       0.0.0.0:5555->80/tcp                       my-nginx001
    localhost:~ qylinqylin$ 
    
    // 查看所有容器 包含未启动
    docker ps -a
    localhost:~ qylinqylin$ docker ps -a    

    
    // 进入容器
    docker exec -it my-nginx001 /bin/sh

    localhost:~ qylinqylin$ docker exec -it my-nginx001 /bin/sh
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
    
    
    // 修改nginx启动参数 例如开启gzip
    docker run -d --name my-nginx001 -p 5555:80 -v /Users/qylinqylin/GitBook/Library/qylinfly/docker/share/examples/nginx/nginx.conf:/etc/nginx/nginx.conf:ro nginx:1.13.7-alpine 
    
    localhost:~ qylinqylin$ docker stop my-nginx001
    my-nginx001
    localhost:~ qylinqylin$ docker rm my-nginx001
    
    // 这些还不够，我们要加载我们的页面才可以
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    