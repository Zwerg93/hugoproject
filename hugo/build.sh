#!/usr/bin/env bash

pushd home
hugo
popd

pushd k8s
./deploy.sh
popd

pushd home
./deploy.sh
popd