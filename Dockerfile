FROM shashankpv/plutojl-binder:v1

ARG NB_USER=pluto
ENV HOME /home/${NB_USER}

COPY . ${HOME}
