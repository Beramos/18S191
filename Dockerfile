FROM shashankpv/plutojl:multistage

ARG NB_USER=pluto
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

USER root

RUN usermod -o -u 1000 ${NB_USER}
# RUN adduser --disabled-password \
#     --gecos "Default user" \
#     --uid ${NB_UID} \
#     ${NB_USER}

COPY . ${HOME}
#RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

EXPOSE 1234
CMD [ "julia", "/home/pluto/startup.jl" ]

# docker run <image> jupyter notebook <arguments>
