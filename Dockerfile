# syntax=docker/dockerfile:1
FROM python:3.7-alpine
ARG USER=maqs
RUN adduser -S $USER
USER $USER
WORKDIR /home/maqs
ENV FLASK_APP /home/maqs/app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN /usr/local/bin/python -m pip install --upgrade pip
COPY requirements.txt /home/maqs/requirements.txt
RUN pip install -r /home/maqs/requirements.txt
EXPOSE 5000
COPY . /home/maqs
CMD ["cd /home/maqs", "flask", "run"]
