FROM ubuntu:20.04

RUN apt-get update && \
	apt-get install -y wget tar bzip2 libgomp1  && \
	wget https://github.com/SuperElastix/elastix/releases/download/5.0.1/elastix-5.0.1-linux.tar.bz2 && \
	tar xvf elastix-5.0.1-linux.tar.bz2 && \
	mv elastix-5.0.1-linux /opt && \
	rm elastix-5.0.1-linux.tar.bz2

ENV PATH=/opt/elastix-5.0.1-linux/bin:$PATH
ENV LD_LIBRARY_PATH=/opt/elastix-5.0.1-linux/lib:$LD_LIBRARY_PATH
