FROM shashankpv/plutojl-binder:v2

USER root
COPY . /home/jovyan/
RUN chown -R jovyan /home/jovyan/

USER jovyan
