# ubuntu-custom-buildah

[![build-ubuntu](https://github.com/bsherman/ubuntu-custom-buildah/actions/workflows/build.yml/badge.svg)](https://github.com/bsherman/ubuntu-custom-buildah/actions/workflows/build.yml)

Customized, daily updated, Ubuntu image for building in [Gitea Actions' act runner](https://gitea.com/gitea/act_runner) or [nektos act](https://github.com/nektos/act)

## What is this?

This version of Ubuntu image is lightly modified, based on [catthehacker/ubuntu:act-22.04](https://github.com/catthehacker/docker_images), but it has added:
- `buildah` for podman building
- `dosfstools`
- `isolinux`
- `pre-commit` for linting checks, etc
- `skopeo` for podman tooling
- `syslinux`
- `xorriso`
- plus, `apt update && apt upgrade` is run daily

This image weighs in at about 1.5GB.


## How do I use it?

This is not an exhaustive guide, but specifically, for [Gitea Actions' act runner](https://gitea.com/gitea/act_runner)...

When configuring your runner, set a label like:
```
./act_runner register --labels ubuntu-22.04:docker://ghcr.io/bsherman/ubuntu-buildah:act-22.04
```


More information:
- [act images](https://github.com/nektos/act/blob/master/IMAGES.md)
- [catthehacker docker images](https://github.com/catthehacker/docker_images)


## Verification

These images are signed with sigstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the appropriate command:

    cosign verify --key cosign.pub ghcr.io/bsherman/ubuntu-custom-buildah
