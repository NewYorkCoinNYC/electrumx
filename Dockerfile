FROM ubuntu:latest

ENV COIN="Verge"
ENV DAEMON_URL="http://test:test@host.docker.internal:20102"
ENV DB_DIRECTORY="/database"
ENV ALLOW_ROOT="TRUE"

RUN apt-get update && apt-get install -y python3-pip
RUN apt-get install -y git libssl-dev
RUN git clone https://github.com/marpme/electrumx
WORKDIR /electrumx

RUN pip3 install plyvel
RUN pip3 install .
RUN pip3 install scrypt

CMD [ "./electrumx_server" ]
