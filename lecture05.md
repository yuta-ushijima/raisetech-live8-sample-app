# 第５回課題報告

## 1. 組み込みサーバーのみで起動

pumaで起動　

![puma](images/puma.png)

## 2. Unicorn Nginxで起動

![unicorn-Nginx-error](images/unicorn-Nginx-error.png)

このレイアウト崩れがなかなか解消できずに苦労しました。cssのデバックがでないようにNginxの設定ファイルを変更したら解消できました！

![unicorn-Nginx](images/unicorn-Nginx.png)

![unicorn-Nginx-2](images/unicorn-Nginx-2.png)

## 3. ALB追加

最初ヘルスチェックが通らなかったですが、ポート番号間違えてました。

![ALB-error](images/ALB-error.png)

![ALB-success](images/ALB-success.png)

## 4. S3を追加

ファイルをアップロードしました

![S3-image](images/S3-image.png)

IAMロールを割り当てました
![IAMattach](images/IAMattach.png)

## 5. 構成図

![AWS構成図05](images/AWS構成図05.drawio.png)

