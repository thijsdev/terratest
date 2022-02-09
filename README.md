# Terratest sample repo

## How to use

    docker build -t terratest .

    docker run -it -v $PWD:/usr/src/app \
        -v ~/.aws:/root/.aws \
        terratest go test terraform_test.go -v -timeout 30m

## Expected result
    go: downloading github.com/gruntwork-io/terratest v0.40.0
    ...
    go: downloading google.golang.org/protobuf v1.26.0
    === RUN   TestTerraformHelloWorldExample
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z retry.go:91: terraform [init -upgrade=false]
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Running command terraform with args [init -upgrade=false]
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Initializing the backend...
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Initializing provider plugins...
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Terraform has been successfully initialized!
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: You may now begin working with Terraform. Try running "terraform plan" to see
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: any changes that are required for your infrastructure. All Terraform commands
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: should now work.
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: If you ever set or change modules or backend configuration for Terraform,
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: rerun this command to reinitialize your working directory. If you forget, other
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: commands will detect it and remind you to do so if necessary.
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z retry.go:91: terraform [apply -input=false -auto-approve -lock=false]
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Running command terraform with args [apply -input=false -auto-approve -lock=false]
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Changes to Outputs:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:   + hello_world = "Hello, World!"
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: You can apply this plan to save these new output values to the Terraform
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: state, without changing any real infrastructure.
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
    examples/terratest/terraform.tfstate**
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Outputs:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: hello_world = "Hello, World!"
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z retry.go:91: terraform [output -no-color -json hello_world]
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Running command terraform with args [output -no-color -json hello_world]
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: "Hello, World!"
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z retry.go:91: terraform [destroy -auto-approve -input=false -lock=false]
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Running command terraform with args [destroy -auto-approve -input=false -lock=false]
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Changes to Outputs:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:   - hello_world = "Hello, World!" -> null
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: You can apply this plan to save these new output values to the Terraform
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: state, without changing any real infrastructure.
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66: Destroy complete! Resources: 0 destroyed.
    TestTerraformHelloWorldExample 2022-02-09T15:28:40Z logger.go:66:
    --- PASS: TestTerraformHelloWorldExample (0.24s)
    PASS
    ok  	command-line-arguments	0.256s