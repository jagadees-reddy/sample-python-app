FROM python:3.8.0-alpine
# Python docker images: https://github.com/docker-library/docs/tree/master/python/

USER root

# Copy the src
WORKDIR /app
COPY src/ /app/src/
COPY ./requirements.txt /app
RUN ls -la /app

# Install python dependencies
RUN python3 --version
RUN apk update && apk add --no-cache sudo
RUN pip3 install coverage
RUN pip3 install --upgrade pip
RUN pip3 sudo -H install --no-cache-dir -r /app/requirements.txt
RUN pip3 sudo -H list --format=columns

USER 1001

# EXPOSE 5001
ENTRYPOINT ["python3", "/app/src/app.py"]
