FROM owickstrom/dataflow:0.7.3.0
MAINTAINER Higherone <higherone@gmail.com>

# fix the package source for old-release ubuntu
RUN echo 'deb http://old-releases.ubuntu.com/ubuntu/ wily main universe restricted multiverse' > /etc/apt/sources.list
RUN echo 'deb-src http://old-releases.ubuntu.com/ubuntu/ wily main universe restricted multiverse' >> /etc/apt/sources.list

RUN echo 'deb http://old-releases.ubuntu.com/ubuntu/ wily-security main universe restricted multiverse' >> /etc/apt/sources.list
RUN echo 'deb-src http://old-releases.ubuntu.com/ubuntu/ wily-security main universe restricted multiverse' >> /etc/apt/sources.list

RUN echo 'deb http://old-releases.ubuntu.com/ubuntu/ wily-updates main universe restricted multiverse' >> /etc/apt/sources.list
RUN echo 'deb-src http://old-releases.ubuntu.com/ubuntu/ wily-updates main universe restricted multiverse' >> /etc/apt/sources.list

RUN cat /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y graphviz
