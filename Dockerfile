FROM tomcat:latest


# Supprime les applications par défaut de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*


# Copie le fichier WAR généré dans le dossier webapps de Tomcat
COPY target/tpA18-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/TempActivite-1.0-SNAPSHOT.war


# Expose le port 8083
EXPOSE 8080


# Démarre Tomcat
CMD ["catalina.sh", "run"]