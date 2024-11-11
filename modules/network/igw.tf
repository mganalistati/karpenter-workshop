# Internet Gateway
resource "aws_internet_gateway" "eks_igw" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge({ Name = "${var.project_name}-igw" }, var.common_tags)
}