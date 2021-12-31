FROM tensorflow/tensorflow:latest-gpu-jupyter
RUN mkdir src
WORKDIR src/
COPY . .
RUN pip3 install mediapipe
RUN pip3 install pandas
RUN apt-get update && apt-get install -y python3-opencv
RUN pip3 install opencv-python