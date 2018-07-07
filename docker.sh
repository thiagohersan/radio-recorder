#!/bin/bash

docker build -t radio-recorder .
docker run -d -v $PWD/out:/opt/radio-recorder/out \
-e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_S3_BUCKET \
radio-recorder
