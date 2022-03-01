# syntax=docker/dockerfile:1
FROM python:3.7-alpine
RUN mkdir /maqs-oc-test
# ARG USER=maqs
# RUN adduser -S $USER
# USER $USER
WORKDIR /maqs-oc-test
ENV FLASK_APP=app.py
RUN /usr/local/bin/python -m pip install --upgrade pip
COPY requirements.txt /maqs-oc-test/requirements.txt
COPY app.py /maqs-oc-test/app.py
RUN pip install -r /maqs-oc-test/requirements.txt
EXPOSE 5000
COPY . /maqs-oc-test
CMD [ "python", "./app.py" ]
