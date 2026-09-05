variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}
variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}
variable "enable_dns_support" {
  description = "A boolean flag to enable/disable DNS support in the VPC"
  type        = bool
}
variable "enable_dns_hostnames" {
    description = "A boolean flag to enable/disable DNS hostnames in the VPC" 
    type        = bool
}
variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}
variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
}