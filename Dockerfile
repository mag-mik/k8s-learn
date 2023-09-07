FROM openjdk:17-jdk-alpine
MAINTAINER mik
COPY out/artifacts/k8s_learn_main_jar/k8s-learn.main.jar k8s-learn.jar
ENTRYPOINT ["java", "-jar", "/k8s-learn.jar"]