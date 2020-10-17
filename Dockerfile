FROM maxjiang/rpi-jupyter
MAINTAINER stories2 

COPY download_build_install_opencv.sh download_build_install_opencv.sh
RUN ./download_build_install_opencv.sh

RUN pip3 install opencv-python==4.4.0

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--NotebookApp.token="]
