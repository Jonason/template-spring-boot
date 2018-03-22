FROM openjdk:8-jdk-alpine
EXPOSE 8080
EXPOSE 9010
ADD ./build/libs/gs-rest-service-0.1.0.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]