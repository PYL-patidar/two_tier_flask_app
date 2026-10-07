FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN apt update -y
RUN apt install -y pkg-config default-libmysqlclient-dev build-essential 

RUN pip install --upgrade pip
RUN pip install mysqlclient
RUN pip install -r requirements.txt

CMD ["python", "app.py"]
