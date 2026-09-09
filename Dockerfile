# ১. Java 17 বেস ইমেজ
FROM eclipse-temurin:17-jre-alpine

# ২. ওয়ার্কিং ডিরেক্টরি তৈরি
WORKDIR /opt/lavalink

# ৩. আপনার গিটহাবের lavalink.jar ফাইলটি কন্টেইনারে কপি করা (ছোট হাতের অক্ষরে)
COPY lavalink.jar lavalink.jar

# ৪. application.yml ফাইলটি কপি করা
COPY application.yml application.yml

# ৫. Render এর পোর্ট ওপেন করা
EXPOSE 8080

# ৬. ল্যাভালিংক সার্ভার স্টার্ট করার কমান্ড (ছোট হাতের অক্ষরে)
CMD ["java", "-jar", "lavalink.jar"]
