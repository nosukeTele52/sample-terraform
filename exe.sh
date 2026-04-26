#!/bin/bash
set -eEuo pipefail 

# docker setup
# 作成したtfファイルを自由に実行したい,Dockerfile上でentry pointをshellに変更する
docker build -t my-terraform:latest .
docker run --name my-terraform --rm -it my-terraform:latest