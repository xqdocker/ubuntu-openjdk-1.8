FROM ubuntu:14.04
MAINTAINER Xiaoqi Cao <thomascxq@gmail.com>

#Install Open JDK 8

RUN apt-get update

RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update

RUN apt-get -y install openjdk-8-jdk

#ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
#ENV PATH $JAVA_HOME/bin:$PATH