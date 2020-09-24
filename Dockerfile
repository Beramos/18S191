FROM shashankpv/plutojl-binder:0.2

USER root
COPY . /home/jovyan/
RUN chown -R jovyan /home/jovyan/

USER jovyan
