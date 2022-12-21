FROM openjdk:8
VOLUME /tmp
RUN apt-get update &&\
   apt-get install -y curl
RUN mkdir /application
WORKDIR /application
COPY target/*.jar /application/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/application/app.jar"]