# Notebooks dir: /opt/notebooks
# Point browser to http://localhost:8888/lab
# If specifying a token, point to http://localhost:8888/lab?token=whatever
FROM  continuumio/miniconda3
LABEL maintainer="dazbo"

RUN conda install \
    xarray \ 
    netCDF4 \ 
    bottleneck \
    numpy \
    pandas \
    matplotlib \
    networkx \
    Pillow \
    regex \
    scipy \
    tqdm \
    typing_extensions \
    jupyterlab

WORKDIR /opt/notebooks
CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]
