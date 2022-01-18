### ビルド用コンテナ ###
FROM ubuntu:20.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    git \
    wget \
    unzip \
    libgconf-2-4 \
    gdb \
    libstdc++6 \
    libglu1-mesa \
    fonts-droid-fallback \
    lib32stdc++6 \
    python3 \
    gnupg \
  && apt-get clean \
  && git clone https://github.com/flutter/flutter.git /usr/local/flutter

ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

RUN ["/bin/bash", "-c", "wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/google-archive-keyring.gpg \
    && echo \"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/google-archive-keyring.gpg]  https://dl.google.com/linux/chrome/deb/ stable main\" | tee /etc/apt/sources.list.d/google.list > /dev/null \
    && apt-get update && apt-get install -y \
    google-chrome-stable"]

COPY . /tmp/

# フォントのインストール
WORKDIR /tmp/assets/fonts
RUN wget -O Noto_Sans_JP.zip https://fonts.google.com/download?family=Noto%20Sans%20JP \
  && wget -O Roboto_Mono.zip https://fonts.google.com/download?family=Roboto%20Mono \
  && unzip Noto_Sans_JP.zip "NotoSansJP-Regular.otf" "NotoSansJP-Bold.otf" \
  && unzip -j Roboto_Mono.zip "*RobotoMono-Regular.ttf"

WORKDIR /tmp

RUN flutter config --enable-web
RUN flutter doctor -v

RUN flutter pub get
# ToDo: 冬の陣のものに変更する
RUN flutter build web \
    --release \
    --web-renderer=html \
    --dart-define="APP_TITLE=ICTSC 2021 夏の陣" \
    --dart-define="GUIDE_CONTENTS=# ガイドライン（スコアサーバー）\n\n- 競技ルール: https://blog.icttoracon.net/2021/08/26/ictsc2021-summer-rules/\n\t- このガイドラインはその要約になります。\n\n## スケジュール\n\n| 時間 | 説明 |\n| :-: | :-- |\n| 9:30 | 接続テスト開始(1日目のみ) |\n| 10:00 | 競技開始 |\n| 16:30 | 競技終了 |\n| 17:30~ | 閉会式(2日目のみ) |\n\n閉会式はDiscordで行います。\n\n## 採点\n\n- 解答と問題環境の状態の両方を確認して採点いたします。\n\t- 問題環境の状態だけが終了条件を満たしていても、点数を得ることはできないので注意してください。\n\t- 問題によっては、解答のみで採点する場合もあります。その場合、問題文中に示されています。\n- 解答後、20分間は同じ問題に解答を提出することはできません。\n- 採点結果は、20分以降に確認することができます。\n\n## 質問・問題環境の初期化依頼\n\n- 問題への質問や問題環境の初期化依頼はDiscordのBotで受け付けています。\n- 同時に1問のみ初期化をすることができます。他に初期化中の問題がある場合、初期化依頼に失敗するので注意してください。\n\n## 表彰\n\n- 合計点数の大きい順に順位が決まります。\n\t- 同じ点数の場合、先にその点数に到達していたチームの方が上位になります。\n- 上位3チームを閉会式にて表彰します。\n" --dart-define="NOTES_CONTENTS=- 報告書形式で解答してください。\n- 解答後、20分間は同じ問題に解答を提出することはできません。\n- 採点結果は、20分以降に確認することができます。" \
    --dart-define="APP_URL=http://localhost"


### メインコンテナ ###
FROM nginx:latest

COPY --from=builder /tmp/build/web /usr/share/nginx/html/