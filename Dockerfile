FROM python:3.7.0-alpine3.7

RUN echo "Hello Circle CI!"
RUN pip install --upgrade pip && \
    pip install --no-cache-dir pytest

WORKDIR /workspace
COPY . .
RUN pytest -v tests
