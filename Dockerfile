FROM ghcr.io/lavalink-devs/lavalink:4.0.8

USER root

# UDP ট্রাফিক ফরওয়ার্ডিং এবং নেটওয়ার্কিংয়ের জন্য প্রক্সি টুলস ইনস্টল
RUN apt-get update && apt-get install -y socat iptables dante-server && rm -rf /var/lib/apt/lists/*

COPY application.yml /opt/Lavalink/application.yml

# লাভালিংককে রুট প্রিভিলেজ দিয়ে চালানো (UDP রিডাইরেকশনের জন্য জরুরি)
CMD ["java", "-jar", "Lavalink.jar"]

EXPOSE 2333
