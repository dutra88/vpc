# Creation of the VPCs
resource "aws_vpc" "vpc_name" {
  count                = length(var.vpc_name)
  cidr_block           = var.vpc_cidr[count.index]
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostname
  tags                 = Name = "VPC"
}
