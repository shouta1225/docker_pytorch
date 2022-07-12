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

#mysql2sqlieteをダウンロード
RUN git clone https://github.com/dumblog/mysql2sqlite

#wikipedia-apiのインストール
RUN pip3 install wikipedia-api

#Ubuntu環境を日本語化
RUN apt install -y language-pack-ja \
&& apt-get install -y locales \
&& locale-gen ja_JP.UTF-8 \
&& echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL=ja_JP.UTF-8



CMD bash