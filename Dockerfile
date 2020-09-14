# FROM python:3.7-slim
# FROM julia:1.5.1
FROM dralletje/pluto-precompiled:dev

USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y python3 python3-pip

# install the notebook package
RUN pip3 install --no-cache --upgrade pip && \
    pip3 install --no-cache notebook && \
    pip3 install --no-cache-dir jupyter-server-proxy

# create user with a home directory
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN echo ${NB_USER}
RUN usermod -l ${NB_USER} pluto
RUN mkdir -p ${HOME}
RUN chown -R ${NB_USER} ${HOME}

USER ${USER}
WORKDIR ${HOME}

ENTRYPOINT []
CMD []