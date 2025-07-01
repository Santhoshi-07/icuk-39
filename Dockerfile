# Use Java 17 base image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy the built JAR file into the image
# Make sure this matches your actual file name after mvn package
ADD target/demo-workshop-2.0.2.jar app.jar

# Expose the default port (optional)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

