FROM maven:3.8.3-openjdk-17 AS build
COPY . .
RUN mvn clean package -Dskiptests

From openjdk:17-jdk-slim

COPY --from=build /target/exam-0.0.1-SNAPSHOT.jar /exam.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","exam.jar"]
