FROM python:3.7-stretch
# Expose port 8080 for cloud run
EXPOSE 8080

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
