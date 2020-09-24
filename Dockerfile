#FROM shashankpv/plutojl-binder:0.2
FROM plutojl/pluto-binder:d050aff5c931

USER root
COPY . /home/jovyan/
RUN chown -R jovyan /home/jovyan/

USER jovyan
