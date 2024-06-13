from typing import Union

from fastapi import FastAPI

# FastAPIアプリケーションのインスタンスを作成
app = FastAPI()


# ルートパスへのGETリクエストを処理するエンドポイント
@app.get("/")
def read_root():
    # 単純なJSONレスポンスを返す
    return {"Hello": "World"}


# /items/{item_id}へのGETリクエストを処理するエンドポイント
@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    # パスパラメータとオプショナルなクエリパラメータを含むJSONレスポンスを返す
    return {"item_id": item_id, "q": q}
