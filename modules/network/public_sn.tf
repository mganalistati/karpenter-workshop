# Public Subnetes "eks_public_sn_1a" In "eks_vpc" 
resource "aws_subnet" "eks_public_sn_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 3, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-subnet-public1-${data.aws_region.current.name}a"
    }
  )
}

# Public Subnetes "eks_public_sn_2b" In "eks_vpc"
resource "aws_subnet" "eks_public_sn_2b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 3, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-subnet-public2-${data.aws_region.current.name}b"
    }
  )
}

# Public Subnetes "eks_public_sn_3c" In "eks_vpc"
resource "aws_subnet" "eks_public_sn_3c" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 3, 3)
  availability_zone       = "${data.aws_region.current.name}c"
  map_public_ip_on_launch = true

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-subnet-public3-${data.aws_region.current.name}c"
    }
  )
}

# Public Route Table "eks_public_rt" In "eks_vpc" 
resource "aws_route_table" "eks_public_rt" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-rtb-public"
    }
  )
}

# Public Route "eks_public_r" In "eks_public_rt" To "eks_igw"
resource "aws_route" "eks_public_r" {
  route_table_id         = aws_route_table.eks_public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.eks_igw.id
}

# Public Route Table Association "eks_public_rt" To "eks_public_sn_1a"
resource "aws_route_table_association" "eks_rt_assoc_public_sn_1a" {
  subnet_id      = aws_subnet.eks_public_sn_1a.id
  route_table_id = aws_route_table.eks_public_rt.id
}

# Public Route Table Association "eks_public_rt" To "eks_public_sn_2b"
resource "aws_route_table_association" "eks_rt_assoc_public_sn_2b" {
  subnet_id      = aws_subnet.eks_public_sn_2b.id
  route_table_id = aws_route_table.eks_public_rt.id
}

# Public Route Table Association "eks_public_rt" To "eks_public_sn_3c"
resource "aws_route_table_association" "eks_rt_assoc_public_sn_3c" {
  subnet_id      = aws_subnet.eks_public_sn_3c.id
  route_table_id = aws_route_table.eks_public_rt.id
}