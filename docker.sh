#!/bin/bash

docker build -t radio-recorder .
docker run -d -v $PWD/out:/opt/radio-recorder/out radio-recorder
