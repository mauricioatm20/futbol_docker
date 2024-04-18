# Usa la imagen base de Python
FROM python:3


EXPOSE 8000

WORKDIR /app

COPY requirements.txt /app

RUN pip3 install -r requirements.txt --no-cache-dir

COPY ProjectCampeones /app/ProjectCampeones

WORKDIR /app/ProjectCampeones

CMD ["python", "manage.py", "runserver","0.0.0.0:8000"]


