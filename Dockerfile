FROM python:latest
WORKDIR /app
COPY . .
RUN pip install pipenv
RUN pipenv install
ENTRYPOINT [ "python3" ]
CMD ["app.py"]
