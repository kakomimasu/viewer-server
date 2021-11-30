# 囲みマス ローカル実行ツール

囲みマスのAPIサーバ、firebase エミュレータ、ビューアをlocalhostから利用できるようにしたdocker-composeを提供しています。

## 使用方法
Docker・Composeはインストール済みであるとします。
Docker Desktop for Windows で動作確認済みです。

### ビルド・起動

```console
$ git clone https://github.com/kakomimasu/viewer-server.git
$ cd viewer-server
$ docker-compose build  # ビルド
$ docker-compose up     # 起動
```

※ビルド後に[server](https://github.com/kakomimasu/server)や[viewer](https://github.com/kakomimasu/viewer)の最新版を使用する場合は`--no-cache`オプションを付けてビルドしなおす必要があります。

### client-denoで実際に試合を行ってみる

※[Deno](https://deno.land)をインストールしておく必要があります。

client_a1でai-5とAI対戦する例
```console
$ git clone https://github.com/kakomimasu/client-deno.git
$ cd client-deno
$ deno run -A .\client_a1.js --useAi a5 --local --OnlyAi
```

## 起動インスタンス

### API Server

https://github.com/kakomimasu/server を使用してAPIサーバを起動します。

`localhost:8880`でAPIに接続できます。クライアントはここに接続してください。

### Firebase Emulator

https://github.com/kakomimasu/firebase-emulator を使用してFirebaseのエミュレータを起動します。API Serverから接続するために使用され、通常ユーザ側が利用することはありません。

`localhost:4000`でエミュレータUIにアクセスできます。

### Viewer

https://github.com/kakomimasu/viewer を使用してビューアを起動します。

`localhost:3000`で見ることができ、ゲームの進行状況を見たりアカウント登録などを行うことができます。