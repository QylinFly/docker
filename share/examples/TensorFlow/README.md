# Tensorflow

### DockerHub

https://hub.docker.com/r/tensorflow/tensorflow/

### CPU + Shell
```
$ docker run -it gcr.io/tensorflow/tensorflow bash
```

### CUP + Jupyter notebook
```
$ docker run -it -p 8888:8888 gcr.io/tensorflow/tensorflow
```

### Docker-compose 文件
```
**[terminal]

version: '2'
services:
  web-tensorflow:
    domainname: web-tensorflow
    hostname: web-tensorflow
    container_name: ctr-web-tensorflow
    restart: always
    image: gcr.io/tensorflow/tensorflow:1.3.0
    networks:
      app_net:
        ipv4_address: 172.16.0.88
    ports:
      - "8888:8888"
      - "6006:6006"
    volumes:
      - /Users/qylinqylin/Project/git-xoxo/project/tensorflow/:/notebooks/data/
    #entrypoint:
    #  - -it

networks:
  app_net:
    driver: bridge
    ipam:
      driver: default
      config:
      - subnet: 172.16.0.0/24
        gateway: 172.16.0.1
```

