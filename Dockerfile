ARG ARCH=
FROM ${ARCH}debian:buster-slim

RUN apt-get update
RUN apt-get install -y iperf3
RUN rm -rf /var/lib/apt/lists/*

EXPOSE 5201/TCP
ENTRYPOINT ["iperf3", "-s"]
