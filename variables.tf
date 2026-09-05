variable "ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string    
  default     = "ami-0b6d9d3d33ba97d99"      
}
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t3.micro"
}
variable "key_name" {
  description = "The name of the key pair to use for the EC2 instance"
  type        = string
  default     = "mykey"
}
variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
  default     = "Myinstance"
}
variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "my-vpc"
}
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "my-project"
  }
}
variable "enabled_dns_support" {
  description = "Whether to enable DNS support in the VPC"
  type        = bool
  default     = true
}
variable "enabled_dns_hostnames" {
  description = "Whether to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}
variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}
variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
  default     = "us-east-1a"
}
variable "aws_security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "my-security-group"
}
variable "security_group_description" { 
  description = "The description of the security group"
  type        = string
  default     = "My security group"
}
variable "ingress_from_port" {
  description = "The port for the ingress rule"
  type        = number
  default     = 22
}
variable "ingress_to_port" {
  description = "The port for the ingress rule"
  type        = number
  default     = 22
}
variable "ingress_protocol" {
  description = "The protocol for the ingress rule"
  type        = string
  default     = "tcp"
}
variable "ingress_cidr_blocks" {  
  description = "The CIDR blocks for the ingress rule"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
variable "egress_from_port" {
  description = "The port for the egress rule"
  type        = number
  default     = 0
}
variable "egress_to_port" {
  description = "The port for the egress rule"
  type        = number
  default     = 0
}
variable "egress_protocol" {
  description = "The protocol for the egress rule"
  type        = string
  default     = "tcp"
}
variable "egress_cidr_blocks" {
  description = "The CIDR blocks for the egress rule"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
