// these varibles will be passed to providers.tf file, which we can pass them by runtime
variable "aws_access_key" {
  type        = string
  description = "AWS access key"
}
variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
}
variable "aws_region" {
  type        = string
  description = "AWS region"
} 

// AWS AZ
variable "aws_az" {
  type        = string
  description = "AWS AZ"
  default     = "eu-central-1a"
}

// VPC Variables
variable "vpc_cidr" {
  type        = string
  description = "CIDR for the VPC"
  default     = "172.32.0.0/16"
}
// Subnet Variables
variable "public_subnet_cidr" {
  type        = string
  description = "CIDR for the public subnet"
  default     = "172.32.0.0/20"
}

// public key path
variable "keyname" {
  default = "/home/gkrishni/.ssh/terraform_keys/key-for-terra.pub"
}

//private key path
variable "keypath" {
  default = "/home/gkrishni/.ssh/terraform_keys/key-for-terra"
}