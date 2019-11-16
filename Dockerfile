FROM openjdk:8-jdk-alpine

MAINTAINER aabida

VOLUME /tmp

ENV DATABASE_HOST localhost
ENV DATABASE_NAME meetup_database
ENV DATABASE_USER root
ENV DATABASE_PASSWORD changeme

ARG JAR_FILE
COPY target/product-demo-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]

EXPOSE 8080
