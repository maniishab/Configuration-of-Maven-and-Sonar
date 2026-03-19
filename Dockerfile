FROM maven:3.9.9-eclipse-temurin-17

Workdir /app

COPY /target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]

