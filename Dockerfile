# Utiliza una imagen base de OpenJDK
FROM registry.access.redhat.com/ubi9/openjdk-17:1.18-4

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR compilado al directorio de trabajo
COPY target/notification-service-0.0.1-SNAPSHOT.jar notification-service-0.0.1-SNAPSHOT.jar

# Define el comando que siempre se ejecuta (ENTRYPOINT)
ENTRYPOINT ["java", "-jar", "notification-service-0.0.1-SNAPSHOT.jar"]
