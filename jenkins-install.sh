#!/bin/bash
sudo timedatectl set-timezone America/New_York
sudo hostnamectl set-hostname jenkins
sudo yum install wget tree vim git nano unzip -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade -y
# Add required dependencies for the jenkins package
sudo yum install java-17-openjdk -y
sudo yum install jenkins -y
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo su - ec2-user
# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s \ https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" 
sudo chmod +x ./kubectl 
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl 
