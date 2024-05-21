#!/bin/bash
docker run -it --net=host -e "DISPLAY=$DISPLAY" -v /tmp/.X11-unix:/tmp/.X11-unix --device=/dev/dri:/dev/dri osrf/ros:noetic-desktop-full rviz

