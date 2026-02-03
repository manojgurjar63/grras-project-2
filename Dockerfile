FROM centos
RUN yum install httpd vim wget unzip -y
RUN wget -O /var/www/html/:https://templatemo.com/tm-606-string-master
WORKDIR /var/www/html/
EXPOSE 80
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
