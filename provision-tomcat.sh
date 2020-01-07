#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install -y nano git openjdk-7-jdk openjdk-7-jre-headless

cd /usr/local
wget http://apache.mirror.iphh.net/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz
tar -xzvf apache-tomcat-9.0.30.tar.gz
ln -s apache-tomcat-9.0.30 tomcat

cp /vagrant/tomcat9 /etc/init.d/tomcat9
chmod 755 /etc/init.d/tomcat9
update-rc.d tomcat9 defaults
service tomcat9 start