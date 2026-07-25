FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    libssl-dev \
    zlib1g-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libgdbm-dev \
    libdb5.3-dev \
    libbz2-dev \
    expat \
    libexpat1-dev \
    liblzma-dev \
    libffi-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src

RUN git clone https://github.com/facebookincubator/cinder.git

WORKDIR /usr/src/cinder

RUN ./configure --enable-optimizations
RUN make -j$(nproc)
RUN make altinstall

CMD ["python3.10", "-c", "import sys; print('\\n[+] Success! Python Version:', sys.version)"]