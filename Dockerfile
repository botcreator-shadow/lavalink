# ১. Java 17 বেস ইমেজ ব্যবহার করা হচ্ছে (Lavalink v4 এর জন্য জরুরি)
FROM eclipse-temurin:17-jre-alpine

# ২. সার্ভারের ভেতরে একটি ওয়ার্কিং ডিরেক্টরি তৈরি করা
WORKDIR /opt/lavalink

# ৩. ল্যাভালিংকের অফিশিয়াল .jar ফাইল ডাউনলোড করা
# (যদি আপনার গিটহাবে অলরেডি Lavalink.jar থাকে তবে এটি পরিবর্তন করতে পারেন, অন্যথায় এটি অটো ডাউনলোড করে নেবে)
RUN wget https://github.com

# ৪. আপনার তৈরি করা application.yml ফাইলটি ডকার কন্টেইনারে কপি করা
COPY application.yml application.yml

# ৫. Render এর ডাইনামিক পোর্ট ওপেন করা
EXPOSE 8080

# ৬. ল্যাভালিংক সার্ভার স্টার্ট করার কমান্ড
CMD ["java", "-jar", "Lavalink.jar"]
