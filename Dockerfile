FROM python:rc-alpine3.13
LABEL maintainer="OYM alpine Server"
RUN apk update
WORKDIR /tmp
COPY . .
RUN chmod +x install.sh
RUN /tmp/install.sh
ENTRYPOINT [ "python3", "/tmp/main.py" ]
