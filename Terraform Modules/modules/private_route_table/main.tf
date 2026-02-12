# Private Route Table
resource "aws_route_table" "pvt_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.pvt_rt_cidr_block
    gateway_id = var.nat_gw_id
  }

  tags = {
    Name = var.pvt_rt_name
  }
}

# Associate private subnet with private route table
resource "aws_route_table_association" "pvt_assoc" {
  subnet_id      = var.private_subnet_id
  route_table_id = aws_route_table.pvt_rt.id
}
