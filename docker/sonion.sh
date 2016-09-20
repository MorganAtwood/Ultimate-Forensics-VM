#!/bin/sh
#
# start SecurityOnion docker and allow GUI applications to display

xhost +local:docker
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix sonion
