# raisetech-live8-sample-app

## 概要

- CRUD 処理が出来る簡単な Rails アプリケーションです。

## 動作環境

### ruby

```bash
3.1.2
```

### Bundler
```bash
2.3.14
```

### Rails

```bash
7.0.4
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

- MySQLを採用しています。
  - Cloud9 上で動作させる場合は、下記の手順に沿って環境構築を行ってください。
    - https://github.com/MasatoshiMizumoto/raisetech_documents/blob/main/aws/docs/install_mysql_on_cloud9_amazon_linux_2.md

### 環境構築
- 環境構築はターミナルで以下のコマンドを実行することで可能になります。
```bash
bin/setup
```

### アプリケーションサーバーの起動
- railsサーバーの起動は実行環境に合わせて以下のコマンドを実行してください
#### ローカル環境
```bash
bin/dev
```

#### Cloud9
```bash
bin/cloud9_dev
```
