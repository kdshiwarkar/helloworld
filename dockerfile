FROM tomcat:latest
WORKDIR /usr/local/tomcat/webapps/
COPY target/helloworld.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
