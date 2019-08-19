FROM maven:3.3-jdk-8
ENV TZ=Europe/Oslo

RUN apt-get update; exit 0
RUN apt-get install xmlstarlet -y


