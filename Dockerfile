FROM python:slim

WORKDIR /app
COPY app pyproject.toml poetry.lock ./

RUN pip install poetry \
    && poetry config virtualenvs.create false \
    && poetry install --no-dev

ENTRYPOINT [ "poetry", "run" ]
CMD ["python", "message_server.py", "0.0.0.0", "50051"]
