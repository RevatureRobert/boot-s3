
FROM openjdk:8-jdk-alpine
ENV JAVA_OPTS=$JAVA_OPTS
ADD target/boot-s3-0.0.1-SNAPSHOT.jar boot-s3.jar
EXPOSE 9898
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar boot-s3.jar
