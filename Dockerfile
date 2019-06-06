FROM ubuntu:latest
MAINTAINER Vivek <vivekt8088@gmail.com>
RUN apt-get -y update && DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install tzdata
RUN apt-get -y install net-tools apt-utils vim git wget zip git
RUN apt install -y nginx mysql-server php php7.2-fpm php7.2-mbstring php7.2-mysql php7.2-gd php7.2-xml php7.2-zip php7.2-curl
RUN useradd deploy
RUN mkdir public_html
COPY public_html /home/deploy/public_html
RUN chown -R deploy:deploy /home/deploy
COPY drupalworks-tk.conf /etc/nginx/conf.d/drupalworks-tk.conf
COPY www.conf /etc/php/7.2/fpm/pool.d/www.conf
COPY start.sh /opt/start.sh
COPY database.script /opt/database.script

