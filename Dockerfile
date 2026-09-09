FROM ghcr.io/lavalink-devs/lavalink:4.0.8
COPY application.yml /opt/lavalink/application.yml
WORKDIR /opt/lavalink
EXPOSE 8080
