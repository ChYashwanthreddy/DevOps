resource "aws_route_table" "pub_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.pub_rt_cidr_block
    gateway_id = var.igw_id
  }

  tags = {
    Name = var.pub_rt_name
  }
}

resource "aws_route_table_association" "pub_assoc" {
  subnet_id      = var.public_subnet_id
  route_table_id = aws_route_table.pub_rt.id
}
