# syntax=docker/dockerfile:1

FROM ubuntu:18.04 as base
WORKDIR /app

RUN apt-get update && apt-get install -y \
  g++ \
  make \
  cmake

FROM base as build 
CMD ["/bin/sh", "build.sh"]

FROM base as test
CMD ["/bin/sh", "test.sh"]