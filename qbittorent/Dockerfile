FROM debian
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app/
RUN apt-get update && apt-get install -y \
        qbittorrent-nox &&               \
    apt-get clean &&                     \
    rm -rf /var/lib/apt/
COPY qBittorrent.conf /etc/qBittorrent/
COPY docker-entrypoint.sh /usr/local/bin/
RUN useradd -m app
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["qbittorrent-nox", "--configuration=/etc/qBittorrent/"]
