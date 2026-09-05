terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.60.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

module "vpc" {
  source                = "./modules/vpc"
  vpc_name            = var.vpc_name
  vpc_cidr            = var.vpc_cidr
  enable_dns_support  = true
  enable_dns_hostnames = true
  subnet_cidr        = var.subnet_cidr
  availability_zone  = var.availability_zone
  tags = var.tags
}
module "aws_security_group" {
  source = "./modules/sg"
  aws_security_group_name = var.aws_security_group_name
  security_group_description = var.security_group_description
  vpc_id = module.vpc.vpc_id
  ingress_from_port = 22
  ingress_to_port = var.ingress_to_port
  ingress_protocol = var.ingress_protocol
  ingress_cidr_blocks = var.ingress_cidr_blocks
  egress_from_port = var.egress_from_port
  egress_to_port = var.egress_to_port
  egress_protocol = var.egress_protocol
  egress_cidr_blocks = var.egress_cidr_blocks
}

module "ec2_dev" {
  source              = "./modules/ec2"
  ami                 = var.ami
  instance_type       = var.instance_type
  key_name            = var.key_name
  instance_name       = var.instance_name
  vpc_id              = module.vpc.vpc_id          # ya module.vpc.vpc_id, jo bhi tera pattern hai
  subnet_id           = module.vpc.subnet_id                  # jo already hoga
  security_group_ids  = [module.aws_security_group.aws_security_group_id]
}