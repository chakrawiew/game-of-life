FROM tomcat:9
MAINTAINER mr8395820@gmail.com
COPY gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps
CMD ["/usr/local/tomcat/bin/catalina.sh","run"]
EXPOSE 8080


#WORKDIR
#RUN
#ADD
#ENV
#ENTRYPOINT
