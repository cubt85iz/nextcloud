FROM docker.io/nextcloud:stable

RUN apt-get update && \
    apt-get install -y lsb-release && \
    echo "deb http://ftp.debian.org/debian $(lsb_release -cs) non-free" >> \
        /etc/apt/sources.list.d/intel-graphics.list && \
    apt-get update && \
    apt-get install -y \
        intel-media-va-driver-non-free \
        ffmpeg && \
    rm -rf /var/lib/apt/lists/*

COPY start.sh /
CMD /start.sh