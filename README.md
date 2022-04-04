Lambda function and API Gateway

### This repository contains a demo how-to create Serverless Lambda function "Hello, World" and API GW for AWS

#### prerequisites
Terraform version 1.0
[Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started)
[AWS account](https://aws.amazon.com/free/), programmatic access. AWS access key, AWS secret access key.
[AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
[Configured for your AWS account](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html#cli-configure-quickstart-config)

#### Content
main.tf, contains the required providers.
module "lambda" for the Lambda function which works as a backend and serves the "Hello, World"
module "apigw" which creates API Gateway for it.

In module "lambda" is simple Js script for the "Hello, World"
```
lambda/helloworld/helloworld.js
```

#### Usage
1. Clone the repository
2. Run ``` terraform init ``` from the command line from the repository
3. Run ``` terraform plan ``` , observe what resources will be created.
Note*** Warning: Some of the infrastructure in this tutorial does not qualify for the AWS free tier.
4. If the infrastructure is valid for your needs run ``` terraform apply ```. When the creation is done, check the response
```
curl "$(terraform output -raw base_url)/hello"
``` 
5. To remove the infrastructure use ``` terraform destroy ```
