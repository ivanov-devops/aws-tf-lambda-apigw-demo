terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.2.0"
    }
  }
  required_version = "~> 1.0"
}

###############################################################################
# Provider
###############################################################################
provider "aws" {
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
  region     = "${var.vpc_region}"
}

# terraform {
#   backend "s3" {
#     encrypt = true
#     bucket  = "tf-state"
#     region  = "eu-central-1"
#     profile = "default"
#     key     = "vpc_resources/terraform.tfstate"
#   }
# }

###############################################################################
# Base
###############################################################################

module "lambda" {
  source = "./lambda"
}

module "apigw" {
  source = "./apigw"
  function_name = "${module.lambda.func_name}"
  integration_uri = "${module.lambda.in_uri}"
}
