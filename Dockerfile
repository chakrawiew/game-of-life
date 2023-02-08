FROM tomcat:9.0.70
WORKDIR /action
MAINTAINER mr8395820@gmail.com

COPY gameoflife.war /usr/local/tomcat/webapps

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]      //start tomcat service

EXPOSE 8080

#CMD
#RUN
#ADD
#ENV
#ENTRYPOINT
