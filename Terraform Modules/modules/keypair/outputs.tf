output "keypair_name" {
  description = "This is keypair name output"
  value       = aws_key_pair.kp.key_name
}
