FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./app /app/app

# how to run
#  docker build -t fastapi .
#  docker run -d --name fastapi -p 80:80 fastapi
#  uvicorn main:app --reload --port 5000