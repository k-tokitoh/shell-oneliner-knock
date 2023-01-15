FROM ubuntu:latest

RUN apt update

# 数値計算
RUN apt install -y bc

# 日本語入力
RUN apt install -y language-pack-ja-base language-pack-ja
ENV LANG=ja_JP.UTF-8

# gnu awk
RUN apt install -y gawk

RUN apt install -y vim

RUN apt install -y git
RUN git clone https://github.com/shellgei/shellgei160

# ディレクトリ構造可視化
RUN apt install -y tree

# 画像処理
RUN apt install -y imagemagick

# ファイル一括rename
RUN apt install -y rename

# 合計値を求めるnumsumコマンドなど
RUN apt install -y num-utils

CMD bash
