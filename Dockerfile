FROM ubuntu:18.04

RUN apt update

ENV DEBIAN_FRONTEND=noninteractive

RUN apt install -y python3 python3-pip

RUN pip3 install numpy scipy pandas matplotlib

RUN pip3 install jupyter

RUN pip3 install sklearn

RUN pip3 install jupyterlab

RUN apt-get update --fix-missing

RUN apt-get -y install graphviz

RUN pip3 install graphviz
CMD ["bash"]
