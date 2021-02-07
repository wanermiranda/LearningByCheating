docker run -it -p 2000-2002:2000-2002 --rm \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --name carla-sim --gpus all \
    laser-lab/carla-dist:9.11.0 /bin/bash
