# ১. Java 17 বেস ইমেজ ব্যবহার করা হচ্ছে
FROM eclipse-temurin:17-jre-alpine

# ২. কন্টেইনারের ভেতরে ওয়ার্কিং ডিরেক্টরি তৈরি
WORKDIR /opt/lavalink

# ৩. ল্যাভালিংকের অফিশিয়াল .jar ফাইল ডিরেক্ট ডাউনলোড করার কমান্ড (ছোট হাতের lavalink.jar নামে সেভ হবে)
RUN wget https://github.com -O lavalink.jar

# ৪. আপনার গিটহাবের application.yml ফাইলটি কপি করা
COPY application.yml application.yml

# ৫. Render এর ডাইনামিক পোর্ট ওপেন করা
EXPOSE 8080

# ৬. ল্যাভালিংক সার্ভার রান করার কমান্ড
CMD ["java", "-jar", "lavalink.jar"]
