# vpc variable values 

vpc_cidr_block = "10.1.0.0/16"
instance_tenancy = "default"
vpc_name = "Dev-Env-Yashwanth-vpc"

# public subnet variable values 

pub_sub_cidr_block = "10.1.1.0/24"
pub_sub_az = "us-east-2a"
pub_sub_name = "Dev-Env-Yashwanth-pub-subnet"

# private subnet variable values
pvt_sub_cidr_block = "10.1.2.0/24"
pvt_sub_az = "us-east-2b"
pvt_sub_name = "Dev-Env-Yashwanth-pvt-subnet"

# Internet Gate Way variables 
igw_name = "Dev-Env-Yashwanth-igw"

# Public Route table
pub_rt_cidr_block = "0.0.0.0/0"
pub_rt_name = "Dev-Env-Yashwanth-pub-rt"

# Private Route table
pvt_rt_name = "Dev-Env-Yashwanth-pvt-rt"
pvt_rt_cidr_block = "0.0.0.0/0"

# Elastic IP
eip_name = "Dev-Env-Yashwanth-eip"

# NAT Gateway
nat_gw_name = "Dev-Env-Yashwanth-gw-NAT"

# Key Pair
keypair_name = "Dev-Env-yashwanth-keypair-new"
pub_key      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDrjoP1mpTnwRGM19lIC4vn6RUZ9H0rg/XjRriUuMFEF2umh/yJ7TDM12QMey9LM8gVXKCr18hMH54ljaoPPZlhOGVqjDDqYkOHIY7/wn+TNk+21tlq8a6b28ImMcXygBOwPu+1FGTdKuQjXiN4P+qfV+CUIsXbG7TD19RTtzaiZsG9wZtuBfI7h8u94TGGg/txYiCYJRj6uPlhvBavWKDEUB8iTVTQAUhZdxO6BaDNav/nO/BN2WrgVPtsTvU47KidGeoiTlFmX8Ca8m09knDVHk5/Winr2VF2jfGpn7JKeqQXlD2uZ9dwDeSbQCiLjqJXFDMwJdKwAL2Y2bAdkLhKt0h1CdKISWzBIpITA00CFVZVSx3xf2RdSgCxJZUu3GWJKw8yj8rIaBFqAgVh8ohc3AgJlkZXktPv5O6Jo8kP3Tcj+OOeXdNf0undF+QCa9fainB90NOqdFSUCWR3a08To5XSq4ETA97LCfdlS3Mb7tjNMDL+a4lmF+gCNyc5ux92sY00vXLG2e9qcsSfOgxRT5J2FHiqW2sakA4kfo0vuAE3f2YEPin6dZtsW2qFuhqN1KEx+ZYD92mWwIL39RX1tpTmmZ+8s1Ayu6ABYg2LtJDOEMPI5LQx/V84TmJf2RPyHYkgDBOc60+i9AexS07fhaUp2ViwVWAKCVyEg4qZSQ== chada@YASH"

# Security Group
sg_name        = "Dev-Dnv-yashwanth-sg"
sg_description = "Allow TLS inbound traffic and all outbound traffic"
ssh_port  = 22
port_8080 = 8080
port_9000 = 9000
ingress_cidr_blocks = ["0.0.0.0/0"]
egress_cidr_blocks  = ["0.0.0.0/0"]

# EC2 Instances
ami_id        = "ami-06e3c045d79fd65d9"
instance_type = "t2.micro"

pub_instance_name  = "Dev-Env-Yash-public-instance"
pvt_instance_name  = "Dev-Env-Yash-private-instance"
pub_instance_count = 1
associate_public_ip = true

dev_env_region = "us-east-2"
