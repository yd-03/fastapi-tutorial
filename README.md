# fastapi-tutorial

FastAPI を使用したシンプルなアプリケーションのチュートリアルです。

## ディレクトリ構成

このプロジェクトのディレクトリ構成は以下の通りです。

```
.
├── Dockerfile          # Dockerイメージをビルドするためのファイル
├── README.md           # プロジェクトの説明書
├── app                 # アプリケーションのソースコードを格納するディレクトリ
│   ├── __init__.py     # Pythonパッケージの初期化ファイル
│   └── main.py         # アプリケーションのエントリーポイント
└── requirements.txt    # 依存関係が記載されたファイル
```

## Docker

Docker を使用して、アプリケーションをコンテナ化し、実行する手順です。

### Docker イメージをビルドする

以下のコマンドを使用して、Docker イメージをビルドします。

```bash
docker build -t myimage .
```

### Docker イメージを確認する

ビルドされた Docker イメージを確認するには、以下のコマンドを実行します。

```bash
docker images
```

### Docker コンテナを起動する

ビルドされたイメージを基に Docker コンテナを起動するには、以下のコマンドを使用します。

```bash
docker run -d --name mycontainer -p 80:80 myimage
```

## アクセス方法

Docker コンテナを起動した後、以下の URL にアクセスしてアプリケーションの動作を確認できます。

- ルートパスへのアクセス: `http://localhost`

  - レスポンス: `{"Hello":"World"}`

- 特定のアイテムへのアクセス: `http://localhost/items/5?q=somequery`
  - レスポンス: `{"item_id":5,"q":"somequery"}`
