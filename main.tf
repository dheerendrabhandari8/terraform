module "main" {
  source      = "./main/vpc"
  cidr_block  = var.cidr_block
  Name        = "VPC-module"
}

output "vpc_id" {
  value = module.main.vpc_id  
}
module "public" {
  source      = "./main/subnet"
  subnet_ip   = var.subnet_ip  
  Name        = "Module-subnet"
  vpc_id      = module.main.vpc_id  
}
output "subnet_id" {
  value = module.public.subnet_id
}


module "gw" {
  source      = "./main/igw"

 
 vpc_id      = module.main.vpc_id
 #name        = "test"
}

output "gateway_id" {
  value = module.gw.gateway_id
}
module "rt" {
  source      = "./main/rt"  # Path to your route table module
  vpc_id      = module.main.vpc_id
  gateway_id  = module.gw.gateway_id
  subnet_id   = module.public.subnet_id  # Pass the subnet ID here
}

module "instance" {
  source  = "./main/ec2-instance/"
  ami_value = "ami-0e35ddab05955cf57"
  instance_type_value = "t2.micro"

}

