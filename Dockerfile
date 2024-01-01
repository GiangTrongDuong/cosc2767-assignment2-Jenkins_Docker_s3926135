#  RMIT University Vietnam
#  Course: COSC2767 Systems Deployment and Operations
#  Semester: 2023C
#  Assessment: Assignment 2
#   Author: Giang Trong Duong
#   ID: s3926135
#   Created  19/12/2023
#   Last modified: 29/12/2023
#   Acknowledgement: 
FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY ./*.war /usr/local/tomcat/webapps