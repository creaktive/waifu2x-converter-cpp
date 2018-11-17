FROM ubuntu:18.04

MAINTAINER Stanislaw Pusep <stas@sysd.org>

# Prepare
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
    build-essential \
    cmake \
    git-core \
    libopencv-dev \
    mesa-opencl-icd \
    opencl-headers

# Compile & Install
RUN git clone https://github.com/DeadSix27/waifu2x-converter-cpp && \
    cd waifu2x-converter-cpp && \
    mkdir out && cd out && \
    cmake .. && make && \
    make -j4 install && ldconfig && \
    cp -a ../models_rgb /

# Cleanup
RUN DEBIAN_FRONTEND=noninteractive apt-get -y purge \
    build-essential \
    cmake \
    git-core \
    opencl-headers
RUN DEBIAN_FRONTEND=noninteractive apt-get -y autoremove --purge
RUN DEBIAN_FRONTEND=noninteractive apt-get -y clean

# Go!
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
