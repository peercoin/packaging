FROM ubuntu:focal as build

ARG TARGETPLATFORM
COPY ${TARGETPLATFORM}/peercoin*.tar.gz .

RUN set -ex \
  && tar -xzf peercoin*.tar.gz -C /opt \
  && rm -rf /opt/peercoin-*/bin/peercoin-qt \
  && mv /opt/peercoin-* /opt/peercoin

FROM ubuntu:focal

RUN useradd -r peercoin

RUN apt-get update && apt-get install -y \
    gosu \
 && rm -rf /var/lib/apt/lists/*

ENV PPC_DATA=/data
ENV PEERCOIN_PREFIX=/opt/peercoin
ENV PATH=${PEERCOIN_PREFIX}/bin:$PATH
ENV RPC_PASSWORD=ppcpass
ENV RPC_USER=ppcuser

COPY --from=build /opt /opt
COPY docker-entrypoint.sh /entrypoint.sh

VOLUME ["${PPC_DATA}"]

EXPOSE 9901 9902 9903 9904

ENTRYPOINT ["/entrypoint.sh"]

CMD ["peercoind"]
