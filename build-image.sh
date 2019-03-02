#!/bin/bash

VERSION=`1`
echo "Building version $VERSION"
docker build -t higherone/dataflow:0.1 .
