FROM amazoncorretto:17-alpine-jdk
VOLUME /manufacture-service
RUN mkdir microservices
WORKDIR microservices
COPY target/manufacture-service-0.0.1-SNAPSHOT.jar manufacture-service.jar
ENTRYPOINT ["java","-jar","manufacture-service.jar"]
EXPOSE 8084