#private subnet

resource "aws_subnet" "main-pvt-sub" {
  vpc_id     = var.vpc_id
  cidr_block = var.pvt_sub_cidr_block
  availability_zone = var.pvt_sub_az

  tags = {
    Name = var.pvt_sub_name
  }
}
