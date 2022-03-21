FROM ubuntu:20.04

ENV VERSION="gost_ru_amd64_4.8.0-6348"

COPY files/vipnetclient_${VERSION}.deb /tmp/
COPY files/entrypoint.sh /bin/entrypoint.sh

RUN dpkg -i /tmp/vipnetclient_${VERSION}.deb
RUN rm -f /tmp/vipnetclient_${VERSION}.deb
USER root

ENTRYPOINT ["/bin/entrypoint.sh"]
