FROM alpine:3.6
ADD https://github.com/openfaas/faas/releases/download/0.6.5/fwatchdog /usr/bin/
RUN chmod +x /usr/bin/fwatchdog

ENV fprocess="python entrypoint.py"
COPY entrypoint.py /

RUN apk add --update py-pip
RUN pip install requests

EXPOSE 8080
CMD [ "fwatchdog" ]
