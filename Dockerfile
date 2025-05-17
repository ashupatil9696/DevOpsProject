FROM openjdk:17-alpine3.14
WORKDIR /BuisnessProject
COPY ./target/BusinessProject-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["java", "-jar", "BusinessProject-0.0.1-SNAPSHOT.jar"]