FROM centos
	MAINTAINER KIRAN <devopstraininghub@gmail.com>
	#RUN apt-get update -y
	RUN yum install git -y
#	RUN git config --global user.name "DevOpsTraining"
#	RUN git config --global user.email “devopstraininghub@gmail.com"
	RUN cd /opt && git clone https://github.com/devopstraininghub/Batch3.git
	RUN yum install java -y
	RUN yum install maven -y
	RUN yum install wget -y
	RUN mkdir /opt/tomcat
	#RUN cd /opt/tomcat && wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.31/bin/apache-tomcat-9.0.31.tar.gz
	#RUN cd /opt/tomcat && tar -xvf apache-tomcat-9.0.31.tar.gz
