#tag=nvdevtools/mxnet:pip-cuda-8.0
tag=victorgwli/mxnet:pip-cuda-8.0

nvidia-docker run --privileged=true  -e DISPLAY  --net=host --ipc=host -it --rm  -p 7022:22 -p 5022:5022 \
     -v $HOME/.Xauthority:/home/nvidia/.Xauthority \
     -v /raid/dl_samples:/raid/dl_samples \
     -v /raid/tools:/raid/tools \
     -w `pwd`  \
     $tag /bin/bash

