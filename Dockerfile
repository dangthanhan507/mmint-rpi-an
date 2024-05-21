FROM osrf/ros:noetic-desktop-full
MAINTAINER An

RUN apt-get upgrade && apt-get update
RUN apt-get install python3-pip -y
RUN apt-get install python3-tk -y
RUN python3 -m pip install scipy numpy pyyaml matplotlib
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> /root/.bashrc
RUN echo "source /root/colcon_ws/install/setup.bash" >> /root/.bashrc


WORKDIR /root/hw3
