FROM ubuntu:20.10  

ENV SCREEN_WIDTH 1280
ENV SCREEN_HEIGHT 720
ENV SCREEN_DEPTH 16
ENV DISPLAY :99.0

RUN apt-get update
RUN apt-get install -y nodejs npm libgconf-2-4 libatk-bridge2.0-0 libxss1 \
    libxtst6 libnss3 libasound2-dev xvfb dbus-x11 libgtk-3-common \
    libgbm-dev
RUN npm install -g npm

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]