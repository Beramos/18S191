FROM shashankpv/plutojl:multistage

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

USER root
RUN usermod -l jovyan pluto

COPY . ${HOME}
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

EXPOSE 1234
CMD [ "julia", "/home/jovyan/startup.jl" ]

# docker run <image> jupyter notebook <arguments>
