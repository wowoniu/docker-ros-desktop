FROM dorowu/ubuntu-desktop-lxde-vnc
MAINTAINER qiang <zhiqiangvip999@gmail.com>

#ADD PPA REPO
RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive &&  \
	sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
	apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116 && \
	apt-get update


RUN apt-get install ros-kinetic-desktop-full
	
