FROM ubuntu:16.04

RUN apt-get update; apt-get upgrade -y
RUN apt-get install -y autoconf \
                       build-essential \
                       fuse \
                       gettext \
                       libboost-all-dev \
                       libminiupnpc-dev \
                       libssl-dev \
                       pkg-config \
                       qtbase5-dev \
                       qttools5-dev-tools

WORKDIR /opt/appimage
VOLUME /opt/appimage/build
COPY resources resources

CMD resources/build.sh
