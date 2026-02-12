variable "vpc_id" {
  description = "This is VPC id"
}

variable "sg_name" {
  description = "This is security group name"
}

variable "sg_description" {
  description = "This is security group description"
}

variable "ssh_port" {
  description = "SSH port"
}

variable "port_8080" {
  description = "Port 8080"
}

variable "port_9000" {
  description = "Port 9000"
}

variable "ingress_cidr_blocks" {
  description = "Ingress CIDR blocks"
  type        = list(string)
}

variable "egress_cidr_blocks" {
  description = "Egress CIDR blocks"
  type        = list(string)
}
