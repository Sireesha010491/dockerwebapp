FROM tomcat:9.0.90

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Deploy our WAR as ROOT.war (so it's accessible at /)
COPY target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
