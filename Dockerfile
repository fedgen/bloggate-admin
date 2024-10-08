FROM python:3.9

# Set environment variables
ENV JWT_SECRET_KEY="QYmXTKt6bnzaFi76H7R88FQ"
ENV ADMIN_SECRET_KEY="django-insecure-56qpm0&klyvak0uq8pb@zlx_pj8^vq028d_4-"

RUN apt update && apt install -y gcc libmariadb-dev-compat

RUN pip install gunicorn

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt


COPY . /app

CMD sleep 5

RUN python manage.py migrate

EXPOSE 8000

CMD ["gunicorn", "-w", "4", "adminManager.wsgi", "-b", "0.0.0.0:80"]