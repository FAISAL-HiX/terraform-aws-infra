
# Terraform AWS Infrastructure

Terraform configuration to provision a basic AWS environment using a modular structure — VPC, Security Group, and an EC2 instance.

## Architecture

This project creates:
- **VPC** — Custom VPC with a public subnet, internet gateway, and route table
- **Security Group** — Allows inbound SSH (port 22) and configurable egress
- **EC2 Instance** — A `t2.micro` instance launched inside the VPC, attached to the security group

## Project Structure

.
├── main.tf # Root module calling vpc, sg, and ec2 modules
├── variables.tf # Root-level input variables
├── outputs.tf # Root-level outputs (VPC ID, instance IP, etc.)
├── modules/
│ ├── vpc/ # VPC, subnet, internet gateway, route table
│ ├── sg/ # Security group with ingress/egress rules
│ └── ec2/ # EC2 instance


## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.5
- AWS account with configured credentials (`aws configure`)
- An existing EC2 key pair in your target region

## Usage

```bash
# Clone the repo
git clone https://github.com/FAISAL-HiX/terraform-aws-infra.git
cd terraform-aws-infra

# Initialize Terraform
terraform init

# Review the execution plan
terraform plan

# Apply the configuration
terraform apply
```

## Inputs

| Name | Description | Default |
|------|-------------|---------|
| `vpc_cidr` | CIDR block for the VPC | `10.0.0.0/16` |
| `subnet_cidr` | CIDR block for the subnet | `10.0.1.0/24` |
| `instance_type` | EC2 instance type | `t2.micro` |
| `ami` | AMI ID for the instance | `ami-0b6d9d3d33ba97d99` |

## Outputs

| Name | Description |
|------|-------------|
| `vpc_id` | ID of the created VPC |
| `subnet_id` | ID of the created subnet |
| `aws_security_group_id` | ID of the security group |
| `instance_id` | ID of the EC2 instance |
| `instance_public_ip` | Public IP of the EC2 instance |

## Cleanup

To destroy all resources created by this project:

```bash
terraform destroy
```

## Author

Faisal Ali