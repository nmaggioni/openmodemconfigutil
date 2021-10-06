FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get install -y \
        git python3 python3-pip python3-gi python3-gi-cairo \
        gir1.2-gtk-3.0 gir1.2-webkit2-4.0 && \
    pip3 install pyserial requests psutil pywebview

COPY . /src

CMD python3 /src/openmodemconfig.py
