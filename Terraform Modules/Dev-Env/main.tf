# call child module vpc

module "vpc" {
    source = "../modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    instance_tenancy = var.instance_tenancy
    vpc_name = var.vpc_name
}

# call child module subnet

module "public_subnet" {
    source = "../modules/subnet"
    pub_sub_cidr_block = var.pub_sub_cidr_block
    pub_sub_az = var.pub_sub_az
    pub_sub_name = var.pub_sub_name
    vpc_id = module.vpc.vpc_id
}

# call child private subnet 
module "private_subnet" {
    source = "../modules/pvt_subnet"
    pvt_sub_cidr_block = var.pvt_sub_cidr_block
    pvt_sub_az = var.pvt_sub_az
    pvt_sub_name = var.pvt_sub_name
    vpc_id = module.vpc.vpc_id
}


# child call Internet Gateway
module "igw" {
  source = "../modules/igw"
  igw_name = var.igw_name

  vpc_id   = module.vpc.vpc_id
}

# child call public route table
module "public_route_table"{
    source = "../modules/public_route_table"
    vpc_id = module.vpc.vpc_id
    igw_id = module.igw.igw_id
    public_subnet_id  = module.public_subnet.public_subnet_id
    pub_rt_cidr_block = var.pub_rt_cidr_block
    pub_rt_name = var.pub_rt_name
}

# child call private route table
module "private_route_table" {
  source = "../modules/private_route_table"
  vpc_id            = module.vpc.vpc_id
  nat_gw_id         = module.nat.nat_gw_id
  private_subnet_id = module.private_subnet.private_subnet_id
  pvt_rt_cidr_block = var.pvt_rt_cidr_block
  pvt_rt_name       = var.pvt_rt_name
}

# child call Elastic IP for NAT
module "eip" {
  source   = "../modules/eip"
  eip_name = var.eip_name
}

# child call NAT Gateway
module "nat" {
  source = "../modules/nat"

  allocation_id = module.eip.eip_id
  subnet_id     = module.public_subnet.public_subnet_id
  nat_gw_name   = var.nat_gw_name
}

# child call keypair
module "keypair" {
  source = "../modules/keypair"
  keypair_name = var.keypair_name
  pub_key      = var.pub_key
}

# child call security group
module "security_group" {
  source = "../modules/security_group"
  vpc_id         = module.vpc.vpc_id
  sg_name        = var.sg_name
  sg_description = var.sg_description
  ssh_port  = var.ssh_port
  port_8080 = var.port_8080
  port_9000 = var.port_9000
  ingress_cidr_blocks = var.ingress_cidr_blocks
  egress_cidr_blocks  = var.egress_cidr_blocks
}

module "ec2" {
  source = "../modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  public_subnet_id  = module.public_subnet.public_subnet_id
  private_subnet_id = module.private_subnet.private_subnet_id
  key_name = module.keypair.keypair_name
  sg_id    = module.security_group.sg_id
  pub_instance_count  = var.pub_instance_count
  associate_public_ip = var.associate_public_ip
  pub_instance_name = var.pub_instance_name
  pvt_instance_name = var.pvt_instance_name
}
