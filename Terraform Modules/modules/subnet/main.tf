
#public subnet

resource "aws_subnet" "main-pub-sub" {
  vpc_id     = var.vpc_id
  cidr_block = var.pub_sub_cidr_block
  availability_zone = var.pub_sub_az

  tags = {
    Name = var.pub_sub_name
  }
}


