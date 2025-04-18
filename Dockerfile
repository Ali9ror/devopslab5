FROM python:3.12


COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

WORKDIR /app

COPY src ./src

ENTRYPOINT [ "python", "-m", "src.main" ]
