# Use an official Tomcat image as the base
FROM tomcat:9.0

# Copy the built WAR file into the Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/jpetstore.war

# Expose port 8081
EXPOSE 8081

# Start Tomcat server
CMD ["catalina.sh", "run"]

