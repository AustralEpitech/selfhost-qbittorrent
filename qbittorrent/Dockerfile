FROM debian:11
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app/
RUN apt-get update && apt-get install -y \
        qbittorrent-nox &&               \
    apt-get clean &&                     \
    rm -rf /var/lib/apt/
COPY docker-entrypoint.sh /usr/local/bin/
VOLUME /data/torrents/
RUN useradd -m app
COPY --chown=app:app qBittorrent.conf /home/app/.config/qBittorrent/
EXPOSE 8080
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["qbittorrent-nox"]
