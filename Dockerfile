FROM shashankpv/plutojl-binder:v2

RUN chown -R jovyan /home/pluto/
COPY . /home/pluto/
USER jovyan
