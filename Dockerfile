FROM tomcat:8-jdk8
EXPOSE 8080
ARG artifact=gameoflife-web/target/game*.war
COPY ${artifact} /usr/local/tomcat/webapps/gameoflife.war
WORKDIR /usr/local/tomcat/webapps
ENTRYPOINT ["catalina.sh", "run"]