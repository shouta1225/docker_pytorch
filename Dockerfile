FROM ubuntu:20.04

# Ubuntuのパッケージ処理
RUN apt-get update \
&&  apt-get install -y \
    git \
    wget \
    python3-pip

# python ライブラリ追加
RUN python3 -m pip install -U \
    torch


CMD bash