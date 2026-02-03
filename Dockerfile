FROM quay.io/centos/centos:stream9

RUN yum install -y httpd vim wget unzip

WORKDIR /var/www/html/

RUN wget https://templatemo.com/download/tm-606-string-master -O template.zip \
    && unzip template.zip \
    && rm -f template.zip \
    && cp -r tm-606-string-master/* /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
