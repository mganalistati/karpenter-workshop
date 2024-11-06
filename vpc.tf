resource "aws_vpc" "eks_vpc" {
  cidr_block           = "172.32.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name       = "eks-vpc"
    created-by = "terraform"
  }

}