<!-- toc -->


# 服务-负载均衡

## 运行新的负载平衡应用程序

    $ docker swarm init
    $ docker stack deploy -c docker-compose.yml getstartedlab
    
##Take down the app and the swarm
Take the app down with docker stack rm:

    docker stack rm getstartedlab
    
Take down the swarm.

    docker swarm leave --force

# 集群服务

## 创建两台机器
$ docker-machine create --driver virtualbox myvm1
$ docker-machine create --driver virtualbox myvm2

$ docker-machine ls

## 初始化master
$ docker-machine ssh myvm1 "docker swarm init --advertise-addr <myvm1 ip>"

## 加入worker节点
$ docker-machine ssh myvm2 "docker swarm join \
--token <token> \
<ip>:2377"


## docker node ls

在管理器上运行以查看此群中的节点：

    $ docker-machine ssh myvm1 "docker node ls"
    ID                            HOSTNAME            STATUS              AVAILABILITY        MANAGER STATUS
    brtu9urxwfd5j0zrmkubhpkbd     myvm2               Ready               Active
    rihwohkh3ph38fhillhhb84sk *   myvm1               Ready               Active              Leader
    

运行给定的命令来配置你的shell进行通信myvm1。

    eval $(docker-machine env myvm1)
    
运行docker-machine ls以验证它myvm1现在是活动机器，如旁边的星号所示。

    $ docker-machine ls
    NAME    ACTIVE   DRIVER       STATE     URL                         SWARM   DOCKER        ERRORS
    myvm1   *        virtualbox   Running   tcp://192.168.99.100:2376           v17.06.2-ce   
    myvm2   -        virtualbox   Running   tcp://192.168.99.101:2376           v17.06.2-ce       
    
运行以下命令来部署应用程序myvm1。

    docker stack deploy -c docker-compose.yml getstartedlab
## bug 
如果本地镜像没有安装启动就会失败所以要执行
    $ docker pull brianchewson/get-started:part1
    $ docker-machine ssh myvm1 "docker pull brianchewson/get-started:part1"