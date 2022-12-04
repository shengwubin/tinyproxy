FROM ubuntu:18.04
RUN apt update && apt install -y build-essential autoconf git
RUN . /app
WORKDIR /app
RUN ./autogen.sh && make && make install
CMD ["tinyproxy", "-d",  "-c", "tinyproxy.conf"]
