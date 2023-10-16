FROM ghcr.io/catthehacker/ubuntu:act-22.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      batctl \
      batmand \
      buildah \
      dosfstools \
      isolinux \
      pre-commit \
      skopeo \
      syslinux \
      xorriso
