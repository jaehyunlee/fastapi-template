FROM python:3.12-slim

WORKDIR /src
RUN pip install poetry

COPY pyproject.toml poetry.lock ./
COPY src src

RUN poetry install --no-root
EXPOSE 8000
ENTRYPOINT [ "poetry" ,"run", "uvicorn", "src.main:app", "--host", "0.0.0.0" ]