FROM python:3.10-buster

COPY requirements /app/requirements
WORKDIR /app

RUN python -m venv .venv

RUN .venv/bin/pip install -r requirements/backend.in

COPY . .

CMD [".venv/bin/python", "-m", "uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]
