variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  #vpc_id = var.vpc_id
}

#variable "internet_gateway_id"{
#type = string
#}
variable "gateway_id" {
  description = "The ID of the VPC"
  type        = string
  #vpc_id = var.vpc_id
}
variable "subnet_id" {
  description = "The subnet ID to associate with the route table"
  type        = string
}
