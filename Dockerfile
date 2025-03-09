FROM python:3.11.0-slim AS poetry_installer
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH /root/.local/bin:$PATH

FROM poetry_installer AS production
WORKDIR /francois
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY francois/pyproject.toml francois/poetry.lock ./
RUN poetry self add poetry-plugin-export
RUN poetry export --with dev --without-hashes -f requirements.txt --output requirements.txt
RUN pip install -r requirements.txt

COPY ./francois .

CMD ["sh", "entrypoint.sh"]
