variable "subnet_id" {}
variable "security_group_id" {}
variable "instance_type" {}
variable "ami" {}



resource "aws_instance" "example" {
 ami = var.ami
 instance_type = var.instance_type
 subnet_id = var.subnet_id



 vpc_security_group_ids = [var.security_group_id]



 # Additional configuration for your EC2 instance
}



output "ec2_instance_id" {
 value = aws_instance.example.id
}