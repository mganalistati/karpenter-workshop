# Nat Gateway
resource "aws_nat_gateway" "eks_public_ngw_1a" {
  allocation_id = aws_eip.eks_public_eip_1a.id
  subnet_id     = aws_subnet.eks_public_sn_1a.id

  tags = merge({ Name = "${var.project_name}-ngw-private1-${data.aws_region.current.name}a" }, local.common_tags)
}

resource "aws_nat_gateway" "eks_public_ngw_2b" {
  allocation_id = aws_eip.eks_public_eip_2b.id
  subnet_id     = aws_subnet.eks_public_sn_2b.id

  tags = merge({ Name = "${var.project_name}-ngw-private2-${data.aws_region.current.name}b" }, local.common_tags)
}

# Elastic IP
resource "aws_eip" "eks_public_eip_1a" {
  domain = "vpc"

  tags = merge({ Name = "${var.project_name}-public1-eip-${data.aws_region.current.name}a" }, local.common_tags)
}

resource "aws_eip" "eks_public_eip_2b" {
  domain = "vpc"

  tags = merge({ Name = "${var.project_name}-public2-eip-${data.aws_region.current.name}b" }, local.common_tags)
}