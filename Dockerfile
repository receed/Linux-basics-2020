FROM python:3

WORKDIR /src

COPY src/server.py /src/server.py

CMD ["python3", "server.py"]

