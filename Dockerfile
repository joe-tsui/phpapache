FROM php:7.0-apache

RUN mkdir -p /etc/apache2/key
COPY src/ /var/www/html/
COPY key/ /etc/apache2/key/
COPY conf/001-ssl.conf /etc/apache2/sites-enabled/

RUN /etc/init.d/apache2 force-reload \
	/etc/init.d/apache2 restart