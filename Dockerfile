FROM openjdk:8
ADD /home/runner/work/gitActions/gitActions/target/springboot-mongo-docker.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
