#!/bin/bash

# Update system packages
sudo yum update -y

# Download and install MySQL community release package
sudo wget https://dev.mysql.com/get/mysql84-community-release-el9-1.noarch.rpm
sudo rpm -ivh mysql84-community-release-el9-1.noarch.rpm

# Verify the MySQL repositories are enabled
sudo yum repolist enabled | grep "mysql"

# Edit the MySQL repository file if needed
# Uncomment the following lines if you need to modify the enabled option in /etc/yum.repos.d/mysql-community.repo
sudo sed -i 's/^enabled=0/enabled=1/' /etc/yum.repos.d/mysql-community.repo

# Disable the default MySQL module and install MySQL community server
sudo yum module disable mysql
sudo yum install mysql-community-server -y

# Start MySQL service
sudo systemctl start mysqld

# Enable MySQL to start on boot
sudo systemctl enable mysqld

# Check MySQL service status
sudo systemctl status mysqld
