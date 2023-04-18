
provider "aws" {}

variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {}

resource "aws_vpc" "developmentrt-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "development"
  }
}

resource "aws_subnet" "dev-subnet-1" {
  vpc_id            = aws_vpc.developmentrt-vpc.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = "us-east-1a"
  tags = {
    Name = "subnet-1-dev"
  }
}


output "vpc-d" {
  value = aws_vpc.developmentrt-vpc.id
}

output "subnet" {
  value = aws_subnet.dev-subnet-1.id
}

