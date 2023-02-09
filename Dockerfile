FROM ubuntu
RUN apt-get -y update && apt-get -y install nginx
COPY ./index.html /usr/share/nginx/html
EXPOSE 8000/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
