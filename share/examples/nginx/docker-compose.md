#使用Docker Compose管理多个容器

Docker Compose是一个用来定义和运行复杂应用的Docker工具。使用Compose，你可以在一个文件中定义一个多容器应用，然后使用一条命令来启动你的应用，完成一切准备工作。

一个使用Docker容器的应用，通常由多个容器组成。使用Docker Compose，不再需要使用shell脚本来启动容器。在配置文件中，所有的容器通过services来定义，然后使用docker-compose脚本来启动，停止和重启应用，和应用中的服务以及所有依赖服务的容器。完整的命令列表如下：


```json
build 构建或重建服务
help 命令帮助
kill 杀掉容器
logs 显示容器的输出内容
port 打印绑定的开放端口
ps 显示容器
pull 拉取服务镜像
restart 重启服务
rm 删除停止的容器
run 运行一个一次性命令
scale 设置服务的容器数目
start 开启服务
stop 停止服务
up 创建并启动容器
```





###  docker-compose 文件例子
```json
version: '2'
services:
  hwl-ngix-compose:
    domainname: hwl-nginx.com
    hostname: hwl-nginx-compose
    container_name: ctr-hwl-nginx-compose
    restart: always
    image: nginx:1.13.7-alpine
    networks:
      app_net:
        ipv4_address: 172.16.0.66
    ports:
      - "443:443"
      - "80:80"
    environment:
      - DOMAIN=xxxx.i-vectors.com
    volumes:
      - /Users/qylinqylin/GitBook/Library/qylinfly/docker/share/examples/nginx/html:/usr/share/nginx/html
      - /Users/qylinqylin/GitBook/Library/qylinfly/docker/share/examples/nginx/nginx.conf:/etc/nginx/nginx.conf
networks:
  app_net:
    driver: bridge
    ipam:
      driver: default
      config:
      - subnet: 172.16.0.0/24
        gateway: 172.16.0.1   
```