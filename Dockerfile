FROM openjdk:17-jdk-alpine
MAINTAINER mik
COPY out/artifacts/k8s_learn_jar/k8s-learn.jar k8s-learn.jar
ENTRYPOINT ["java", "-jar", "/k8s-learn.jar"]