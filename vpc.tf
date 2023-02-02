resource "aws_vpc" "main" {         # Creating VPC
  cidr_block       = var.cidr_block # Defining the CIDR block
  instance_tenancy = "default"
  tags = merge(var.tags, {
    "Name" = "vpc-${var.name}-${data.aws_region.current.name}"
  })
}