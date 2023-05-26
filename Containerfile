FROM ghcr.io/catthehacker/ubuntu:custom-22.04

RUN apt update && \
    apt upgrade && \
    apt install buildah skopeo
