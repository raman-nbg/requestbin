#!/bin/bash

name="test-request-bin"
docker build -t $name .
docker run --rm -it -p 8001:8000 $name 
