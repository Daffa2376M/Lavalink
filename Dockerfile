FROM eclipse-temurin:17-jre

WORKDIR /app

RUN apt-get update && apt-get install -y wget && \
    wget -O Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar

COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
