docker-shadowsocks-libev
========================

## What is shadowsocks-libev

[Shadowsocks-libev][1] is a lightweight secured SOCKS5 proxy for embedded devices
and low-end boxes.

## How to use these images

- Get [docker-compose.yml][7], then change `SERVER_ADDR` and `PASSWORD`.

- Run these commands:

        # On x86 server (1.2.3.4)
        $ docker-compose up -d server

        //客户端代理
        mac 
        https://github.com/shadowsocks/shadowsocks-iOS/wiki/Shadowsocks-for-OSX-%E5%B8%AE%E5%8A%A9
        windows
        https://github.com/shadowsocks/shadowsocks-windows/releases

        更多信息参见
        https://github.com/shadowsocks

        // 局域网代理模式
        # On x86 client (192.168.1.234)
        $ docker-compose up -d client

        # On arm client (192.168.1.254)
        $ docker-compose up -d client-arm

        # On any LAN PC (192.168.1.XXX)
        $ curl -x socks5h://192.168.1.234:1080 https://www.youtube.com/
        $ curl -x socks5h://192.168.1.254:1080 https://www.youtube.com/

- Set socks5 proxy in your favorite web browser.

## Deploy without docker

You can update your system with unsupported packages from this untrusted PPA by
adding [ppa:max-c-lv/shadowsocks-libev][13] to your system's Software Sources.

```bash
sudo add-apt-repository ppa:max-c-lv/shadowsocks-libev
sudo apt-get update
sudo apt-get install shadowsocks-libev
```

> Config file format: [config.json](https://shadowsocks.org/en/config/quick-guide.html)
