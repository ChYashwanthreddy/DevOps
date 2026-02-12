resource "aws_s3_bucket" "b" {
  bucket = "dev-env-yash17-s3-bucket"

  tags = {
    Name        = "dev-env-yash17-s3-bucket"
    Environment = "Dev"
  }
}