FROM openjdk:17
WORKDIR /BuisnessProject
COPY ./target/BusinessProject-0.0.1-SNAPSHOT.jar .
EXPOSE 2330
ENTRYPOINT ["java", "-jar", "BusinessProject-0.0.1-SNAPSHOT.jar"]
