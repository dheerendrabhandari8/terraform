resource "aws_subnet" "public" {
  vpc_id            = var.vpc_id  # vpc_id is passed from the parent module
  cidr_block        = var.subnet_ip  # The subnet IP (CIDR) passed from the parent module
  #availability_zone = "us-west-2a"  # Adjust this as needed

  tags = {
    Name = var.Name
  }
}
