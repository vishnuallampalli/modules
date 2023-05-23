resource "aws_instance" "example" {
 ami = var.ami
 instance_type = var.instance_type
 subnet_id = var.subnet_id

 key_name = "terra"

associate_public_ip_address = true

 vpc_security_group_ids = [var.security_group_id]



 # Additional configuration for your EC2 instance
}

