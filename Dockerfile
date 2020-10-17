FROM resin/rpi-raspbian:jessie
MAINTAINER stories2 

EXPOSE 8888

CMD ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0", "--NotebookApp.token="]
