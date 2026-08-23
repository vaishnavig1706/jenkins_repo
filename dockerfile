FROM almalinux
MAINTAINER vaishnavigurav
RUN yum update -y && yum install nginx -y
COPY index.html /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off"]
