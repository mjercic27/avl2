FROM alpine:3.12
ADD https://github.com/openfaas/faas/releases/download/0.9.14/fwatchdog /usr/bin/
RUN chmod +x /usr/bin/fwatchdog
RUN apk add --update python3 py3-pip

ENV fprocess="python3 entrypoint.py"
COPY entrypoint.py /


RUN pip install requests

EXPOSE 8080
CMD [ "fwatchdog" ]
