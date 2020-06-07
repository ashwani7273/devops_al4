FROM centos
RUN yum -y install httpd
RUN yum install /sbin/service  -y
RUN yum install -y net-tools
##ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
COPY index.html  /var/www/html
CMD /usr/sbin/httpd  -DFOREGROUND
EXPOSE 80
