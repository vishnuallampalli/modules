variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {}
variable "security_group_name" {}



resource "aws_vpc" "main" {
 cidr_block = var.vpc_cidr_block
}



resource "aws_subnet" "main" {
 vpc_id = aws_vpc.main.id
 cidr_block = var.subnet_cidr_block
 availability_zone = "us-east-1a" # Change to your desired availability zone
}



resource "aws_security_group" "main" {
 name = var.security_group_name
 description = "Security group for the VPC"
 vpc_id = aws_vpc.main.id



 # Additional configuration for the security group rules
}
