From tomcat:latest
Maintainer Indar

copy . webapp.war /usr/local/tomcat/webapps/

run cp -r webapps.dist/* webapps/ 
