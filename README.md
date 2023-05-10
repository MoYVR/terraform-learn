# terraform-learn

# AWS Terraform Example

This repository contains an example Terraform configuration for creating a VPC and subnet in AWS.

## Prerequisites

Before you begin, you'll need to have the following:

- An AWS account with the necessary permissions to create resources
- The AWS CLI installed and configured with your credentials
- Terraform installed on your local machine

## Usage

1. Clone this repository to your local machine.

```
git clone https://github.com/your-username/aws-terraform-example.git
```

2. Change into the directory.

```
cd aws-terraform-example
```

3. Modify the `main.tf` file to suit your needs. Specifically, update the values of the `vpc_cidr_block` and `subnet_cidr_block` variables to the desired CIDR blocks.

4. Initialize the Terraform configuration.

```
terraform init
```

5. Preview the changes that Terraform will make.

```
terraform plan
```

6. Apply the changes to create the VPC and subnet.

```
terraform apply
```

7. Verify that the resources were created in your AWS account.

## Files

This repository contains the following files:

- `main.tf`: The main Terraform configuration file, which creates a VPC and subnet in AWS.
- `providers.tf`: The configuration file that specifies the required Terraform providers and their versions.

## Variables

The following variables are used in `main.tf`:

- `vpc_cidr_block`: The CIDR block for the VPC.
- `subnet_cidr_block`: The CIDR block for the subnet.

## Outputs

The following outputs are defined in `main.tf`:

- `vpc-d`: The ID of the VPC that was created.
- `subnet`: The ID of the subnet that was created.

