FROM openjdk:8
COPY target/springboot-mongo-docker.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
