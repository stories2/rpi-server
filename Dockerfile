FROM maxjiang/rpi-jupyter
MAINTAINER stories2 

RUN apt-get update

RUN apt-get install wget unzip -y

# https://github.com/mohaseeb/raspberrypi3-opencv-docker/blob/master/opencv_4/4.1.2/download_build_install_opencv.sh
COPY download_build_install_opencv.sh download_build_install_opencv.sh

RUN pip3 install numpy
RUN ./download_build_install_opencv.sh

RUN pip3 install opencv-python==4.1.2

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--NotebookApp.token="]
