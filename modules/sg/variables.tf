variable "aws_security_group_name" {
    description = "The name of the security group"
    type        = string
}
variable "security_group_description" {
    description = "The description of the security group"
    type        = string
}
variable "vpc_id" {
    description = "The VPC ID where the security group will be created"
    type        = string
}
variable "ingress_from_port" {
    description = "The starting port for the ingress rule"
    type        = number
}
variable "ingress_to_port" {
    description = "The ending port for the ingress rule"
    type        = number
}
variable "ingress_protocol" {
    description = "The protocol for the ingress rule"
    type        = string
}
variable "ingress_cidr_blocks" {
    description = "The CIDR blocks for the ingress rule"
    type        = list(string)
}
variable "egress_from_port" {
    description = "The starting port for the egress rule"
    type        = number
}
variable "egress_to_port" {
    description = "The ending port for the egress rule"
    type        = number
}
variable "egress_protocol" {
    description = "The protocol for the egress rule"
    type        = string
}
variable "egress_cidr_blocks" {
    description = "The CIDR blocks for the egress rule"
    type        = list(string)
}