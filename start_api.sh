#!/bin/sh

: ${PORT=8000}
: ${WORKERS=2}
: ${HOST=0.0.0.0}

uvicorn \
 --host $HOST \
 --port $PORT \
 --workers $WORKERS \
 --loop uvloop \
 --http httptools \
 --lifespan off \
 django_crud_example.asgi:application