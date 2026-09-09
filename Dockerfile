# Lavalink v4 এর লেটেস্ট এবং স্ট্যাবল ইমেজ ব্যবহার করা হয়েছে
FROM ghcr.io/lavalink-devs/lavalink:4.0.8

# লিনাক্স সিস্টেমের কিছু ইন্টারনাল সেটিংস ঠিক করার জন্য (ঐচ্ছিক কিন্তু নিরাপদ)
USER root

# আপনার তৈরিকৃত application.yml ফাইলটি লাভালিংকের ডিরেক্টরিতে কপি করা হচ্ছে
COPY application.yml /opt/Lavalink/application.yml

# লাভালিংক ইউজার হিসেবে রান করার জন্য
USER lavalink

# Render-এর জন্য পোর্ট এক্সপোজ করা হলো
EXPOSE 2333
