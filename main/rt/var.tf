variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  #vpc_id = var.vpc_id
}

variable "cidr_block"{
type = string
}

variable "internet_gateway_id"{
type = string
}