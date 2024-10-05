# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /spring-boot-github-cicd

# Copy the current directory contents into the container at /app
COPY . /spring-boot-github-cicd

# Compile the application
RUN ./mvnw clean install

# Run the application
CMD ["java", "-jar", "target/spring-boot-github-cicd.jar"]
