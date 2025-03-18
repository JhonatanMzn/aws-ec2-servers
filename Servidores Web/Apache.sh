#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
# Opcional para crear la estructura de ficheros que almacenara el index.html
echo "<h1>Hello World</h1>" > /var/www/html/index.html



