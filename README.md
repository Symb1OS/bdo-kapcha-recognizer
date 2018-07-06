# bdo-kapcha-recognizer


### Requirements
In order to use this image you must have Docker Engine installed. Instructions
for setting up Docker Engine are
[available on the Docker website](https://docs.docker.com/engine/installation/).

You will also need to install `nvidia-docker`, which we will use to start the
container with GPU access. This can be found at
[NVIDIA/nvidia-docker](https://github.com/NVIDIA/nvidia-docker).

### Building

```
docker build -t pytorch-notebook .
```

### Running

```
docker run --rm -it --init -p 8888:8888 --runtime=nvidia --ipc=host --volume=$PWD/notebook:/app -e NVIDIA_VISIBLE_DEVICES=all pytorch-notebook

```

