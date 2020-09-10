FROM shashankpv/plutojl-binder:v1

RUN chown -R jovyan /home/jovyan/
COPY . /home/jovyan/
USER jovyan
