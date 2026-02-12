# VPC ID
variable "vpc_id" {
  description = "This is VPC id"
}

# Internet Gateway ID
variable "igw_id" {
  description = "This is Internet Gateway id"
}

# Public Subnet ID
variable "public_subnet_id" {
  description = "This is Public Subnet id"
}

# public route table
variable "pub_rt_cidr_block" {
  description = "Public route table CIDR"
}

variable "pub_rt_name" {
  description = "Public route table name"
}
