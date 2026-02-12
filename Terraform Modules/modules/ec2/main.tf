# Public EC2
resource "aws_instance" "public_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg_id]

  count = var.pub_instance_count

  associate_public_ip_address = var.associate_public_ip

  tags = {
    Name = var.pub_instance_name
  }
}

# Private EC2
resource "aws_instance" "private_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg_id]

  associate_public_ip_address = false

  tags = {
    Name = var.pvt_instance_name
  }
}
