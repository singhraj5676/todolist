FROM python:3.10-slim
RUN mkdir /Demo
WORKDIR /Demo
ADD . /Demo
RUN pip install -r requirements.txt
EXPOSE 8000
CMD python manage.py runserver

proxy_pass http://127.0.0.1:8000;