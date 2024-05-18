#!/bin/sh
sudo yum update -y
sudo yum install httpd -y
sudo service httpd start 
chkconfig httpd on 
echo "Hello World from $(hostname -f)" > /var/www/html/index.html
echo "Healthy" >  /var/www/html/hc.html