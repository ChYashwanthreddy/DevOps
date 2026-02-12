output "public_instance_ids" {
  description = "Public instance ids"
  value       = aws_instance.public_instance[*].id
}

output "private_instance_id" {
  description = "Private instance id"
  value       = aws_instance.private_instance.id
}
