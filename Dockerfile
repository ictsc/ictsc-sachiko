### ビルド用コンテナ ###
FROM ubuntu:20.04 AS builder

ARG app_title="ICTSC"
ARG guide_contents="# ガイドライン（スコアサーバー）"
ARG app_url="http://localhost"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    fonts-droid-fallback \
    gdb \
    git \
    gnupg \
    lib32stdc++6 \
    libgconf-2-4 \
    libglu1-mesa \
    libstdc++6 \
    python3 \
    unzip \
    wget \
  && apt-get clean

RUN git clone https://github.com/flutter/flutter.git -b 2.8.1 /usr/local/flutter

ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

COPY . /tmp/

# フォントのインストール
WORKDIR /tmp/assets/fonts
RUN wget -O Noto_Sans_JP.zip https://fonts.google.com/download?family=Noto%20Sans%20JP \
  && unzip Noto_Sans_JP.zip "NotoSansJP-Regular.otf" "NotoSansJP-Bold.otf" \
  && rm -f Noto_Sans_JP.zip
RUN wget -O Roboto_Mono.zip https://fonts.google.com/download?family=Roboto%20Mono \
  && unzip -j Roboto_Mono.zip "*RobotoMono-Regular.ttf" \
  && rm -f Roboto_Mono.zip

WORKDIR /tmp

RUN flutter config --enable-web
RUN flutter pub get
RUN flutter build web \
    --release \
    --web-renderer=html \
    --dart-define="APP_TITLE=${app_title}" \
    --dart-define="GUIDE_CONTENTS=${guide_contents}" \
    --dart-define="APP_URL=${app_url}"


### メインコンテナ ###
FROM nginx:latest

COPY --from=builder /tmp/build/web /usr/share/nginx/html/
