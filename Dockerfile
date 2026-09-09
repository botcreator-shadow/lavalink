FROM ghcr.io/lavalink-devs/lavalink:4.0.8
WORKDIR /opt/lavalink
COPY application.yml /opt/lavalink/application.yml
EXPOSE 8080
