# Official image used as part of parent image
FROM python:3-slim-buster

COPY requirements.txt .
COPY tango_daily.py .

RUN apt-get update && pip install --no-cache-dir -r requirements.txt

CMD [ "python3", "tango_daily.py" ]
