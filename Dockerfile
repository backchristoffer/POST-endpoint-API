FROM python:latest
WORKDIR /app
COPY . .
RUN pip3 install pipenv
RUN pipenv install
ENTRYPOINT [ "python3" ]
CMD ["app.py"]
