
ARG base_image
FROM $base_image

USER root

LABEL maintainer="eneas.rodrigues@medroom.com.br"

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# TensorFlow packages
RUN apt-get -y update
RUN apt-get install -y curl

# # cuda nvidia
RUN distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
RUN curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | apt-key add -
RUN curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | tee /etc/apt/sources.list.d/nvidia-docker.list
RUN apt-get update && apt-get install -y nvidia-container-toolkit
RUN python -m pip install nvidia-cudnn-cu11
RUN python -m pip install --upgrade tensorrt
RUN apt-get install -y python-pip

COPY bashrc /etc/bash.bashrc
RUN chmod a+rwx /etc/bash.bashrc

## CPU Config
COPY setup.sources.sh /setup.sources.sh
COPY setup.packages.sh /setup.packages.sh
COPY cpu.packages.txt /cpu.packages.txt
RUN /setup.sources.sh
RUN /setup.packages.sh /cpu.packages.txt

ARG PYTHON_VERSION=python3.11
ARG TENSORFLOW_PACKAGE=tf-nightly
COPY setup.python.sh /setup.python.sh
COPY cpu.requirements.txt /cpu.requirements.txt
RUN /setup.python.sh $PYTHON_VERSION /cpu.requirements.txt
RUN pip install --no-cache-dir ${TENSORFLOW_PACKAGE} 


# jupyter themes
RUN pip install ipykernel
RUN python -m ipykernel install --user
RUN python -m ipykernel install --user --name gpu_env --display-name "Python (GPU)"
# RUN pip install --upgrade jupyter
# RUN pip install --upgrade ipywidgets
# RUN python -m pip install --upgrade jupyterthemes
# RUN python -m pip install jupyter_contrib_nbextensions

COPY jupyter.requirements.txt /jupyter.requirements.txt
COPY setup.jupyter.sh /setup.jupyter.sh
RUN python -m pip install --no-cache-dir -r /jupyter.requirements.txt -U
RUN /setup.jupyter.sh
COPY jupyter.readme.md /tf/tensorflow-tutorials/README.md
RUN pip install jupyterlab-nvdashboard
RUN pip install --upgrade 'jupyter-server<2.0.0'

WORKDIR /tf
EXPOSE 8888

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]