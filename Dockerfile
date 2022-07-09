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

#wikiextractor2sqliteのインストール
RUN git clone https://github.com/yuukimiyo/wikiextractor2sqlite.git
RUN pip install tqdm

#sqlite3のインストール
RUN apt install sqlite3

#Ubuntu環境を日本語化
RUN apt install language-pack-ja
RUN update-locale LANG=ja_JP.UTF8



CMD bash