FROM nvidia/cuda
MAINTAINER ytbilly3636

RUN apt update && \
    apt install -y  python3-dev \
                    python3-pip \
                    python3-tk && \
    pip3 install    chainer \
                    cupy \
                    matplotlib
                    
RUN mkdir /dir
WORKDIR /dir
VOLUME ["/dir"]

CMD ["bash"]
