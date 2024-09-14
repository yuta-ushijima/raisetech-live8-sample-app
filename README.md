# raisetech-live8-sample-app

## 概要

- CRUD 処理が出来る簡単な Rails アプリケーションです

## 動作環境

### ruby

```bash
3.2.3
```

### Bundler

```bash
2.3.14
```

### Rails

```bash
7.1.3.2
```

### Node

```bash
v17.9.1
```

### yarn

```bash
1.22.19
```

### DB エンジン

- MySQL を採用しています。
  - Cloud9 上で動作させる場合は、下記の手順に沿って環境構築を行ってください。
    - https://github.com/MasatoshiMizumoto/raisetech_documents/blob/main/aws/docs/install_mysql_on_cloud9_amazon_linux_2.md

### 環境構築

- 環境構築はターミナルで以下のコマンドを実行することで可能になります。

```bash
bin/setup
```

### 組み込みサーバーの起動

- 組み込みサーバーのp起動は実行環境に合わせて以下のコマンドを実行してください

#### ローカル環境

```bash
bin/dev
```

#### Cloud9

```bash
bin/cloud9_dev
```

### アプリケーションサーバーの起動
- Rubyの3.2系にunicornが対応していないため(2024/03/17現在)、
systemdによってpumaを起動させることでアプリケーションサーバーとして動かします。
- samples/puma.service.sampleを適切なディレクトリに配置した後に起動コマンドを実行してください。
#### systemdによる起動
```bash
sudo systemctl start puma.service
```
