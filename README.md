# docker_ml_gpu
Dockerfile of environment for machine learning on GPU

## Requirement
* Docker
* Nvidia-Docker

## Build
```sh
$ cd docker_ml_gpu
$ docker build -t mlgpuenv .
```

## Execute Python script
```sh
$ cd docker_ml_gpu
$ nvidia-docker run --rm -v $PWD:/dir mlgpuenv python3 test_script.py
```

In case you want to display graph
```sh
$ xhost +
$ nvidia-docker run --rm -v $PWD:/dir -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY mlgpuenv python3 test_script.py
```

or
```sh
$ sh run.sh
```
