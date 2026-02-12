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
variable "vpc_id" {
  description = "this is for vpc id"
}

