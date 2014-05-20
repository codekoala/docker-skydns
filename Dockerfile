FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN pacman -Syu --noconfirm --needed skydns-git && \
    mkdir -p /var/lib/skydns/data

WORKDIR /var/lib/skydns
EXPOSE 8080
VOLUME /var/lib/skydns/data
ENTRYPOINT ["/usr/bin/skydns", "-dns", "0.0.0.0:53", "-http", "0.0.0.0:8080"]
