#!/bin/bash

mkdir -p tempdir/templates
mkdir -p tempdir/static

cp sample_app.py tempdir/
cp -r templates/* tempdir/templates/
cp -r static/* tempdir/static/
cp Dockerfile_template tempdir/Dockerfile

cd tempdir
#sudo docker build -t sampleapp .
#sudo docker run -t -d -p 5050:5050 --name samplerunning sampleapp

# No sudo for DevAsc example
sudo docker build -t sampleapp .
sudo docker run -t -d -p 5050:5050 --name samplerunning sampleapp