FROM ubuntu:18.04

RUN apt-get update -yq \
 && apt install build-essential \
                zlib1g-dev \
                libncurses5-dev \
                libgdbm-dev \
                libnss3-dev \
                libssl-dev \
                libreadline-dev \
                libffi-dev \
                wget \
        -yq \
 && wget -q https://www.python.org/ftp/python/3.7.6/Python-3.7.6.tgz \
 && tar -xf Python-3.7.6.tgz \
 && rm Python-3.7.6.tgz \
 && cd Python-3.7.6 \
 && ./configure --enable-optimizations \
 && make altinstall \
 && cd ..

CMD ["/bin/bash"]
