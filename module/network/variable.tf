variable "aws_region" {
  description = "AWS region to deploy the infrastructure"
  default     = "us-east-1"
}

variable "aws_profile" {
  default     = "default"
}

variable "environment" {
  default     = "dev"
}

variable "vpc_cidr" {}

variable "public_subnets" {}

variable "private_subnets" {}

variable "database_subnets" {}

 variable "ports" {
  type    = list(number)
  default = [80, 22, 8080, 8081, 8083, 3000, 3306, 9200, 443]
}
 
