FROM jupyter/datascience-notebook:e5c5a7d3e52d

RUN apt-get install -y linux-headers-$(uname -r) 

RUN wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.1.85-1_amd64.deb \
	apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub \
    apt-get update \
    apt-get install -y cuda

RUN conda install pytorch torchvision cuda91 -c pytorch