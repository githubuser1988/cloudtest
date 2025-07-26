FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install Flask gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:app"]
