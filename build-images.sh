#!/usr/bin/env bash

docker build --file 3.8/Dockerfile -t cibuilds/jekyll:latest -t cibuilds/jekyll:3.8.3  -t cibuilds/jekyll:3.8 .
