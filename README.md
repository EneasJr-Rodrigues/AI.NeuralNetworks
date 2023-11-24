## AI.TensorflowGpu - nvidia_neural_networks:v1.0

[![Python required version: 3.11.4](https://img.shields.io/badge/python-3.11.4-blue.svg?style=flat-square)](https://www.python.org/downloads/release/python-3114)

<div align="center">
  <img src="https://www.tensorflow.org/images/tf_logo_horizontal.png">
</div>

## Base Image from tensorflow/tensorflow:nightly-jupyter

## Docker Hub Image

**`Documentation`** |
------------------- |
[![Documentation](https://img.shields.io/badge/api-reference-blue.svg)](https://hub.docker.com/r/eneasjr/nvidia_neural_networks) |

## install

```
./run.sh
```

## ⚠️ Get Started

```
docker pull eneasjr/nvidia_neural_networks:v1.0
```

## Run System

```shell
docker run -it -p 8888:8888 eneasjr/nvidia_neural_networks:v1.0
```

## Stop System

```shell
docker stop eneasjr/nvidia_neural_networks:v1.0
```

## Others Tests

```shell
docker run -t -i --privileged eneasjr/nvidia_neural_networks:v1.0 bash
docker run -it --name eneasjr/nvidia_neural_networks:v1.0 --gpus all -p 3000:3000 eneasjr/nvidia_neural_networks
docker run --gpus all eneasjr/nvidia_neural_networks:v1.0 nvidia-smi
docker run -it --rm eneasjr/nvidia_neural_networks:v1.0 \
   python -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
docker run -it -p 8888:8888 nvidia_neural_networks:v1.0
docker run --gpus all --rm eneasjr/nvidia_neural_networks:v1.0 nvidia-smi
docker run -it -p 8888:8888 eneasjr/nvidia_neural_networks:v1.0
```

* Stop and remove all containers

```shell
docker rm $(docker ps -a -q)
```

## Libs Installed in containers

| Package                      | Version              |
| ---------------------------- | -------------------- |
| absl-py                      | 1.4.0                |
| aiofiles                     | 22.1.0               |
| aiohttp                      | 3.8.5                |
| aiosignal                    | 1.3.1                |
| aiosqlite                    | 0.19.0               |
| anyio                        | 3.7.1                |
| argon2-cffi                  | 23.1.0               |
| argon2-cffi-bindings         | 21.2.0               |
| arrow                        | 1.2.3                |
| asttokens                    | 2.2.1                |
| astunparse                   | 1.6.3                |
| async-lru                    | 2.0.4                |
| async-timeout                | 4.0.3                |
| attrs                        | 23.1.0               |
| Babel                        | 2.12.1               |
| backcall                     | 0.2.0                |
| beautifulsoup4               | 4.12.2               |
| bleach                       | 6.0.0                |
| blinker                      | 1.4                  |
| bokeh                        | 3.2.2                |
| cachetools                   | 5.3.1                |
| certifi                      | 2023.7.22            |
| cffi                         | 1.15.1               |
| charset-normalizer           | 3.2.0                |
| comm                         | 0.1.4                |
| contourpy                    | 1.1.0                |
| cryptography                 | 3.4.8                |
| cycler                       | 0.11.0               |
| dbus-python                  | 1.2.18               |
| debugpy                      | 1.6.7.post1          |
| decorator                    | 5.1.1                |
| defusedxml                   | 0.7.1                |
| distro                       | 1.7.0                |
| entrypoints                  | 0.4                  |
| executing                    | 1.2.0                |
| fastjsonschema               | 2.18.0               |
| flatbuffers                  | 23.5.26              |
| fonttools                    | 4.42.0               |
| fqdn                         | 1.5.1                |
| frozenlist                   | 1.4.0                |
| gast                         | 0.5.4                |
| google-auth                  | 2.22.0               |
| google-auth-oauthlib         | 1.0.0                |
| google-pasta                 | 0.2.0                |
| grpcio                       | 1.57.0               |
| h5py                         | 3.9.0                |
| httplib2                     | 0.20.2               |
| idna                         | 3.4                  |
| importlib-metadata           | 4.6.4                |
| ipykernel                    | 6.25.1               |
| ipython                      | 8.14.0               |
| ipython-genutils             | 0.2.0                |
| ipywidgets                   | 8.1.0                |
| isoduration                  | 20.11.0              |
| jedi                         | 0.19.0               |
| jeepney                      | 0.7.1                |
| Jinja2                       | 3.1.2                |
| json5                        | 0.9.14               |
| jsonpointer                  | 2.4                  |
| jsonschema                   | 4.19.0               |
| jsonschema-specifications    | 2023.7.1             |
| jupyter                      | 1.0.0                |
| jupyter_client               | 7.4.9                |
| jupyter-console              | 6.6.3                |
| jupyter_core                 | 5.3.1                |
| jupyter-events               | 0.7.0                |
| jupyter-http-over-ws         | 0.0.8                |
| jupyter-lsp                  | 2.2.0                |
| jupyter-server               | 1.24.0               |
| jupyter_server_fileid        | 0.9.0                |
| jupyter_server_proxy         | 4.0.0                |
| jupyter_server_terminals     | 0.4.4                |
| jupyter_server_ydoc          | 0.8.0                |
| jupyter-ydoc                 | 0.2.5                |
| jupyterlab                   | 3.6.5                |
| jupyterlab-nvdashboard       | 0.8.0                |
| jupyterlab-pygments          | 0.2.2                |
| jupyterlab_server            | 2.24.0               |
| jupyterlab-widgets           | 3.0.8                |
| keras-nightly                | 2.15.0.dev2023081707 |
| keyring                      | 23.5.0               |
| kiwisolver                   | 1.4.4                |
| launchpadlib                 | 1.10.16              |
| lazr.restfulclient           | 0.14.4               |
| lazr.uri                     | 1.0.6                |
| libclang                     | 16.0.6               |
| Markdown                     | 3.4.4                |
| MarkupSafe                   | 2.1.3                |
| matplotlib                   | 3.7.2                |
| matplotlib-inline            | 0.1.6                |
| mistune                      | 3.0.1                |
| ml-dtypes                    | 0.2.0                |
| more-itertools               | 8.10.0               |
| multidict                    | 6.0.4                |
| nbclassic                    | 1.0.0                |
| nbclient                     | 0.8.0                |
| nbconvert                    | 7.7.4                |
| nbformat                     | 5.9.2                |
| nest-asyncio                 | 1.5.7                |
| notebook                     | 6.5.5                |
| notebook_shim                | 0.2.3                |
| numpy                        | 1.25.2               |
| nvidia-cublas-cu11           | 11.11.3.6            |
| nvidia-cublas-cu12           | 12.2.4.5             |
| nvidia-cuda-nvrtc-cu11       | 11.8.89              |
| nvidia-cuda-nvrtc-cu12       | 12.2.128             |
| nvidia-cuda-runtime-cu12     | 12.2.128             |
| nvidia-cudnn-cu11            | 8.9.4.25             |
| nvidia-cudnn-cu12            | 8.9.4.25             |
| oauthlib                     | 3.2.0                |
| opt-einsum                   | 3.3.0                |
| overrides                    | 7.4.0                |
| packaging                    | 23.1                 |
| pandas                       | 2.0.3                |
| pandocfilters                | 1.5.0                |
| parso                        | 0.8.3                |
| pexpect                      | 4.8.0                |
| pickleshare                  | 0.7.5                |
| Pillow                       | 10.0.0               |
| pip                          | 23.2.1               |
| platformdirs                 | 3.10.0               |
| prometheus-client            | 0.17.1               |
| prompt-toolkit               | 3.0.39               |
| protobuf                     | 4.23.4               |
| psutil                       | 5.9.5                |
| ptyprocess                   | 0.7.0                |
| pure-eval                    | 0.2.2                |
| pyasn1                       | 0.5.0                |
| pyasn1-modules               | 0.3.0                |
| pycparser                    | 2.21                 |
| Pygments                     | 2.16.1               |
| PyGObject                    | 3.42.1               |
| PyJWT                        | 2.3.0                |
| pynvml                       | 11.5.0               |
| pyparsing                    | 2.4.7                |
| python-apt                   | 2.4.0+ubuntu2        |
| python-dateutil              | 2.8.2                |
| python-json-logger           | 2.0.7                |
| pytz                         | 2023.3               |
| PyYAML                       | 6.0.1                |
| pyzmq                        | 24.0.1               |
| qtconsole                    | 5.4.3                |
| QtPy                         | 2.3.1                |
| referencing                  | 0.30.2               |
| requests                     | 2.31.0               |
| requests-oauthlib            | 1.3.1                |
| rfc3339-validator            | 0.1.4                |
| rfc3986-validator            | 0.1.1                |
| rpds-py                      | 0.9.2                |
| rsa                          | 4.9                  |
| SecretStorage                | 3.3.1                |
| Send2Trash                   | 1.8.2                |
| setuptools                   | 68.1.0               |
| simpervisor                  | 1.0.0                |
| six                          | 1.16.0               |
| sniffio                      | 1.3.0                |
| soupsieve                    | 2.4.1                |
| stack-data                   | 0.6.2                |
| tb-nightly                   | 2.15.0a20230817      |
| tensorboard-data-server      | 0.7.1                |
| tensorflow-io-gcs-filesystem | 0.33.0               |
| tensorrt                     | 8.6.1                |
| tensorrt-bindings            | 8.6.1                |
| tensorrt-libs                | 8.6.1                |
| termcolor                    | 2.3.0                |
| terminado                    | 0.17.1               |
| tf-estimator-nightly         | 2.14.0.dev2023080308 |
| tf-nightly                   | 2.15.0.dev20230817   |
| tf-nightly-cpu               | 2.15.0.dev20230817   |
| tinycss2                     | 1.2.1                |
| tornado                      | 6.3.3                |
| traitlets                    | 5.9.0                |
| typing_extensions            | 4.7.1                |
| tzdata                       | 2023.3               |
| uri-template                 | 1.3.0                |
| urllib3                      | 1.26.16              |
| wadllib                      | 1.3.6                |
| wcwidth                      | 0.2.6                |
| webcolors                    | 1.13                 |
| webencodings                 | 0.5.1                |
| websocket-client             | 1.6.1                |
| Werkzeug                     | 2.3.7                |
| wheel                        | 0.41.1               |
| widgetsnbextension           | 4.0.8                |
| wrapt                        | 1.14.1               |
| xyzservices                  | 2023.7.0             |
| y-py                         | 0.6.0                |
| yarl                         | 1.9.2                |
| ypy-websocket                | 0.8.4                |
| zipp                         | 1.0.0                |

## License

[Apache License 2.0](LICENSE)
