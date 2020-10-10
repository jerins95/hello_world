FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update 
RUN apt-get -y upgrade
RUN apt-get install -y apache2
RUN apt-get install -y mysql-server
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_ROOT_USER=root
RUN apt-get install -y php 
RUN apt-get install -y php-dev 
RUN apt-get install -y php-mysql 
RUN apt-get install -y libapache2-mod-php 
RUN apt-get install -y php-curl 
RUN apt-get install -y php-json 
RUN apt-get install -y php-common 
RUN apt-get install -y php-mbstring 
RUN apt-get install -y composer
RUN curl -s "https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh" | /bin/bash
RUN apt-get install -y software-properties-common
RUN service apache2 start