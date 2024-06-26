FROM python:latest
RUN useradd -ms /bin/bash appuser
WORKDIR /app
COPY . .
RUN chown -R appuser:appuser /app
USER appuser
RUN pip install pipenv --user pipenv
ENV PATH="/home/appuser/.local/bin:${PATH}"
RUN pipenv install --system --deploy
ENTRYPOINT [ "python3" ]
CMD ["app.py"]
