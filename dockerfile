FROM ubuntu:16.04         #基于的基础镜像
MAINTAINER IScream        #作者相关信息

RUN mkdir -p /usr/jdk     #run mkdir -p创建目录
ADD jdk1.8.0_191 /usr/jdk #将当前目录下的jdk，复制在创建的目录下

RUN mkdir -p /usr/tomcat
ADD apache-tomcat-8.5.34 /usr/tomcat

ENV JAVA_HOME /usr/jdk    #设置环境变量
ENV CATALINA_HOME /usr/tomcat/
ENV PATH /usr/tomcat/bin

EXPOSE 8080               #启动后监听的端口
CMD ["/usr/tomcat/bin/catalina.sh","run"]   #运行命令
