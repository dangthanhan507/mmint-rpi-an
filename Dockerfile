FROM osrf/ros:noetic-desktop-full
MAINTAINER An

RUN apt-get upgrade && apt-get update
RUN apt-get install python3-pip -y
RUN apt-get install python3-tk -y
RUN python3 -m pip install scipy numpy pyyaml matplotlib opencv-python
RUN apt-get install ros-noetic-catkin python3-catkin-tools
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> /root/.bashrc
RUN echo "source /root/catkin/devel/setup.bash" >> /root/.bashrc


WORKDIR /root/mmint-rpi-an/
