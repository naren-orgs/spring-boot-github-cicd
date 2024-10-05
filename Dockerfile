# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /spring-boot-github-cicd

# Copy the project JAR file into the container at /app
COPY target/spring-boot-github-cicd.jar spring-boot-github-cicd.jar

# Expose the port that your application will run on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "spring-boot-github-cicd.jar"]