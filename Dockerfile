FROM maxjiang/rpi-jupyter
MAINTAINER stories2 

RUN apt-get update

RUN apt-get install wget unzip -y

RUN apt-get install python3-numpy -y
RUN apt-get install python3-matplotlib -y
RUN pip3 install numpy==1.8.2

RUN apt install python3-dev -y
RUN pip3 install matplotlib==1.4.2
RUN python3 -c "import numpy; print(numpy.__version__)"
RUN python3 -c "import matplotlib; print(matplotlib.__version__)"

# https://github.com/mohaseeb/raspberrypi3-opencv-docker/blob/master/opencv_4/4.1.2/download_build_install_opencv.sh
#COPY download_build_install_opencv.sh download_build_install_opencv.sh

# RUN pip3 install numpy
#RUN ./download_build_install_opencv.sh

RUN pip3 install opencv-python==4.4.0

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--NotebookApp.token="]
