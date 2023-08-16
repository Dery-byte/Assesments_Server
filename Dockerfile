
# Use an official OpenJDK runtime as the base image
FROM maven:3.8.3-openjdk-17 AS build
# Set the working directory to /app
WORKDIR /app
# Copy the executable JAR file into the container at /app
#COPY --from=build target/exam.jar /app/exam.jar
# Expose the port that the application will listen on
EXPOSE 8080
# Define the command to run your application when the container starts
ENTRYPOINT ["java", "-jar", "exam.jar"]



#FROM maven:3.8.3-openjdk-17 AS build
#COPY . .
#RUN mvn clean package -Dskiptests
#
#From openjdk:17-jdk-slim
#
#COPY --from=build /target/exam-0.0.1-SNAPSHOT.jar /exam.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","exam.jar"]
