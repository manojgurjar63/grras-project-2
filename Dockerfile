FROM quay.io/centos/centos:stream9
RUN yum install httpd vim wget unzip -y
RUN wget /var/www/html/:https://templatemo.com/tm-606-string-master -O template.zip \
    && unzip template.zip \
    && rm -f template.zip
    && cp -r tm-606-string-master/* /var/www/html/
WORKDIR /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
