FROM python:3
RUN pip install django

COPY . .

RUN python manage.py migrate

CMD ["python","manage.py","runserver","127.0.0.1:8000"]
