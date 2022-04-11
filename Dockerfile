FROM openjdk:11
ADD  target/springpro.jar springpro.jar
EXPOSE 8085
ENTRYPOINT ["java" ,"-jar" , "springpro.jar"]