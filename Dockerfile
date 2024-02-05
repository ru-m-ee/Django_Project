FROM python:3.10
ENV PYTHONUNBUFFERED 1

WORKDIR /Django_Project
COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]