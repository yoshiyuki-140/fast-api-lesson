# python3.11のイメージをダウンロード
FROM python:3.11-buster
# pythonの出力表示をDockerように調整
ENV PYTHONUNBUFFERD=1

WORKDIR /src

# pipを使ってpoetryをインストール
RUN pip install poetry

# poetryの定義ファイルをコピー(存在する場合)
# COPY pyproject.toml* poetry.lock* ./

# poetryでライブラリをインストール(pyproject.tomlが既にある場合)
# RUN poetry config vertualenvs.in-project ture
# RUN if [ -f pyproject.toml ]; then poetry install --no-root; fi

# uvicornのサーバーを立ち上げる
ENTRYPOINT [ "poetry", "run", "uvicorn", "api.main:app", "--host", "0.0.0.0", "--reload" ]
