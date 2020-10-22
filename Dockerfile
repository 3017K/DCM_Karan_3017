FROM ubuntu
MAINTAINER ServerWorld <admin@srv.world>

RUN apt-get update
RUN apt-get -y install nginx
ADD index.html /var/www/html/

EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
