# FMPy Docker Image

[![Build Docker Image](https://github.com/AnHeuermann/fmpy-dockerimage/actions/workflows/build.yml/badge.svg?branch=main)](https://github.com/AnHeuermann/fmpy-dockerimage/actions/workflows/build.yml)
[![Publish Docker Image](https://github.com/AnHeuermann/fmpy-dockerimage/actions/workflows/publish.yml/badge.svg)](https://github.com/AnHeuermann/fmpy-dockerimage/actions/workflows/publish.yml)

## Build

```bash
export TAG=v0.3.18
docker build --pull --no-cache --tag anheuermann/fmpy:$TAG .
```

## Test

```bash
docker run --rm -v $(pwd)/fmus/:/fmus/ anheuermann/fmpy:$TAG python3 -m fmpy simulate /fmus/CoupledClutches.fmu
```

## Upload

The [publish.yml](./.github/workflows/publish.yml) workflow will build and upload the
Docker image to [https://hub.docker.com/repository/docker/anheuermann/fmpy](anheuermann/fmpy)
for each release.

## License

This Dockerfile is licensed under MIT License, see [LICENSE.md](./LICENSE.md).
FMPy is licensed under the 2-Clause BSD license.
The GUI of FMPy uses PyQt, see [/wiki.python.org/moin/PyQt/PyQtLicensing](https://wiki.python.org/moin/PyQt/PyQtLicensing).
