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
variable "vpc_id" {
  description = "this is for vpc id"
}
