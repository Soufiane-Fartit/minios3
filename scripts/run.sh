#!/bin/sh

export MINIO_ACCESS_KEY=minios3
export MINIO_SECRET_KEY=minios3key
minio server --address :$PORT /data
