# FROM python:3.10-rc-slim as base
FROM python:3.10-rc as base

ENV WDIR /sandbox/
WORKDIR $WDIR

RUN apt install python3

RUN pip install poetry
COPY pyproject.toml poetry.lock ./
RUN poetry config virtualenvs.create false --local
RUN poetry install --no-root --no-dev

FROM base as builder
WORKDIR $WDIR
COPY . .
RUN poetry config virtualenvs.create false --local
RUN poetry install

CMD ["ipython"]
