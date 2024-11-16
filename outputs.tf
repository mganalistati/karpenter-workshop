#### PUBLIC SUBNET ####
# output "public_sn_1a" {
#   value = module.eks_network.public_sn_1a
# }

# output "public_sn_2b" {
#   value = module.eks_network.public_sn_2b
# }

# output "public_sn_3c" {
#   value = module.eks_network.public_sn_3c
# }

#### POD PRIVATE SUBNET ####
# output "pod_private_sn_1a" {
#   value = module.eks_network.pod_private_sn_1a
# }

# output "pod_private_sn_2b" {
#   value = module.eks_network.pod_private_sn_2b
# }

# output "pod_private_sn_3c" {
#   value = module.eks_network.pod_private_sn_3c
# }

#### CTP PRIVATE SUBNET ####
# output "ctp_private_sn_1a" {
#   value = module.eks_network.ctp_private_sn_1a
# }

# output "ctp_private_sn_2b" {
#   value = module.eks_network.ctp_private_sn_2b
# }

# #### DTB PRIVATE SUBNET ####
# output "dtb_private_sn_1a" {
#   value = module.eks_network.dtb_private_sn_1a
# }

# output "dtb_private_sn_2b" {
#   value = module.eks_network.dtb_private_sn_2b
# }

# output "dtb_private_sn_3c" {
#   value = module.eks_network.dtb_private_sn_3c
# }

# #### EKS CLUSTER ####
output "eks_version" {
  description = "The Kubernetes server version for the cluster."
  value       = module.eks_cluster.eks_version
}

output "endpoint" {
  description = "The endpoint for your Kubernetes API server."
  value       = module.eks_cluster.endpoint
}