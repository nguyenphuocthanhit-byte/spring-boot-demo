FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

COPY target/springboot-images-new.jar springboot-images-new.jar

EXPOSE 8080

CMD ["java", "-jar", "springboot-images-new.jar"]
