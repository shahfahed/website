FROM ubuntu:latest

RUN apt update && \
    apt install -y nginx

COPY . /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
