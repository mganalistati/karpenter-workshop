# Nat Gateway
resource "aws_nat_gateway" "eks_public_ngw_1a" {
  allocation_id     = aws_eip.eks_public_eip_1a.id
  subnet_id         = aws_subnet.eks_public_sn_1a.id
  connectivity_type = "public"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-ngw-public1-${data.aws_region.current.name}a"
    }
  )
}

resource "aws_nat_gateway" "eks_public_ngw_2b" {
  allocation_id     = aws_eip.eks_public_eip_2b.id
  subnet_id         = aws_subnet.eks_public_sn_2b.id
  connectivity_type = "public"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-ngw-public2-${data.aws_region.current.name}b"
    }
  )
}

resource "aws_nat_gateway" "eks_public_ngw_3c" {
  allocation_id     = aws_eip.eks_public_eip_3c.id
  subnet_id         = aws_subnet.eks_public_sn_3c.id
  connectivity_type = "public"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-ngw-public3-${data.aws_region.current.name}c"
    }
  )
}

# Elastic IP
resource "aws_eip" "eks_public_eip_1a" {
  domain = "vpc"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-public1-eip-${data.aws_region.current.name}a"
    }
  )
}

resource "aws_eip" "eks_public_eip_2b" {
  domain = "vpc"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-public2-eip-${data.aws_region.current.name}b"
    }
  )
}

resource "aws_eip" "eks_public_eip_3c" {
  domain = "vpc"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-public3-eip-${data.aws_region.current.name}c"
    }
  )
}