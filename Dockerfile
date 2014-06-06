FROM ubuntu:12.04

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y aptitude make gcc wget cabal-install
RUN aptitude install -y libgmp3c2
RUN ln -s /usr/lib/libgmp.so.3 /usr/lib/libgmp

ADD install.sh /opt/install.sh
ADD ghc-7.6.3 /opt/ghc-7.6.3

RUN /bin/bash /opt/install.sh
RUN mkdir -p /opt/haskell && cd /opt/haskell

ENV PATH /opt/ghc/bin:$PATH

CMD ["/bin/bash"]
