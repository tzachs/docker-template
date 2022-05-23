#!/bin/zsh

docker run \
--rm \
--mount type=bind,source="${PWD}"/,target=/react-learning \
--workdir /react-learning \
-it react-learning
