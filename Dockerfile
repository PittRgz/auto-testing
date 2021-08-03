# Python image
FROM python:3.9-alpine

ENV PYTHONBUFFERED 1

# Install requirements in container
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Create and sync folders between local and container
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# create a docker user
RUN adduser -D docker_user
RUN chown docker_user:docker_user -R /app/
USER docker_user