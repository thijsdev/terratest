FROM golang:1.17

WORKDIR /usr/src/app/test

# ADD test /usr/src/app/test
# ADD examples /usr/src/app/examples

COPY --from=hashicorp/terraform:1.1.5 /bin/terraform /bin/
