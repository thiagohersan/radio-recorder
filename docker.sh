#!/bin/bash

docker build -t radio-recorder .
docker run --env-file .env radio-recorder
