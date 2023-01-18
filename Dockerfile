FROM openjdk:8
RUN pwd
COPY /home/runner/.m2/repository/com/example/springboot-mongodb-docker/0.0.1-SNAPSHOT/springboot-mongodb-docker-0.0.1-SNAPSHOT.jar ./springboot-mongodb-docker-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","springboot-mongodb-docker-0.0.1-SNAPSHOT.jar"]
