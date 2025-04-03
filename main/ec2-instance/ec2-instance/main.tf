provider "aws" {
  region  = "ap-south-1"
}
resource "aws_instance" "test"{
     #ami           = "ami-005e54dee72cc1d00"
     #instance_type = "t2-micro"
      ami = var.ami_value
      instance_type = var.instance_type_value
}
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "dheerendra-bhandari"
 
}
