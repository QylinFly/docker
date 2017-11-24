服务-负载均衡

$ docker swarm init
$ docker stack deploy -c docker-compose.yml getstartedlab

$ docker stack rm getstartedlab
$ docker swarm leave --force


集群服务

// 创建两台机器
$ docker-machine create --driver virtualbox myvm1
$ docker-machine create --driver virtualbox myvm2

$ docker-machine ls

// 初始化master
$ docker-machine ssh myvm1 "docker swarm init --advertise-addr <myvm1 ip>"

$ docker-machine ssh myvm2 "docker swarm join \
--token <token> \
<ip>:2377"


docker node ls在管理器上运行以查看此群中的节点：

    $ docker-machine ssh myvm1 "docker node ls"
    ID                            HOSTNAME            STATUS              AVAILABILITY        MANAGER STATUS
    brtu9urxwfd5j0zrmkubhpkbd     myvm2               Ready               Active
    rihwohkh3ph38fhillhhb84sk *   myvm1               Ready               Active              Leader