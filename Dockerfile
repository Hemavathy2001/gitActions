FROM openjdk:8
RUN pwd
COPY /home/runner/work/gitActions/gitActions/target/springboot-mongo-docker.jar ./springboot-mongo-docker.jar
ENTRYPOINT ["java","-jar","springboot-mongo-docker.jar"]
