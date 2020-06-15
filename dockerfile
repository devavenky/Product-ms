FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/Product-Kar-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 9001
ENV JAVA OPTS=""
RUN sh -c "touch Product-Kar-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "Product-Kar-0.0.1-SNAPSHOT.jar" ]