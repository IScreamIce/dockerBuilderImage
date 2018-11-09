FROM ubuntu:16.04
MAINTAINER IScream

RUN mkdir -p /usr/jdk
ADD jdk1.8.0_191 /usr/jdk

RUN mkdir -p /usr/tomcat
ADD apache-tomcat-8.5.34 /usr/tomcat

ENV JAVA_HOME /usr/jdk
ENV CATALINA_HOME /usr/tomcat/
ENV PATH /usr/tomcat/bin

EXPOSE 8080
CMD ["/usr/tomcat/bin/catalina.sh","run"]
