# ১. ল্যাভালিংকের অফিশিয়াল ডকার ইমেজ (কোনো .jar ফাইল আপলোড করার প্রয়োজন নেই)
FROM ghcr.io/lavalink-devs/lavalink:4.0.8

# ২. আপনার গিটহাবের application.yml ফাইলটি সঠিক ডিরেক্টরিতে কপি করা
COPY application.yml /opt/lavalink/application.yml

# ৩. ওয়ার্কিং ডিরেক্টরি সেট করা
WORKDIR /opt/lavalink

# ৪. Render এর পোর্ট ওপেন করা
EXPOSE 8080
