#!/bin/bash
docker login -u sdulger
docker build -t sdulger/fission-nodejs . && docker push sdulger/fission-nodejs
