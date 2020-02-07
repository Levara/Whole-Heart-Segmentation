FROM tensorflow/tensorflow:1.15.2-gpu-py3
MAINTAINER levara@levara.xyz
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y python3 python3-opencv
RUN pip3 install --upgrade pip && pip3 install SimpleITK NiftyNet scikit-image

#RUN echo "root:Docker!" | chpasswd
#RUN mkdir -p /tmp/bootstrap
#COPY imageclinic-assets/centos_7_x.sh /tmp/bootstrap/centos_7_x.sh
#RUN bash /tmp/bootstrap/centos_7_x.sh
#COPY imageclinic-assets/rvm_setup.sh /tmp/bootstrap/rvm_setup.sh
#RUN bash /tmp/bootstrap/rvm_setup.sh
#COPY imageclinic-assets/install_rubies.sh /tmp/bootstrap/install_rubies.sh
#RUN bash /tmp/bootstrap/install_rubies.sh
#COPY imageclinic-assets/optimization_deps.sh /tmp/bootstrap/optimization_deps.sh
#RUN /tmp/bootstrap/optimization_deps.sh

#COPY imageclinic-assets/install_imageclinic.sh /tmp/bootstrap/install_imageclinic.sh
#RUN /tmp/bootstrap/install_imageclinic.sh
#EXPOSE 3000
