#### PRIVATE SUBNETES ####

# Private Subnetes "eks_private_sn_1a" In "eks_vpc"
resource "aws_subnet" "eks_private_sn_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 3, 3)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-subnet-private1-${data.aws_region.current.name}a"
    }
  )
}

# Private Subnetes "eks_private_sn_2b" In "eks_vpc"
resource "aws_subnet" "eks_private_sn_2b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 3, 4)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-subnet-private2-${data.aws_region.current.name}b"
    }
  )
}

# Private Subnetes "eks_private_sn_3c" In "eks_vpc"
resource "aws_subnet" "eks_private_sn_3c" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 3, 5)
  availability_zone = "${data.aws_region.current.name}c"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-subnet-private3-${data.aws_region.current.name}c"
    }
  )
}

# Private Subnetes "eks_ctp_private_sn_1a" In "eks_vpc"
resource "aws_subnet" "eks_ctp_private_sn_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 3, 6)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-ctp-subnet-private1-${data.aws_region.current.name}a"
    }
  )
}

# Private Subnetes "eks_ctp_private_sn_2b" In "eks_vpc"
resource "aws_subnet" "eks_ctp_private_sn_2b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 3, 7)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-ctp-subnet-private2-${data.aws_region.current.name}b"
    }
  )
}
#### ROUTE TABLES ####

# Private Route Table "eks_private_rt_1a" In "eks_vpc"
resource "aws_route_table" "eks_private_rt_1a" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-rtb-private1-${data.aws_region.current.name}a"
    }
  )
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

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-rtb-private2-${data.aws_region.current.name}b"
    }
  )
}

# Private Route "eks_private_r_2b" In "eks_private_rt_2b" To "eks_public_ngw_2b"
resource "aws_route" "eks_private_r_2b" {
  route_table_id         = aws_route_table.eks_private_rt_2b.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.eks_public_ngw_2b.id
}

# Private Route Table "eks_private_rt_3c" In "eks_vpc"
resource "aws_route_table" "eks_private_rt_3c" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-rtb-private3-${data.aws_region.current.name}c"
    }
  )
}

# Private Route "eks_private_r_3c" In "eks_private_rt_2b" To "eks_public_ngw_3c"
resource "aws_route" "eks_private_r_3c" {
  route_table_id         = aws_route_table.eks_private_rt_3c.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.eks_public_ngw_3c.id
}

# Private Route Table "eks_private_rt_3c" In "eks_vpc"
resource "aws_route_table" "eks_ctp_private_rt" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-ctp-rtb-private-${data.aws_region.current.name}"
    }
  )
}

#### ROUTE TABLES ASSOC ####

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

# Private Route Table Association "eks_private_rt_3c" To "eks_private_sn_3c"
resource "aws_route_table_association" "eks_rt_assoc_private_sn_3c" {
  subnet_id      = aws_subnet.eks_private_sn_3c.id
  route_table_id = aws_route_table.eks_private_rt_3c.id
}

# Private Route Table Association "eks_ctp_private_rt" To "eks_ctp_private_sn_1a"
resource "aws_route_table_association" "eks_rt_assoc_ctp_private_sn_1a" {
  subnet_id      = aws_subnet.eks_ctp_private_sn_1a.id
  route_table_id = aws_route_table.eks_ctp_private_rt.id
}

# Private Route Table Association "eks_ctp_private_rt" To "eks_ctp_private_sn_2b"
resource "aws_route_table_association" "eks_rt_assoc_ctp_private_sn_2b" {
  subnet_id      = aws_subnet.eks_ctp_private_sn_2b.id
  route_table_id = aws_route_table.eks_ctp_private_rt.id
}