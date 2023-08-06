FROM ubuntu:22.04

COPY resources/base.sh .
COPY resources/common-vips-installer.sh .
COPY resources/sample.jpg .
RUN chmod +x base.sh && ./base.sh

ENTRYPOINT [ "bash" ]