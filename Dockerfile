FROM julia:1.5.1-alpine

ADD jupyter /usr/local/bin/jupyter

# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

RUN apk add git
