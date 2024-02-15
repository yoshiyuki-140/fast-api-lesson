# fast-api-lesson
python fast api lesson

# 環境構築

## 1. リポジトリのクローン

```bash
git clone https://github.com/yoshiyuki-140/fast-api-lesson.git
cd fast-api-lesson # ディレクトリ移動
```

## 2. Dockerの起動

```bash
docker compose up
```

# ディレクトリ構成
```
FAST-API-LESSON
├─.dockervenv
├─.github
├─.venv
├─api
│  ├─cruds
│  ├─models
│  ├─routers
│  └─schemas
└─docs
```
## ディレクトリの説明

### .dockervenv
- Docker内にコピーして.venvとして使う

    > .venv
    >   - Pythonの仮想環境に必要なファイルが格納されている


### api
- FastAPIのアプリケーションのメインディレクトリ

    #### cruds
    - データベースの操作を行うファイルを格納するディレクトリ
    - Create, Read, Update, Deleteの略

    #### models
    - データベースのテーブルを定義するファイルを格納するディレクトリ


    #### routers
    - APIのエンドポイントを定義するファイルを格納するディレクトリ
    - エンドポイントのURLを定義する
    - エンドポイントの処理を定義する

    #### schemas
    - リクエストボディやレスポンスボディのスキーマを定義するファイルを格納するディレクトリ
    - リクエストボディやレスポンスボディのバリデーションを行う
    - リクエストボディやレスポンスボディのデータ型を定義する

### docs
- README.md等を格納するディレクトリ

# 参考書籍 

- [動かして学ぶ!Python FastAPI開発入門](https://ndlsearch.ndl.go.jp/books/R100000002-I032848914)
