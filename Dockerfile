FROM python:2-alpine

RUN apk add --update alpine-sdk
RUN pip install virtualenv
RUN virtualenv -p python2.7 /appenv
RUN /appenv/bin/pip install wheel

ENV WHEELHOUSE=/wheelhouse
ENV PIP_WHEEL_DIR=/wheelhouse
ENV PIP_FIND_LINKS=/wheelhouse

VOLUME /wheelhouse
VOLUME /application

ENTRYPOINT . /appenv/bin/activate; \
           cd /application; \
           pip wheel .