<!-- toc -->

# Shadowsocks

### Docker Hub
  
  https://hub.docker.com/r/easypi/shadowsocks-libev/

### 客户端代理


[Mac](https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-%E5%B8%AE%E5%8A%A9)

[Windows](https://github.com/shadowsocks/shadowsocks-windows/releases)

[iOS](https://github.com/shadowsocks/shadowsocks-iOS/wiki/Help)

[Android](https://github.com/shadowsocks/shadowsocks-android/releases)


### Docker-compose 文件

```
**[terminal]

server:
  image: easypi/shadowsocks-libev
  ports:
    - "8443:8388/tcp"
    - "8443:8388/udp"
  environment:
    - METHOD=aes-256-cfb
    - PASSWORD=password
  restart: always
```

### 更多信息参见

https://github.com/shadowsocks