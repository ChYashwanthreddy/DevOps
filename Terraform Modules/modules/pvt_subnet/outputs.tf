output "private_subnet_id"{
    description = "This is public subnet id"
    value = aws_subnet.main-pvt-sub.id
}