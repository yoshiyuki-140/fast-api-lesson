# python3.11のイメージをダウンロード
FROM python:3.11-buster
# pythonの出力表示をDockerように調整
ENV PYTHONUNBUFFERD=1

WORKDIR /src

# 依存関係を示したファイルをコピー
COPY requirements.txt ./

RUN pip install -r requirements.txt

# uvicornのサーバーを立ち上げる
ENTRYPOINT [ "poetry", "run", "uvicorn", "api.main:app", "--host", "0.0.0.0", "--reload" ]
