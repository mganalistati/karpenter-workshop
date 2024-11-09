resource "aws_subnet" "public_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 3, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge({ Name = "${var.project_name}-subnet-public1-${data.aws_region.current.name}a" }, local.common_tags)
}

resource "aws_subnet" "public_2b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 3, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge({ Name = "${var.project_name}-subnet-public2-${data.aws_region.current.name}b" }, local.common_tags)
}

resource "aws_subnet" "private_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 3, 3)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge({ Name = "${var.project_name}-subnet-private1-${data.aws_region.current.name}a" }, local.common_tags)
}

resource "aws_subnet" "private_2b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 3, 4)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge({ Name = "${var.project_name}-subnet-private2-${data.aws_region.current.name}b" }, local.common_tags)
} 