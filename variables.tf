# Input variable definitions
variable "aws_access_key_id" {
  description = "AWS access key"
  default     = ""
}

variable "aws_secret_access_key" {
  description = "AWS secret access key"
  default     = ""
}

variable "vpc_name" {
  description = "VPC Production"
  default     = "vpc-prod"
}

variable "vpc_region" {
  description = "AWS region for all resources."
  type    = string
  default = "eu-central-1"
}

variable "aws_region" {
  description = "AWS region for all resources."
  type    = string
  default = "eu-central-1"
}

variable "vpc_cidr_block" {
  description = "CIDR for VPC"
  default     = "10.0.0.0/16"
}
