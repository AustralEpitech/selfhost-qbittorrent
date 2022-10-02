FROM debian
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app/
RUN apt-get update && apt-get install -y \
        qbittorrent-nox &&               \
    apt-get clean &&                     \
    rm -rf /var/lib/apt/
COPY docker-entrypoint.sh /usr/local/bin/
RUN useradd -m app
COPY qBittorrent.conf /home/app/.config/qBittorrent/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["qbittorrent-nox", "--configuration=/etc/qBittorrent/"]
