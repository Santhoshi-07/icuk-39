# Use Java 17 base image
FROM eclipse-temurin:17-jdk

# Add the JAR file to the image
ADD jarstaging/com/stalin/demo-workshop/2.0.2/demo-workshop-2.0.2.jar demo-workshop.jar

# Set the entrypoint to run the JAR
ENTRYPOINT ["java", "-jar", "demo-workshop.jar"]
