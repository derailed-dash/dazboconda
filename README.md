# Dazbo's Customised Miniconda

## Tagline

A Python3 Miniconda image with Conda dependencies and a minimal set of data science packages.

## GitHub

https://github.com/derailed-dash/dazboconda

## Overview

This is a modified Docker container image, based on continuumio/miniconda3.  It's default action is to run Jupyter Lab.

- It pre-installs a minimal set of data science packages, including:
  - Matplotlib
  - Numpy
  - Pandas
  - Networkx
  - ImageIO
  - Pillow
  - Regex
  - Scipy
  - tqdm
- A docker-compose.yml for starting and serving your site through the container; it automatically sets up environment variables and volumes.

## Usage Instructions

### Running the Container

Run this from where we want to store our Jupyter Notebooks on the host.

Run the container:

```bash
# To launch JupyterLab
docker run -e "JUPYTER_TOKEN=docker" --rm -it -v "${PWD}:/opt/notebooks" -p 8888:8888 daz502/dazboconda:latest
```

```bash
# To run a shell
docker run -e "JUPYTER_TOKEN=docker" --rm -it -v "${PWD}:/opt/notebooks" -p 8888:8888 daz502/dazboconda:latest sh
```

### Launching JupyterLab with Docker Compose

Simply launch the container as follows:

```bash
docker compose up
```

## Rebuilding the Image

If the image is ever updated, we'll want to update the tag and push to docker.io. E.g.

```bash
# build
docker image build -t daz502/dazboconda:tagname .

# push
docker push daz502/dazboconda:tagname
```
