FROM openjdk:8-jdk-alpine
LABEL maintainer="vikramk"
VOLUME /tmp
EXPOSE 8088
ARG JAR_FILE=target/utilityservice.jar
ADD ${JAR_FILE} utilityservice.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","/utilityservice.jar"]
