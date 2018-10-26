docker pull victorgwli/mxnet:pip-cuda-8.0

nvidia-docker run --privileged  -e DISPLAY  --net=host --ipc=host -it -v $HOME/.Xauthority:/home/nvidia/.Xauthority -v `pwd`/..:/opt/mxnet -v `pwd`/../example/neural-style:/home/nvidia/samples/neural-style  -v `pwd`/test.sh:/home/nvidia/samples/neural-style/test.sh victorgwli/mxnet:pip-cuda-8.0 /bin/bash
