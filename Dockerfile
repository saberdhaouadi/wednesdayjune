FROM python:alpine
COPY . /names/
WORKDIR /names
ENTRYPOINT ["python3"]
CMD ["names.py"]
