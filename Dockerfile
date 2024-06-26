FROM python:latest
WORKDIR /app
COPY . .
RUN pip3 install pipenv
RUN adduser --disabled-password --gecos '' appuser && chown -R appuser:appuser /app
USER appuser
RUN pipenv install
ENTRYPOINT [ "python3" ]
CMD ["app.py"]
