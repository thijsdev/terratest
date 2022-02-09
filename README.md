# Terratest sample

How to use:

    docker build -t terratest .

    docker run -it -v $PWD:/usr/src/app \
        -v ~/.aws:/root/.aws \
        terratest go test terraform_test.go -v -timeout 30m