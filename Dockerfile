# ১. ল্যাভালিংকের অফিশিয়াল ইমেজ ব্যবহার করা হচ্ছে
FROM ghcr.io/lavalink-devs/lavalink:4.0.8

# ২. ওয়ার্কিং ডিরেক্টরি সেট করা
WORKDIR /opt/lavalink

# ৩. আপনার গিটহাবের application.yml ফাইলটি কপি করা
COPY application.yml /opt/lavalink/application.yml

# ৪. বিল্ড টাইমে প্লাগইনগুলো ডাউনলোড করে নেওয়ার জন্য এই বিশেষ কমান্ড (টাইমআউট এড়াতে)
RUN java -jar Lavalink.jar --version

# ৫. Render এর পোর্ট এক্সপোজ করা
EXPOSE 8080
