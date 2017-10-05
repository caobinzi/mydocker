FROM ubuntu:17.10
ADD jdk-8u144-linux-x64.tar.gz /tmp/
RUN ls /tmp
RUN mkdir /opt/jdk
RUN mv /tmp/jdk1.8.0_144  /opt/jdk
RUN apt-get -qq update
RUN apt-get install -y vim git silversearcher-ag  zlib1g-dev libncurses5-dev libbz2-dev curl locales 
RUN apt-get install -y  wget bzip2 sudo
RUN localedef -i en_US -f UTF-8 en_US.UTF-8
RUN apt-get update
RUN curl -sSL https://get.haskellstack.org/ | sh
RUN useradd -ms /bin/bash myuser
RUN adduser myuser sudo
WORKDIR /home/myuser
