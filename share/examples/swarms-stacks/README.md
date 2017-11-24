服务-负载均衡

docker swarm init
docker stack deploy -c docker-compose.yml getstartedlab

docker stack rm getstartedlab
docker swarm leave --force