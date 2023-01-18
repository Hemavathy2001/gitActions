FROM openjdk:8
RUN pwd
COPY /home/runner/work/gitActions/gitActions/target/springboot-mongo-docker.jar /home/runner/work/gitActions/gitActions/target/springboot-mongo-docker.jar
WORKDIR /home/runner/work/gitActions/gitActions/target
ENTRYPOINT ["java","-jar","springboot-mongo-docker.jar"]
