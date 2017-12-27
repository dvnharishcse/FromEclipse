FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
ADD demo* app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
EXPOSE 8080
