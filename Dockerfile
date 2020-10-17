FROM maxjiang/rpi-jupyter
MAINTAINER stories2 

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--NotebookApp.token="]
