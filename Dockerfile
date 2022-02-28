# syntax=docker/dockerfile:1
FROM python:3.7-alpine
ARG USER=maqs
RUN useradd -m -s /bin/bash $USER
USER maqs
WORKDIR /home/maqs
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run"]
