FROM php:7.0-apache

RUN apt update \
	&& apt -y --no-install-recommends install wget unzip vim
	
COPY src/ /var/www/html/
RUN chmod -R 777 /etc/apache2/
RUN chmod -R 777 /var/run/apache2/
RUN chmod -R 777 /var/*/apache2/
RUN chmod -R 777 /var/www/
RUN chmod -R 777 /var/www/html/

#RUN mkdir -p /etc/apache2/key
#COPY src/ /var/www/html/
#COPY key/ /etc/apache2/key/
#COPY conf/001-ssl.conf /etc/apache2/sites-enabled/
#
#RUN /etc/init.d/apache2 force-reload \
#	/etc/init.d/apache2 restart
