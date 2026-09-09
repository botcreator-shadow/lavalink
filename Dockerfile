# ১. Java 17 বেস ইমেজ ব্যবহার করা হচ্ছে
FROM eclipse-temurin:17-jre-alpine

# ২. কন্টেইনারের ভেতরে ওয়ার্কিং ডিরেক্টরি তৈরি
WORKDIR /opt/lavalink

# ৩. আপনার গিটহাব থেকে সরাসরি lavalink.jar ফাইলটি কন্টেইনারে কপি করা
COPY Lavalink.jar Lavalink.jar

# ৪. আপনার গিটহাবের application.yml ফাইলটি কপি করা
COPY application.yml application.yml

# ৫. Render এর ডাইনামিক পোর্ট ওপেন করা
EXPOSE 8080

# ৬. ল্যাভালিংক সার্ভার রান করার কমান্ড
CMD ["java", "-jar", "lavalink.jar"]
