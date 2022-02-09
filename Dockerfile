FROM golang:1.17

WORKDIR /usr/src/app

ADD test /usr/src/app/test
ADD examples /usr/src/app/examples

RUN cd test && go mod tidy

COPY --from=hashicorp/terraform:1.1.5 /bin/terraform /bin/

# RUN cd test && go test -v -timeout 30m