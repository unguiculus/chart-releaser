FROM alpine:3.10

RUN apk add --update --no-cache ca-certificates

COPY cr /usr/local/bin/cr

# Ensure that the binary is available on path and is executable
RUN cr --help
