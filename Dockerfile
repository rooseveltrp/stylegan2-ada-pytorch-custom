FROM nvidia/cuda:11.6.2-cudnn8-devel-ubuntu18.04 as app

RUN sed -i '/developer\.download\.nvidia\.com\/compute\/cuda\/repos/d' /etc/apt/sources.list.d/*
RUN sed -i '/developer\.download\.nvidia\.com\/compute\/machine-learning\/repos/d' /etc/apt/sources.list.d/*
RUN apt-key del 7fa2af80
COPY cuda-keyring_1.0-1_all.deb /tmp/cuda-keyring_1.0-1_all.deb
RUN dpkg -i /tmp/cuda-keyring_1.0-1_all.deb

RUN apt-get update -y
RUN apt-get upgrade -y

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install python3.7 -y
RUN apt-get install python3-pip -y

RUN python3.7 -m pip install --upgrade pip
RUN pip3.7 install scipy==1.3.3
RUN pip3.7 install requests==2.22.0
RUN pip3.7 install Pillow==6.2.1
RUN pip3.7 install h5py==2.9.0
RUN pip3.7 install imageio==2.9.0
RUN pip3.7 install imageio-ffmpeg==0.4.2
RUN pip3.7 install tqdm==4.49.0
RUN pip3.7 install boto3==1.16.25
# RUN pip3.7 install tensorflow-gpu==1.15.3
RUN pip3.7 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113
RUN pip3.7 install imageio-ffmpeg==0.4.3 pyspng==0.1.0 Click psutil
