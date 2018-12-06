#!/bin/bash

nvidia-docker run --rm -v $PWD:/dir -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY mlgpuenv python3 test_script.py
