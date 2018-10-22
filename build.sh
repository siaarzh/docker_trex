#!/bin/sh
set -ex

# docker hub username
USERNAME=siaarzh
# image name
IMAGE=docker_trex

docker build -t $USERNAME/$IMAGE:latest .