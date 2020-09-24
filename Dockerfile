FROM plutojl/pluto-binder:0.1

USER root
COPY . /home/jovyan/
RUN chown -R jovyan /home/jovyan/

USER jovyan
