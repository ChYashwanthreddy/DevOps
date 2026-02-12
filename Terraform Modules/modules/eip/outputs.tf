output "eip_id" {
  description = "This is Elastic IP id"
  value       = aws_eip.nat_eip.id
}
