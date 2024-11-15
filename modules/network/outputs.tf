output "public_sn_1a" {
  value = aws_subnet.eks_public_sn_1a.id
}

output "public_sn_2b" {
  value = aws_subnet.eks_public_sn_2b.id
}

output "public_sn_3c" {
  value = aws_subnet.eks_public_sn_3c.id
}

output "private_sn_1a" {
  value = aws_subnet.eks_private_sn_1a.id
}

output "private_sn_2b" {
  value = aws_subnet.eks_private_sn_2b.id
}

output "private_sn_3c" {
  value = aws_subnet.eks_private_sn_3c.id
}

output "ctp_private_sn_1a" {
  value = aws_subnet.eks_ctp_private_sn_1a.id
}

output "ctp_private_sn_2b" {
  value = aws_subnet.eks_ctp_private_sn_2b.id
}