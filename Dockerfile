FROM reactnativecommunity/react-native-android:latest

RUN apt-get update \
  && apt-get install -y openjdk-11-jdk \
  && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"
ENV NODE_OPTIONS=--openssl-legacy-provider

WORKDIR /work

CMD ["bash", "-lc", "npm install && cd android && ./gradlew assembleDebug"]
