# Utiliza una imagen base de OpenJDK
FROM docker.io/openjdk:23-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR compilado al directorio de trabajo
COPY target/notification-service-0.0.1-SNAPSHOT.jar notification-service-0.0.1-SNAPSHOT.jar

# Define el comando que siempre se ejecuta (ENTRYPOINT)
ENTRYPOINT ["java", "-jar", "notification-service-0.0.1-SNAPSHOT.jar"]
