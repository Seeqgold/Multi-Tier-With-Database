# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the .jar file into the container
COPY target/bankapp-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose port 8080 for the application
EXPOSE 8080

# Run the command to start the application when the container launches
CMD ["java", "-jar", "app.jar"]
