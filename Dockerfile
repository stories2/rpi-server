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
RUN pip3 install scikit-build==0.11.1
RUN pip3 install Cython==0.29.21
RUN pip3 install opencv-python==4.4.0.44
RUN python3 -c "import cv2; print(cv2.__version__)"

RUN pip3 install dlib==19.21.0
RUN python3 -c "import dlib; print(dlib.__version__)"

RUN pip3 install imutils==0.5.3
RUN python3 -c "import imutils; print(imutils.__version__)"

RUN pip3 install pybind11==2.4.3

RUN pip3 install certifi==2020.06.20

RUN pip3 install cppy==1.1.0

RUN apt-get install python3-pil python3-scipy python3-tk -y
RUN apt-get install build-essential cython3 -y

RUN apt-get install gfortran libopenblas-dev liblapack-dev

RUN apt-get install libjpeg-dev libfreetype6 libfreetype6-dev zlib1g-dev -y

RUN pip3 install pillow==8.3.1

RUN pip3 install scikit-image==0.17.2

RUN apt-get install libssl-dev libffi-dev -y

RUN pip3 install cffi==1.0.0

RUN pip3 install firebase-admin==5.0.1

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--NotebookApp.token=", "--NotebookApp.base_url=/jupy"]
