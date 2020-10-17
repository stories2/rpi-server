FROM maxjiang/rpi-jupyter
MAINTAINER stories2 

RUN pip3 install opencv-python==4.4.0

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--NotebookApp.token="]
