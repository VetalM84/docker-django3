FROM python:3.10.2-alpine
MAINTAINER Vitalii Mytenko

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "127.0.0.1:8000"]