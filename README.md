# bdo-kapcha-recognizer


### Requirements


### Building

```
docker build -t pytorch-notebook .
```

### Running

```
docker run --rm -it --init -p 8888:8888 --runtime=nvidia --ipc=host --volume=$PWD/notebook:/app -e NVIDIA_VISIBLE_DEVICES=all pytorch-notebook

```

