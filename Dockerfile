From openjdk:11
ADD target/project1.jar project1.jar
ENTRYPOINT ["java","-jar","project1.jar"]
