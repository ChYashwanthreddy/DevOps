output "private_route_table_id" {
  description = "This is private route table id"
  value       = aws_route_table.pvt_rt.id
}
