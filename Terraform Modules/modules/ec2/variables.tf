variable "ami_id" {
  description = "AMI ID"
}

variable "instance_type" {
  description = "Instance type"
}

variable "public_subnet_id" {
  description = "Public subnet id"
}

variable "private_subnet_id" {
  description = "Private subnet id"
}

variable "key_name" {
  description = "Key pair name"
}

variable "sg_id" {
  description = "Security group id"
}

variable "pub_instance_count" {
  description = "Number of public instances"
}

variable "associate_public_ip" {
  description = "Associate public IP for public instance"
}

variable "pub_instance_name" {
  description = "Public instance name"
}

variable "pvt_instance_name" {
  description = "Private instance name"
}
