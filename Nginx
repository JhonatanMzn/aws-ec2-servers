#!/bin/bash
sudo yum update -y
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
# Opcional para crear la estructura de ficheros que almacenara el index.html
echo "<h1>Hello World</h1>" > /usr/share/nginx/html/index.html
