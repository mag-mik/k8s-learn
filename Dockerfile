FROM openjdk:17-jdk-alpine
MAINTAINER mik
COPY out/artifacts/my_jar/HelloWorld.jar HelloWorld.jar
ENTRYPOINT ["java", "-jar", "/HelloWorld.jar"]