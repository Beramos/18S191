FROM plutojl/pluto-binder:f4114dde25d4

USER root
COPY . /home/jovyan/
RUN chown -R jovyan /home/jovyan/

USER jovyan
