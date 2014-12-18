fluentd-docker
=================

## What is fluentd?
http://www.fluentd.org/

## What is this docker image?
This docker runs fluentd daemon with a custom config. 

## How to use this image?
### Using a local config file
    sudo docker run \
      -v /home/logbase/td.conf:/td.conf \
      --detach=true \
      --name=fluentd-docker \
      -e "CONFIG_FILE=file://td.conf" \
      logbase/fluentd-docker

### Using an URL for the config file
    sudo docker run \
      --detach=true \
      --name=fluentd-docker \
      -e "CONFIG_FILE=https://www.dropbox.com/s/.../fluentd.conf?dl=0" \
      logbase/fluentd-docker
