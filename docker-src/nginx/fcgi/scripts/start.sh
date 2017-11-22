#!/bin/bash
#nginx -c /etc/nginx/nginx.conf
#mkdir -p -m 0700 /root/.ssh
cd /var/www/html/human-core
. make.sh
spawn-fcgi -f /var/www/html/human.fcgi  -p 18888 -a 127.0.0.1 -F 2

# Start supervisord and services
/usr/bin/supervisord -n -c /etc/supervisord.conf
