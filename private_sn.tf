# Private Subnetes "eks_private_sn_1a" In "eks_vpc"
resource "aws_subnet" "eks_private_sn_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 3, 3)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge({ Name = "${var.project_name}-subnet-private1-${data.aws_region.current.name}a" }, local.common_tags)
}

# Private Subnetes "eks_private_sn_2b" In "eks_vpc"
resource "aws_subnet" "eks_private_sn_2b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 3, 4)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge({ Name = "${var.project_name}-subnet-private2-${data.aws_region.current.name}b" }, local.common_tags)
}

# Private Route Table "eks_private_rt_1a" In "eks_vpc"
resource "aws_route_table" "eks_private_rt_1a" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge({ Name = "${var.project_name}-rtb-private1-${data.aws_region.current.name}a" }, local.common_tags)
}

# Private Route "eks_private_r_1a" In "eks_private_rt_1a" To "eks_public_ngw_1a"
resource "aws_route" "eks_private_r_1a" {
  route_table_id         = aws_route_table.eks_private_rt_1a.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.eks_public_ngw_1a.id
}

# Private Route Table "eks_private_rt_2b" In "eks_vpc"
resource "aws_route_table" "eks_private_rt_2b" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge({ Name = "${var.project_name}-rtb-private2-${data.aws_region.current.name}b" }, local.common_tags)
}

# Private Route "eks_private_r_2b" In "eks_private_rt_2b" To "eks_public_ngw_2b"
resource "aws_route" "eks_private_r_2b" {
  route_table_id         = aws_route_table.eks_private_rt_2b.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.eks_public_ngw_2b.id
}

# Private Route Table Association "eks_private_rt_1a" To "eks_private_sn_1a"
resource "aws_route_table_association" "eks_rt_assoc_private_sn_1a" {
  subnet_id      = aws_subnet.eks_private_sn_1a.id
  route_table_id = aws_route_table.eks_private_rt_1a.id
}

# Private Route Table Association "eks_private_rt_2b" To "eks_private_sn_2b"
resource "aws_route_table_association" "eks_rt_assoc_private_sn_2b" {
  subnet_id      = aws_subnet.eks_private_sn_2b.id
  route_table_id = aws_route_table.eks_private_rt_2b.id
}