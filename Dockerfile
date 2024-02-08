# Use a lightweight base image
FROM fedora:latest
#update the Os
RUN dnf update -y
#Install the Ngins
RUN dnf  install nginx -y
#Copy the static website files to the Nginx document root
COPY ./index.html /usr/share/nginx/html
#this port can be hosting the website
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
