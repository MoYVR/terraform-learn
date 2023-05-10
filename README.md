# terraform-learn

# Terraform AWS Infrastructure for myapp

This is a Terraform module that creates an AWS VPC, a subnet, an internet gateway, a route table, a route table association, a security group, and an EC2 instance with user data.

## Prerequisites

- [Terraform](https://www.terraform.io/) installed
- AWS account credentials configured locally
- SSH key pair

## Usage

To use this module, include it as a source module in your Terraform code:

```terraform
module "myapp-infrastructure" {
  source = "git::https://github.com/username/repo.git"
  
  # Variables
  env_prefix      = "myapp"
  vpc_cidr_block  = "10.0.0.0/16"
  subnet_cidr_block = "10.0.1.0/24"
  avail_zone      = "us-west-2a"
  my_ip           = "0.0.0.0/0"
  instance_type   = "t2.micro"
}
```

### Variables

- `env_prefix` - a prefix to add to all resources' names
- `vpc_cidr_block` - the CIDR block to use for the VPC
- `subnet_cidr_block` - the CIDR block to use for the subnet
- `avail_zone` - the availability zone to use for the subnet and EC2 instance
- `my_ip` - the IP address to allow for SSH access to the EC2 instance
- `instance_type` - the instance type to use for the EC2 instance

## Resources

This module creates the following resources:

- VPC
- Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- EC2 Instance

### VPC

The VPC is created with the CIDR block specified in the `vpc_cidr_block` variable.

### Subnet

The subnet is created with the CIDR block specified in the `subnet_cidr_block` variable and in the availability zone specified in the `avail_zone` variable.

### Internet Gateway

The internet gateway is created and attached to the VPC.

### Route Table

The route table is created with a default route to the internet gateway created earlier.

### Route Table Association

The route table is associated with the subnet created earlier.

### Security Group

The security group is created with inbound rules allowing SSH access from the IP address specified in the `my_ip` variable and HTTP access from any IP address.

### EC2 Instance

The EC2 instance is created with the Amazon Linux 2 AMI, the instance type specified in the `instance_type` variable, and the subnet and security group created earlier. The instance also has user data to install Docker and run an NGINX container on port 8080.

## Outputs

- `server-public-ip` - the public IP address of the EC2 instance.
