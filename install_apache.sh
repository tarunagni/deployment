#!/bin/bash

#download apache httpd setup 
wget https://downloads.apache.org/httpd/httpd-2.4.57.tar.gz

#extract tar file
tar -xvzf httpd-2.4.57.tar.gz

#install dependencies
sudo yum install -y apr apr-*
sudo yum install -y gcc
sudo yum install pcre-devel -y

#install apache httpd
cd httpd-2.4.57
./configure --prefix=/home/3dexp/apache
sudo make clean
sudo make
sudo make install
