# Use Java 17 base image
FROM eclipse-temurin:17-jdk

# Add the built JAR from Maven's target folder
ADD target/demo-workshop-2.0.2.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
