// defined the aws providers version for now i have choosed the version from the terrafrom registry :
terraform {
  required_providers {
    aws = {
      version = "~> 3.72.0"
      source = "hashicorp/aws"
    }
  }
  required_version = "~> 0.13.5"
}
//defind the cloud provider with access_key, secret_key and region
provider "aws" {
  profile    = "default"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}