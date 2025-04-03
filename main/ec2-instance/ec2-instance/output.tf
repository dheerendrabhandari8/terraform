output "instance_type" {
  description = "ID of project VPC"
  value       = aws_instance.test.public_ip
}

