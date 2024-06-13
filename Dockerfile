# ベースイメージとしてPython 3.9を使用
FROM python:3.9

# 作業ディレクトリを/codeに設定
WORKDIR /code

# ローカルのrequirements.txtをコンテナの/code/requirements.txtにコピー
COPY ./requirements.txt /code/requirements.txt

# requirements.txtに記載されたパッケージをインストール
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# ローカルのappディレクトリをコンテナの/code/appにコピー
COPY ./app /code/app

# コンテナ起動時にuvicornでFastAPIアプリケーションを実行
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]