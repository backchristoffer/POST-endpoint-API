FROM python:latest
WORKDIR /app
COPY . .
USER root
RUN pip3 install pipenv
RUN useradd -m appuser && chown -R appuser:appuser /app
USER appuser
RUN pipenv install
ENTRYPOINT [ "python3" ]
CMD ["app.py"]
