#### PRIVATE SUBNETES ####

# Private Subnetes "eks_pod_private_sn_1a" In "eks_vpc"
resource "aws_subnet" "eks_pod_private_sn_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 4, 4)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-pod-sbn-priv1-${data.aws_region.current.name}a"
    }
  )
}

# Private Subnetes "eks_pod_private_sn_2b" In "eks_vpc"
resource "aws_subnet" "eks_pod_private_sn_2b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 4, 5)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-pod-sbn-priv2-${data.aws_region.current.name}b"
    }
  )
}

# Private Subnetes "eks_pod_private_sn_3c" In "eks_vpc"
resource "aws_subnet" "eks_pod_private_sn_3c" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 4, 6)
  availability_zone = "${data.aws_region.current.name}c"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-pod-sbn-priv3-${data.aws_region.current.name}c"
    }
  )
}

# Private Subnetes "eks_ctp_private_sn_1a" In "eks_vpc"
resource "aws_subnet" "eks_ctp_private_sn_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 4, 7)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-ctp-sbn-priv1-${data.aws_region.current.name}a"
    }
  )
}

# Private Subnetes "eks_ctp_private_sn_2b" In "eks_vpc"
resource "aws_subnet" "eks_ctp_private_sn_2b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 4, 8)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-ctp-sbn-priv2-${data.aws_region.current.name}b"
    }
  )
}

# Private Subnetes "eks_dtb_private_sn_1a" In "eks_vpc"
resource "aws_subnet" "eks_dtb_private_sn_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 4, 9)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-dtb-sbn-priv1-${data.aws_region.current.name}a"
    }
  )
}

# Private Subnetes "eks_dtb_private_sn_2b" In "eks_vpc"
resource "aws_subnet" "eks_dtb_private_sn_2b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 4, 10)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-dtb-sbn-priv2-${data.aws_region.current.name}b"
    }
  )
}

# Private Subnetes "eks_dtb_private_sn_3c" In "eks_vpc"
resource "aws_subnet" "eks_dtb_private_sn_3c" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 4, 11)
  availability_zone = "${data.aws_region.current.name}c"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-dtb-sbn-priv3-${data.aws_region.current.name}c"
    }
  )
}

#### ROUTE TABLES ####

# Private Route Table "eks_pod_private_rtb_1a" In "eks_vpc"
resource "aws_route_table" "eks_pod_private_rtb_1a" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-pod-rtb-priv1-${data.aws_region.current.name}a"
    }
  )
}

# Private Route "eks_pod_private_rt_1a" In "eks_pod_private_rtb_1a" To "eks_public_ngw_1a"
resource "aws_route" "eks_pod_private_rt_1a" {
  route_table_id         = aws_route_table.eks_pod_private_rtb_1a.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.eks_public_ngw_1a.id
}

# Private Route Table "eks_pod_private_rtb_2b" In "eks_vpc"
resource "aws_route_table" "eks_pod_private_rtb_2b" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-pod-rtb-priv2-${data.aws_region.current.name}b"
    }
  )
}

# Private Route "eks_pod_private_rt_2b" In "eks_pod_private_rtb_2b" To "eks_public_ngw_2b"
resource "aws_route" "eks_pod_private_rt_2b" {
  route_table_id         = aws_route_table.eks_pod_private_rtb_2b.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.eks_public_ngw_2b.id
}

# Private Route Table "eks_pod_private_rtb_3c" In "eks_vpc"
resource "aws_route_table" "eks_pod_private_rtb_3c" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-pod-rtb-priv3-${data.aws_region.current.name}c"
    }
  )
}

# Private Route "eks_pod_private_rt_3c" In "eks_pod_private_rtb_3c" To "eks_public_ngw_3c"
resource "aws_route" "eks_pod_private_rt_3c" {
  route_table_id         = aws_route_table.eks_pod_private_rtb_3c.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.eks_public_ngw_3c.id
}

# Private Route Table "eks_ctp_private_rtb" In "eks_vpc"
resource "aws_route_table" "eks_ctp_private_rtb" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-ctp-rtb-priv"
    }
  )
}

# Private Route Table "eks_dtb_private_rtb" In "eks_vpc"
resource "aws_route_table" "eks_dtb_private_rtb" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-dtb-rtb-priv"
    }
  )
}

#### ROUTE TABLES ASSOC ####

# Private Route Table Association "eks_pod_private_rtb_1a" To "eks_pod_private_sn_1a"
resource "aws_route_table_association" "eks_rtb_assoc_pod_private_sn_1a" {
  subnet_id      = aws_subnet.eks_pod_private_sn_1a.id
  route_table_id = aws_route_table.eks_pod_private_rtb_1a.id
}

# Private Route Table Association "eks_pod_private_rtb_2b" To "eks_pod_private_sn_2b"
resource "aws_route_table_association" "eks_rtb_assoc_pod_private_sn_2b" {
  subnet_id      = aws_subnet.eks_pod_private_sn_2b.id
  route_table_id = aws_route_table.eks_pod_private_rtb_2b.id
}

# Private Route Table Association "eks_pod_private_rtb_3c" To "eks_pod_private_sn_3c"
resource "aws_route_table_association" "eks_rtb_assoc_pod_private_sn_3c" {
  subnet_id      = aws_subnet.eks_pod_private_sn_3c.id
  route_table_id = aws_route_table.eks_pod_private_rtb_3c.id
}

# Private Route Table Association "eks_ctp_private_rtb" To "eks_ctp_private_sn_1a"
resource "aws_route_table_association" "eks_rtb_assoc_ctp_private_sn_1a" {
  subnet_id      = aws_subnet.eks_ctp_private_sn_1a.id
  route_table_id = aws_route_table.eks_ctp_private_rtb.id
}

# Private Route Table Association "eks_ctp_private_rtb" To "eks_ctp_private_sn_2b"
resource "aws_route_table_association" "eks_rt_assoc_ctp_private_sn_2b" {
  subnet_id      = aws_subnet.eks_ctp_private_sn_2b.id
  route_table_id = aws_route_table.eks_ctp_private_rtb.id
}

# Private Route Table Association "eks_dtb_private_rtb" To "eks_dtb_private_sn_1a"
resource "aws_route_table_association" "eks_rtb_assoc_dtb_private_sn_1a" {
  subnet_id      = aws_subnet.eks_dtb_private_sn_1a.id
  route_table_id = aws_route_table.eks_dtb_private_rtb.id
}

# Private Route Table Association "eks_dtb_private_rtb" To "eks_dtb_private_sn_2b"
resource "aws_route_table_association" "eks_rtb_assoc_dtb_private_sn_2b" {
  subnet_id      = aws_subnet.eks_dtb_private_sn_2b.id
  route_table_id = aws_route_table.eks_dtb_private_rtb.id
}

# Private Route Table Association "eks_dtb_private_rtb" To "eks_dtb_private_sn_3c"
resource "aws_route_table_association" "eks_rtb_assoc_dtb_private_sn_3c" {
  subnet_id      = aws_subnet.eks_dtb_private_sn_3c.id
  route_table_id = aws_route_table.eks_dtb_private_rtb.id
}