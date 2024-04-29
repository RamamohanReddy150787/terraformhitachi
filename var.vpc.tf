variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = "amit.01-vpc"
}

resource "aws_vpc" "main-vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}
