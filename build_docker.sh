#!/bin/sh

: ${TAG=django-crud-example}

poetry export --format requirements.txt --output requirements.txt
docker build . -t $TAG
rm requirements.txt