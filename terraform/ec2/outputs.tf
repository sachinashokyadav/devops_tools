output "public_ip_add" {
  value = aws_instance.ec2_demo.public_ip
}

output "private_ip_add" {
  value = aws_instance.ec2_demo.private_ip
}

output "instance_id" {
  value = aws_instance.ec2_demo.id
}
