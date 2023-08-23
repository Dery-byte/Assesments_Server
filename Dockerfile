FROM maven:3.8.3-openjdk-17

WORKDIR /exam
EXPOSE 8080

COPY target/spring-boot-docker.jar exam.jar
ENTRYPOINT ["java","-jar","exam.jar"]

#
#FROM maven:3.8.3-openjdk-17 AS build
#COPY . .
#RUN mvn clean package
#
#From openjdk:17-jdk-slim
#
#COPY --from=build /target/exam-0.0.1-SNAPSHOT.jar /exam.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","exam.jar"]
#
## Set the active profile in the Dockerfile
#ENV SPRING_PROFILES_ACTIVE=`production`

