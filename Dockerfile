FROM alpine:latest

RUN apk add nano dnsmasq

ENTRYPOINT [ "dnsmasq", "-k" ]
