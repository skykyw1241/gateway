FROM openjdk:8u212-jdk-alpine
COPY target/*SNAPSHOT.jar app.jar
COPY src/main/resources/application.yaml application.yaml
EXPOSE 80
ENTRYPOINT ["java","-Xmx400M","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar","--spring.profiles.active=docker","--spring.config.location=file:/application-prod.yml"]
