FROM ubuntu

RUN apt update && apt install -yy wget
RUN wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.6/fahclient_7.6.13_amd64.deb
COPY config.xml /usr/share/doc/fahclient/sample-config.xml
RUN dpkg -i fahclient_7.6.13_amd64.deb
COPY config.xml /etc/fahclient/config.xml

CMD FAHClient --config /etc/fahclient/config.xml
