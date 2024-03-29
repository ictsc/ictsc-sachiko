### ビルド用コンテナ ###
FROM ubuntu:20.04 AS builder

ARG app_title="ICTSC"
ARG guide_contents="# ガイドライン（スコアサーバー）"
ARG app_url="http://localhost"
ARG notes_contents=""

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

RUN git clone https://github.com/flutter/flutter.git -b 2.10.0 /usr/local/flutter

ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

RUN flutter config --enable-web

# フォントのインストール
RUN wget -O Noto_Sans_JP.zip https://fonts.google.com/download?family=Noto%20Sans%20JP \
  && unzip Noto_Sans_JP.zip "NotoSansJP-Regular.otf" "NotoSansJP-Bold.otf" \
  && rm -f Noto_Sans_JP.zip
RUN wget -O Roboto_Mono.zip https://fonts.google.com/download?family=Roboto%20Mono \
  && unzip -j Roboto_Mono.zip "*RobotoMono-Regular.ttf" \
  && rm -f Roboto_Mono.zip

COPY . /tmp/

# copy fonts
RUN mkdir /tmp/assets/fonts && cp *tf /tmp/assets/fonts/

WORKDIR /tmp

RUN flutter pub get
RUN cp /tmp/lib/ui/other/builder.dart ~/.pub-cache/hosted/pub.dartlang.org/flutter_markdown-0.6.9/lib/src
RUN flutter build web \
    --release \
    --no-sound-null-safety \
    --web-renderer=canvaskit \
    --dart-define="APP_TITLE=${app_title}" \
    --dart-define="GUIDE_CONTENTS=${guide_contents}" \
    --dart-define="APP_URL=${app_url}" \
    --dart-define="NOTES_CONTENTS=${notes_contents}"


### メインコンテナ ###
FROM nginx:stable-alpine

COPY --from=builder /tmp/build/web /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets

COPY docker/nginx/default.conf /etc/nginx/conf.d/default.conf
