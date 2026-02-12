resource "aws_key_pair" "kp" {
  key_name   = var.keypair_name
  public_key = var.pub_key
}
