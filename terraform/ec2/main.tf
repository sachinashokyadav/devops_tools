provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_demo" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.key_name
}
