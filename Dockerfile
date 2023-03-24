FROM openjdk:11.0.2
MAINTAINER stefano
ARG JAR_FILE=target/spring-boot-hello-world-example.jar
#COPY target/spring-boot-docker-0.0.1-SNAPSHOT.jar springboot-demo-docker.jar
COPY ${JAR_FILE} spring-boot-hello-world-example.jar
ENTRYPOINT ["java","-jar","/spring-boot-hello-world-example.jar"]