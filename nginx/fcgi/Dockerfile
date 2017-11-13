FROM nginx:mainline-alpine

MAINTAINER ngineered <support@ngineered.co.uk>

RUN sed -i -e "s/v3.4/edge/" /etc/apk/repositories && apk update && \
    apk add --no-cache bash \
	gcc \
	g++ \
	libc-dev \
	make \
	pcre-dev \
	zlib-dev \    
	wget \
#    	nginx \
    	curl \
    	git \
    	linux-headers \
	supervisor
    #apk del gcc linux-headers
    
RUN mkdir -p /srv/Qylin/src/
RUN cd /srv/Qylin/src

RUN wget http://download.lighttpd.net/spawn-fcgi/releases-1.6.x/spawn-fcgi-1.6.4.tar.gz \
    && tar -xzvf  spawn-fcgi-1.6.4.tar.gz \
    && cd spawn-fcgi-1.6.4 \    
    && ./configure \
    && make \
    && make install
    
RUN wget ftp://ftp.slackware.com/.2/gentoo/distfiles/fcgi-2.4.0.tar.gz \
	&& tar -xzvf fcgi-2.4.0.tar.gz \
	&& cd fcgi-2.4.0 \
	&& ./configure \
	&& make \
	&& cd examples \
	&& g++ echo-cpp.cpp -I ../ -I ../include/  -o echo_cpp ../libfcgi/.libs/libfcgi.a ../libfcgi/.libs/libfcgi++.a
#	&& make examples

ADD conf/supervisord.conf /etc/supervisord.conf

# Copy our nginx config
RUN rm -Rf /etc/nginx/nginx.conf
ADD conf/nginx.conf /etc/nginx/nginx.conf

# nginx site conf
RUN mkdir -p /etc/nginx/sites-available/ && \
mkdir -p /etc/nginx/sites-enabled/ && \
mkdir -p /etc/nginx/ssl/ && \
rm -Rf /var/www/*  && \
mkdir -p /var/www/html/
ADD conf/nginx-site.conf /etc/nginx/sites-available/default.conf
RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf

ADD scripts/start.sh /start.sh
RUN chmod 755 /start.sh

VOLUME /var/www/html

EXPOSE 443 80

CMD ["/usr/bin/supervisord", "-n", "-c",  "/etc/supervisord.conf"]
CMD ["/start.sh"]
