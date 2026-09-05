variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "instance_name" {}
variable "vpc_id" {}
variable "subnet_id" {}
variable "security_group_ids" {
  description = "List of security group IDs to attach"
  type        = list(string)
}