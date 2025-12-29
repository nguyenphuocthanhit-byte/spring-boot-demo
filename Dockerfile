FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

COPY target/demo-0.0.1-SNAPSHOT.jar springboot-images-new.jar
COPY wait-for-redis.sh wait-for-redis.sh

RUN chmod +x wait-for-redis.sh

CMD ["./wait-for-redis.sh", "java", "-jar", "springboot-images-new.jar"]
