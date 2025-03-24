#!/bin/bash
yum -y update
yum -y install httpd
echo "<h2>GitHub   Action ! </h2><br>Build by GitHub Action !" > /var/www/html/index.html
sudo service httpd start
chkconfig httpd on
