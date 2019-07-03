FROM ubuntu:14.04

COPY ./pocketchain.conf /root/.pocketchain/pocketchain.conf
COPY . /usr/src/pocketchain

WORKDIR /usr/src/pocketchain

RUN ./build-all.sh

EXPOSE 7471 17471

#CMD ["pocketchaind", "--printtoconsole"]
