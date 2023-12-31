FROM python:3.11-slim

RUN apt-get update && apt-get install -y --no-install-recommends r-base r-base-dev && rm -rf /var/lib/apt/lists/*
RUN pip install poetry

WORKDIR /code
COPY poetry.lock pyproject.toml polars_testing /code/

RUN poetry install