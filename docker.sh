#!/bin/bash

docker build -t radio-recorder .
docker run -d -v $PWD:/opt/radio-recorder radio-recorder
