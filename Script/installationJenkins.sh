#  RMIT University Vietnam
#  Course: COSC2767 Systems Deployment and Operations
#  Semester: 2023C
#  Assessment: Assignment 2
#   Author: Giang Trong Duong
#   ID: s3926135
#   Created  28/12/2023
#   Last modified: 29/12/2023
#   Acknowledgement: 
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
yum install git -y 
cd /opt
wget https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.tar.gz
tar -xvzf apache-maven-3.9.5-bin.tar.gz
mv apache-maven-3.9.5 maven
cd ~
service jenkins start
cat /var/lib/jenkins/secrets/initialAdminPassword