#vpc variables

variable "vpc_cidr_block"{
    description = "This is vpc cidr block"
}
variable "instance_tenancy"{
    description = "This is vpc tenancy"
}
variable "vpc_name"{
    description = "This is name of vpc" 
}

#public subnet variables

variable "pub_sub_cidr_block"{
    description = "This is public subnet cidr block"    
}
variable "pub_sub_az"{
    description = "This is public subnet availability zone"
}
variable "pub_sub_name"{
    description = "This is public subnet name"
}

#private subnet variables

variable "pvt_sub_cidr_block"{
    description = "This is private subnet cidr block"    
}
variable "pvt_sub_az"{
    description = "This is private subnet availability zone"
}
variable "pvt_sub_name"{
    description = "This is private subnet name"
}

#internet gateway
variable "igw_name"{
    description = "This is Internet Gate Way Name"
}

#public route table
variable "pub_rt_cidr_block" {
  description = "Public route table CIDR"
}

variable "pub_rt_name" {
  description = "Public route table name"
}

# private route table variable
variable "pvt_rt_cidr_block"{
    description = "This is private route table cidr block"
}
variable "pvt_rt_name" {
  description = "This is private route table name"
}

# Elastic IP 
variable "eip_name" {
  description = "Elastic IP name"
}

# NAT Gateway
variable "nat_gw_name" {
  description = "NAT Gateway Name"
}

# Key Pair 
variable "keypair_name" {
  description = "Key pair name"
}
variable "pub_key" {
  description = "Public key for keypair"
}

# Security Group 
variable "sg_name" {
  description = "Security group name"
}
variable "sg_description" {
  description = "Security group description"
}
variable "ssh_port" {
  description = "SSH port"
}
variable "port_8080" {
  description = "Application port 8080"
}
variable "port_9000" {
  description = "Application port 9000"
}
variable "ingress_cidr_blocks" {
  description = "Allowed CIDR blocks for inbound rules"
}
variable "egress_cidr_blocks" {
  description = "Allowed CIDR blocks for outbound rules"
}

# EC2 Instances 
variable "ami_id" {
  description = "AMI ID for EC2 instances"
}
variable "instance_type" {
  description = "Instance type"
}
variable "pub_instance_name" {
  description = "Public instance name"
}
variable "pvt_instance_name" {
  description = "Private instance name"
}
variable "pub_instance_count" {
  description = "Number of public instances"
}
variable "associate_public_ip" {
    type = bool
  description = "Associate public IP for public instance"
}


# provider variables
variable "prod_env_region" {
  description = "this is for prod env region"
}