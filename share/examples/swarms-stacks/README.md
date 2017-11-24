服务-负载均衡

docker swarm init
docker stack deploy -c docker-compose.yml getstartedlab

docker stack rm getstartedlab
docker swarm leave --force


集群服务

// 创建两台机器
docker-machine create --driver virtualbox myvm1
docker-machine create --driver virtualbox myvm2

docker-machine ls