FROM ubuntu:16.04

MAINTAINER Sudhindra Rao "sudhindra.r.rao@gmail.com"

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git make cmake build-essential python-dev python-pip libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl

RUN git clone git://github.com/yyuu/pyenv.git .pyenv
RUN git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

ENV HOME  /
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN pyenv install 3.6.3
RUN pyenv global 3.6.3

RUN pip install dlib
RUN pip install face_recognition
