FROM python:3.11

RUN pip freeze > requirements.txt
COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
COPY src ./src

ENTRYPOINT [ "python", "-m", "src.main" ]
