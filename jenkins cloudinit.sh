#! /bin/bash
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install -y git java-1.8.0-openjdk-devel.x86_64 -y
sudo yum remove java-1.7.0 -y
sudo yum install jenkins -y
sudo service jenkins start
sudo chkconfig jenkins on