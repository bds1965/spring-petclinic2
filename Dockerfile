FROM openjdk:8
MAINTAINER Chennakesava C
ADD target/*.jar petclinic.jar
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=mysql", "petclinic.jar", ">", "/var/log/petclinic.log", "2>&1"]
EXPOSE 8080
EXPOSE 7070
VOLUME /tmp
#HEALTHCHECK --interval=5m --timeout=3s --retries=3 \
#      CMD curl -f http://localhost:8080 || exit
