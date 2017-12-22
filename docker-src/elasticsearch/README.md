
- 包含中文文词

- docker-compose.yml
```yml
version: '2'
services:
  elasticsearch:
    image: linf/elasticsearch-zh:6.1.1
    ports:
      - "9200:9200"
      - "9300:9300"
    restart: always
    volumes:
      - ./elasticsearch.yml:/usr/share/elasticsearch/config
      #- ./esdata:/usr/share/elasticsearch/data

  elasticsearch-head:
    image: mobz/elasticsearch-head:5-alpine
    ports:
      - "9100:9100"
    restart: always
```

- elasticsearch.yml

```yml
http.host: 0.0.0.0

# Uncomment the following lines for a production cluster deployment
#transport.host: 0.0.0.0
#discovery.zen.minimum_master_nodes: 1
# 增加如下字段 解决elasticsearch-head跨域连接问题 ！！！生产环节根据实际限制
http.cors.enabled: true
http.cors.allow-origin: "*"
```


- Set socks5 proxy in your favorite web browser.
