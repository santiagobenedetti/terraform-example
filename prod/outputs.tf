# This file contains the output values that will be displayed after the terraform apply command is executed.
output "instance_id" {
  value = aws_instance.my_instance_name.id
}

output "instance_ip_addr" {
  value = aws_instance.my_instance_name.public_ip
}
