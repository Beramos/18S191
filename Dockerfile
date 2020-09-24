FROM plutojl/pluto-binder:latest

USER root
COPY . /home/jovyan/
RUN chown -R jovyan /home/jovyan/

USER jovyan
