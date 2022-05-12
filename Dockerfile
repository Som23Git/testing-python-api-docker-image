FROM alpine:latest

RUN apk add --no-cache python3-dev \
    && apk add --update py3-pip \
    && apk add py3-setuptools

WORKDIR /app

COPY . /app

RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["app.py"] 