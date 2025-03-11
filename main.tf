module "main" {
  source      = "./main/vpc"
  cidr_block  = var.cidr_block
  Name        = "VPC-module"
}

# You can reference the VPC ID output from the module
output "vpc_id" {
  value = module.main.vpc_id  # This references the vpc_id output from the module
}
module "public" {
  source      = "./main/subnet"
  subnet_ip   = var.subnet_ip  # Pass the subnet CIDR block
  Name        = "Module-subnet"
  vpc_id      = module.main.vpc_id  # Pass the VPC ID output from the "main" module
}
