FROM alpine:3.5

RUN apk update && apk add --no-cache libstdc++ ca-certificates
COPY nginx-prometheus-linux-amd64 /nginx-prometheus

ENTRYPOINT [ "/nginx-prometheus" ]