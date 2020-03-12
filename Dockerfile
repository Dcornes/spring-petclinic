FROM java:jre-alpine
EXPOSE 8080
COPY target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar /dockerRun.jar
ENTRYPOINT["./mvnw package"]
docker build -t /Users/davidcornes/Desktop/CSC441/hw5/spring-petclinic .
docker run -d -p 8080 /Users/davidcornes/Desktop/CSC441/hw5/spring-petclinic

