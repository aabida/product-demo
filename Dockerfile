FROM openjdk:8-jdk-alpine

MAINTAINER aabida

WORKDIR /opt/products/

ENV DATABASE_HOST localhost
ENV DATABASE_NAME meetup_database
ENV DATABASE_USER root
ENV DATABASE_PASSWORD changeme

COPY target/product-demo-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]

EXPOSE 8080
