FROM shashankpv/plutojl-binder:v1

RUN chown -R jovyan /home/pluto/
COPY . /home/pluto/
USER jovyan
