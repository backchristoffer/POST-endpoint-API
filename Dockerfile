FROM python:latest
WORKDIR /app
COPY . .
RUN pipenv install
CMD ["pipenv", "run", "python3", "app.py"]
