output "instance_id" {
    value = module.ec2_dev.instance_id
}
output "instance_public_ip" {
    value = module.ec2_dev.instance_public_ip
}
output "vpc_id" {
    value = module.vpc.vpc_id
}
output "subnet_id" {
    value = module.vpc.subnet_id
}
output "aws_security_group_id" {
  value = module.aws_security_group.aws_security_group_id
}