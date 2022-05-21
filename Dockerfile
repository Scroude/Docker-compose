FROM debian:latest

RUN apt-get update \
&& apt-get install -y apache2 \
&& a2enmod proxy_fcgi

EXPOSE 80
CMD apachectl -D FOREGROUND