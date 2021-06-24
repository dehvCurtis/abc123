FROM alpine:3.13.5

RUN apk add curl bash wget

RUN curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b /usr/local/bin

RUN grype -o json uphold/litecoin-core:0.18.1