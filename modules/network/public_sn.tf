#### PUBLIC SUBNETES ####

# Public Subnetes "eks_public_sn_1a" In "eks_vpc" 
resource "aws_subnet" "eks_public_sn_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 4, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-sbn-pub1-${data.aws_region.current.name}a"
    }
  )
}

# Public Subnetes "eks_public_sn_2b" In "eks_vpc"
resource "aws_subnet" "eks_public_sn_2b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 4, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-sbn-pub2-${data.aws_region.current.name}b"
    }
  )
}

# Public Subnetes "eks_public_sn_3c" In "eks_vpc"
resource "aws_subnet" "eks_public_sn_3c" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 4, 3)
  availability_zone       = "${data.aws_region.current.name}c"
  map_public_ip_on_launch = true

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-sbn-pub3-${data.aws_region.current.name}c"
    }
  )
}

#### ROUTE TABLES ####

# Public Route Table "eks_public_rtb" In "eks_vpc" 
resource "aws_route_table" "eks_public_rtb" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-rtb-pub"
    }
  )
}

# Public Route "eks_public_rt" In "eks_public_rtb" To "eks_igw"
resource "aws_route" "eks_public_rt" {
  route_table_id         = aws_route_table.eks_public_rtb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.eks_igw.id
}

#### ROUTE TABLES ASSOC ####

# Public Route Table Association "eks_public_rtb" To "eks_public_sn_1a"
resource "aws_route_table_association" "eks_rtb_assoc_public_sn_1a" {
  subnet_id      = aws_subnet.eks_public_sn_1a.id
  route_table_id = aws_route_table.eks_public_rtb.id
}

# Public Route Table Association "eks_public_rtb" To "eks_public_sn_2b"
resource "aws_route_table_association" "eks_rtb_assoc_public_sn_2b" {
  subnet_id      = aws_subnet.eks_public_sn_2b.id
  route_table_id = aws_route_table.eks_public_rtb.id
}

# Public Route Table Association "eks_public_rtb" To "eks_public_sn_3c"
resource "aws_route_table_association" "eks_rtb_assoc_public_sn_3c" {
  subnet_id      = aws_subnet.eks_public_sn_3c.id
  route_table_id = aws_route_table.eks_public_rtb.id
}