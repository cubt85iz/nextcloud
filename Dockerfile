FROM docker.io/nextcloud:stable

RUN apt-get update && \
    apt-get install -y \
        ffmpeg && \
    rm -rf /var/lib/apt/lists/*