FROM ubuntu:22.04

COPY resources/base.sh .
COPY resources/common-vips-installer.sh .
COPY resources/sample.jpg .
RUN chmod +x *.sh && ./base.sh && ./common-vips-installer.sh


ENTRYPOINT [ "bash" ]