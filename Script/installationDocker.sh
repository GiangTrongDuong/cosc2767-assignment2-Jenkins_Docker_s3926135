#  RMIT University Vietnam
#  Course: COSC2767 Systems Deployment and Operations
#  Semester: 2023C
#  Assessment: Assignment 2
#   Author: Giang Trong Duong
#   ID: s3926135
#   Created  28/12/2023
#   Last modified: 29/12/2023
#   Acknowledgement: 
yum install docker -y
useradd dockeradmin
passwd dockeradmin
usermod -aG docker dockeradmin
nano /etc/ssh/sshd_config
service sshd reload
service docker start
