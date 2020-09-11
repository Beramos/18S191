FROM shashankpv/plutojl-binder:v2

USER root

COPY . /home/pluto/
COPY . /home/jovyan/

RUN chown -R jovyan /home/pluto/
RUN chown -R jovyan /home/jovyan/

USER jovyan
