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