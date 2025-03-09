FROM python:3.12-slim 

WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git && apt-get clean

COPY ./requirements.txt ./ 
RUN pip install --no-cache-dir -r requirements.txt 

COPY ./ ./