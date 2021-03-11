FROM python:3.10-rc as base
# Known issue: slim fails due to a `gcc` requirement
# FROM python:3.10-rc-slim as base

# Helpers for a clean image
ENV PYTHONFAULTHANDLER=1 \
    PYTHONHASHSEED=random \
    PYTHONUNBUFFERED=1

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
