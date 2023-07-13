output "aws_instance_public_dns" {
  value       = "http://${aws_instance.nginx1.public_dns}"
  description = "Public DNS for EC2 instance"
}

output "instance_ip" {

  description = "Command to ingress to the VM"

  value = join("", ["ssh -i ${aws_instance.nginx1.key_name} ec2-user@", aws_instance.nginx1.public_ip])
}
