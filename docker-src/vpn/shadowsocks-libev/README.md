docker-shadowsocks-libev
========================

## What is shadowsocks-libev

[Shadowsocks-libev][1] is a lightweight secured SOCKS5 proxy for embedded devices
and low-end boxes.

## How to use these images

- Get docker-compose.yml, then change `SERVER_ADDR` and `PASSWORD`.

- Run these commands:

        # On x86 server (1.2.3.4)
        $ docker-compose up -d

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


- docker-compose.yml
        server:
        image: linf/vpn-shadowsocks-libev
        ports:
        - "8388:8388/tcp"
        - "8388:8388/udp"
        environment:
        - METHOD=aes-256-cfb
        - PASSWORD=password
        restart: always


- Set socks5 proxy in your favorite web browser.
