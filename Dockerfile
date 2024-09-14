# Utilisation de l'image de base OpenJDK 11
FROM openjdk:17-jre-slim

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR généré par le build dans le conteneur
COPY target/myapp.jar /app/myapp.jar

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
