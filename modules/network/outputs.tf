#### PUBLIC SUBNET ####
output "public_sn_1a" {
  value = aws_subnet.eks_public_sn_1a.id
}

output "public_sn_2b" {
  value = aws_subnet.eks_public_sn_2b.id
}

output "public_sn_3c" {
  value = aws_subnet.eks_public_sn_3c.id
}

#### POD PRIVATE SUBNET ####
output "pod_private_sn_1a" {
  value = aws_subnet.eks_pod_private_sn_1a.id
}

output "pod_private_sn_2b" {
  value = aws_subnet.eks_pod_private_sn_2b.id
}

output "pod_private_sn_3c" {
  value = aws_subnet.eks_pod_private_sn_3c.id
}

#### CTP PRIVATE SUBNET ####
output "ctp_private_sn_1a" {
  value = aws_subnet.eks_ctp_private_sn_1a.id
}

output "ctp_private_sn_2b" {
  value = aws_subnet.eks_ctp_private_sn_2b.id
}

output "ctp_private_sn_3c" {
  value = aws_subnet.eks_ctp_private_sn_3c.id
}

#### DTB PRIVATE SUBNET ####
output "dtb_private_sn_1a" {
  value = aws_subnet.eks_dtb_private_sn_1a.id
}

output "dtb_private_sn_2b" {
  value = aws_subnet.eks_dtb_private_sn_2b.id
}

output "dtb_private_sn_3c" {
  value = aws_subnet.eks_dtb_private_sn_3c.id
}