output "INSTANCE_ID" {
  value = aws_instance.SRL_UBUNTU.id
}

output "PRIVATE_IP" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.SRL_UBUNTU.private_ip
}

output "PUBLIC_IP" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.SRL_UBUNTU.public_ip
}

output "SSH_USER" {
  description = "default user for SSH access"
  value = "ubuntu"
}
