Python Wheel Building Container
===============================

Build Python wheels in Docker

### Build

    docker build -t wheel-builder .

### Run

Run the container, mounting your application directory containing your setup.py to /application, and mounting your destination wheelhouse to /wheelhouse:

`docker run --rm -v ~/projects/application:/application -v ~/projects/application/build:/wheelhouse wheel-builder`

Or from your application source directory:

`docker run --rm -v "$(pwd)":/application -v "$(pwd)"/build:/wheelhouse wheel-builder`

Your wheel will be built and stored in the /build directory, eg: `~/projects/application/build/application-0.1-none-any.whl`

### Install your wheels

`pip install application-0.1-none-any.whl`

### Reference

https://github.com/Canuteson/wheel-example/blob/master/Makefile
