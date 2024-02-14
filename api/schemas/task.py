# coding :utf-8
# レスポンス型の定義

from pydantic import BaseModel, Field


class Task(BaseModel):
    """レスポインスの型定義

    - id: タスクのID
    - title: タスクのタイトル
    - done: タスクの完了フラグ

    """
    id:     int
    title:  str | None = Field(None, example="クリーニングを取りに行く")
    done:   bool | None = Field(None, example="完了フラグ")
