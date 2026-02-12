# VPC id
variable "vpc_id" {
  description = "This is VPC id"
}

# NAT gateway id
variable "nat_gw_id" {
  description = "This is NAT gateway id"
}

# Private subnet id
variable "private_subnet_id" {
  description = "This is private subnet id"
}

# private route table
variable "pvt_rt_cidr_block" {
  description = "Private route table CIDR"
}

variable "pvt_rt_name" {
  description = "Private route table name"
}
