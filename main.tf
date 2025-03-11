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

module "gw" {
  source      = "./main/igw"

 
 vpc_id      = module.main.vpc_id
}

