FROM java:8
VOLUME /tmp

#ADD target/spring-petclinic-2.3.1.jar app.jar

ARG JAR_FILE
COPY ${JAR_FILE} /app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]
