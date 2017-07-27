FROM ubuntu:zesty

RUN apt-get update && apt-get install -y \
    texlive-full \
    wget

RUN wget https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb
RUN dpkg -i pandoc-1.19.2.1-1-amd64.deb

COPY build.sh /tmp
RUN chmod +x /tmp/build.sh

VOLUME /src
VOLUME /dist

WORKDIR /src

CMD /tmp/build.sh
