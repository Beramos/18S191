FROM shashankpv/plutojl:multistage

EXPOSE 1234
CMD [ "julia", "/home/pluto/startup.jl" ]